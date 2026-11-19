#!/usr/bin/env ruby
# Checks the pages and their navigation against a built site.
#
#   bundle exec jekyll build
#   ruby scripts/check-links.rb            # reads _site/
#   ruby scripts/check-links.rb path/to/site
#
# Fails when
#   - an internal link or image points at a page, file or #section that is not in the built site,
#   - an internal link points at an address that only redirects (link to the new page instead),
#   - a page's sidebar title differs from its first heading,
#   - two pages under the same parent share a nav_order,
#   - a page's parent is not the title of exactly one page.

require "yaml"
require "cgi"

ROOT = File.expand_path("..", __dir__)
SITE = File.expand_path(ARGV[0] || "_site", ROOT)
abort "#{SITE} not found; build the site first" unless File.directory?(SITE)

Page = Struct.new(:file, :front, :body, :body_line, keyword_init: true)

pages = Dir.glob(File.join(ROOT, "{*.markdown,*.md,pages/**/*.markdown,pages/**/*.md}")).sort.filter_map do |file|
  text = File.read(file, encoding: "UTF-8")
  next unless text =~ /\A---\s*\n(.*?)\n---\s*\n/m
  match = Regexp.last_match
  front = YAML.safe_load(match[1]) || {}
  next unless front["title"]
  Page.new(
    file: file.sub("#{ROOT}/", ""),
    front: front,
    body: match.post_match,
    body_line: match[0].count("\n") + 1
  )
end

errors = []

# --- what the built site has ------------------------------------------------------------

html_cache = {}
built = lambda do |path|
  html_cache.fetch(path) do
    file = File.join(SITE, path)
    file = File.join(file, "index.html") if File.directory?(file)
    html_cache[path] = File.file?(file) ? file : nil
  end
end

ids_cache = {}
ids_of = lambda do |file|
  ids_cache[file] ||= File.read(file, encoding: "UTF-8").scan(/\sid="([^"]+)"/).flatten.map { |id| CGI.unescapeHTML(id) }
end

redirect_cache = {}
redirects = lambda do |file|
  redirect_cache.fetch(file) do
    redirect_cache[file] = File.read(file, encoding: "UTF-8", mode: "r")[0, 600].include?('http-equiv="refresh"')
  end
end

# --- links ------------------------------------------------------------------------------

LINK = /(!?)\[[^\]]*\]\(\s*([^)\s]+)[^)]*\)/

pages.each do |page|
  own = page.front["permalink"] || "/"
  in_code = false
  page.body.each_line.with_index do |line, index|
    in_code = !in_code if line.start_with?("```")
    next if in_code
    line.gsub(/`[^`]*`/, "").scan(LINK) do |image, target|
      next if target =~ /\A(?:[a-z][a-z0-9+.-]*:|\/\/)/i # http:, mailto:, protocol-relative
      where = "#{page.file}:#{page.body_line + index}"
      path, anchor = target.split("#", 2)
      path = own if path.nil? || path.empty?
      unless path.start_with?("/")
        errors << "#{where}: #{target} is not root-relative"
        next
      end
      file = built.call(CGI.unescape(path))
      if file.nil?
        errors << "#{where}: #{target} is not in the built site"
        next
      end
      next unless file.end_with?(".html")
      next if image == "!"
      if redirects.call(file)
        errors << "#{where}: #{target} only redirects; link to the page it redirects to"
        next
      end
      next if anchor.nil? || anchor.empty?
      errors << "#{where}: #{target} has no such section" unless ids_of.call(file).include?(CGI.unescape(anchor))
    end
  end
end

# --- titles -----------------------------------------------------------------------------

pages.each do |page|
  next if page.front["layout"] == "home"
  heading = page.body.gsub(/^```.*?^```/m, "")[/^# +(.+?)\s*$/, 1]
  next if heading.nil?
  title = page.front["title"].to_s
  errors << "#{page.file}: sidebar title #{title.inspect} differs from the heading #{heading.inspect}" unless heading == title
end

# --- navigation -------------------------------------------------------------------------

by_title = pages.group_by { |page| page.front["title"].to_s }

pages.each do |page|
  parent = page.front["parent"]
  next if parent.nil?
  matches = by_title[parent.to_s] || []
  if matches.empty?
    errors << "#{page.file}: parent #{parent.inspect} is not the title of any page"
  elsif matches.size > 1
    errors << "#{page.file}: parent #{parent.inspect} is the title of #{matches.size} pages (#{matches.map(&:file).join(", ")})"
  end
end

pages.reject { |page| page.front["nav_exclude"] }.group_by { |page| page.front["parent"] }.each do |parent, siblings|
  siblings.group_by { |page| page.front["nav_order"] }.each do |order, same|
    next if order.nil? || same.size < 2
    errors << "nav_order #{order} is used by #{same.size} pages under #{parent || "the top level"}: #{same.map(&:file).join(", ")}"
  end
end

if errors.empty?
  puts "#{pages.size} pages: links, titles and navigation are consistent"
else
  warn errors.join("\n")
  warn "\n#{errors.size} problem#{"s" unless errors.size == 1}"
  exit 1
end
