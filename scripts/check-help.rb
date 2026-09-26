#!/usr/bin/env ruby
# Checks the in-app help map against a built site.
#
#   bundle exec jekyll build
#   ruby scripts/check-help.rb            # reads _site/
#   ruby scripts/check-help.rb path/to/site
#
# Fails when a help key is malformed or declared on two pages, when
# help.json is not valid JSON, or when a key points at a page or a
# section anchor that does not exist in the built HTML.

require "json"
require "yaml"
require "cgi"

ROOT = File.expand_path("..", __dir__)
SITE = File.expand_path(ARGV[0] || "_site", ROOT)
KEY_FORMAT = /\A[a-z][a-z0-9-]*(\.[a-z0-9-]+)+\z/

errors = []
declared = {}

Dir.glob(File.join(ROOT, "{*.markdown,*.md,pages/**/*.markdown,pages/**/*.md}")).sort.each do |file|
  text = File.read(file)
  next unless text =~ /\A---\s*\n(.*?)\n---\s*\n/m
  front = YAML.safe_load(Regexp.last_match(1)) || {}
  help = front["help"]
  next if help.nil?
  rel = file.sub("#{ROOT}/", "")
  unless help.is_a?(Hash)
    errors << "#{rel}: help must be a map of key: anchor"
    next
  end
  help.each_key do |key|
    errors << "#{rel}: malformed help key #{key.inspect}" unless key.to_s.match?(KEY_FORMAT)
    if declared[key]
      errors << "#{rel}: help key #{key} is also declared in #{declared[key]}"
    else
      declared[key] = rel
    end
  end
end

map_file = File.join(SITE, "help.json")
abort "#{map_file} not found; build the site first" unless File.exist?(map_file)

begin
  map = JSON.parse(File.read(map_file))
rescue JSON::ParserError => e
  abort "help.json is not valid JSON: #{e.message}"
end

keys = map.fetch("keys")
missing = declared.keys - keys.keys
errors << "help.json is missing keys: #{missing.join(", ")}" unless missing.empty?

keys.each do |key, entry|
  path, anchor = entry.fetch("url").split("#", 2)
  html_file = File.join(SITE, path, path.end_with?("/") ? "index.html" : "")
  html_file = File.join(SITE, "#{path}.html") unless File.file?(html_file)
  unless File.file?(html_file)
    errors << "#{key}: page #{path} is not in the built site"
    next
  end
  next if anchor.nil? || anchor.empty?
  ids = File.read(html_file).scan(/\sid="([^"]+)"/).flatten.map { |id| CGI.unescapeHTML(id) }
  errors << "#{key}: #{path} has no section ##{anchor}" unless ids.include?(anchor)
end

if errors.empty?
  puts "help.json: #{keys.size} keys, all resolve"
else
  puts errors
  exit 1
end
