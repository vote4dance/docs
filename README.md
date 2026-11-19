# docs

The Vote4Dance documentation site: Jekyll + [just-the-docs], published from `main`
by GitHub Pages to **https://docs.vote4dance.com**.

Read more about Pages here: https://docs.github.com/pages

## Run locally

```
bundle install
bundle exec jekyll serve
```

The site is then on http://127.0.0.1:4000.

### If `bundle install` fails on eventmachine

On a current macOS, `eventmachine` (pulled in by Jekyll for livereload) fails to
link:

```
Undefined symbols for architecture arm64:
  "_SSL_get1_peer_certificate", referenced from: SslBox_t::GetPeerCert()
```

Its extconf picks up OpenSSL 3 headers while linking against the OpenSSL 1.1 that
Ruby uses. 1.2.7 is the newest eventmachine there is, so there is nothing to
upgrade to — point the build at one OpenSSL and it compiles:

```
bundle config set --local build.eventmachine "--with-openssl-dir=$(brew --prefix openssl@1.1)"
bundle install
```

That writes `.bundle/config`, which is local to your checkout and not committed.

## Writing

- Links between pages are root-relative: `/manager-guide/shop/`, never
  `{{ site.baseurl }}/...` — `baseurl` is `/` and would double the slash.
- Screenshots live in `assets/images/<area>/` and are referenced as
  `/assets/images/<area>/<name>.png`.
- **SCSS under `_sass/` must be plain ASCII.** The Pages build pins
  `jekyll-sass-converter 1.5.2`, whose libsass reads SCSS as US-ASCII and fails the
  whole build on a typographic dash or a curly quote in a comment.
- The look is set in `_sass/color_schemes/v4d.scss` (palette) and
  `_sass/custom/custom.scss` (everything else). No theme file is forked.
- Spell it **license**, also as a noun. Quote a label or a message from the app exactly as
  the app shows it, in bold or in quotation marks, whatever its spelling.
- The guide describes the **classic Manager**. Where the new Manager (Scrutineer Beta) differs,
  say so in a sentence that names it, so it can be found and removed later.
- No "Next step: continue to…" at the end of a page. Link to a related page where the reader
  needs it.

## Where a page goes

The sidebar is set by front matter, not by folders. A page's place is its `parent` (the title
of the page above it) and its `nav_order` among its siblings. Its address is its `permalink`.
The three are independent, so a page can move in the sidebar without changing address, and
the folder it sits in does not matter.

The sections, in sidebar order:

| Section | For | Grouped by |
|---|---|---|
| Start here | Everyone | Signing in, the apps, the glossary, getting help |
| Organizer | Whoever runs a competition | The phases of an event: plan, set up, classes and judges, registration and sales, rehearsal and event day, after, federations and seasons |
| Dancer | Dancers and parents | The dancer's path: account, registering, club and license, results |
| School/Club | Club administrators | The club's path: create, members, federation, licenses, registering, results |
| Spectator | The audience | Tickets, schedule, voting, quizzes |
| Federation | Federation staff | Set up, clubs and people, structure and rules, licenses, points and rankings |
| Scrutineer | Officials at an event | One page, plus getting event access |
| Release notes | Everyone | The current month, with a page per earlier month |

Rules the checks enforce:

- **The sidebar `title` is the page's first heading**, word for word.
- **A `parent` is the title of exactly one page.** Give a new group page a title no other page has.
- **Siblings have different `nav_order`s.**
- **Do not change a `permalink`** of a page the app links to: any page with `help:` keys, and
  the addresses listed in `CLAUDE.md`.

**Removing or merging a page.** Move what is worth keeping into the page that owns the topic,
delete the file, and list its old address on the destination page, so the address keeps
working:

```yaml
redirect_from:
  - /dancer/renew-license/
```

Then change the links that pointed at the old address. A link to an address that only
redirects fails the check.

**Release notes.** New notes go at the top of `pages/release-notes.markdown`. When a month is
over, cut its sections from the bottom of that file into `pages/release-notes/YYYY-MM.markdown`
(copy the front matter of the newest file there and change the month), and add it to the list
under **Earlier**. Cutting from the bottom keeps branches that add notes at the top free of
conflicts.

Check all of this after building:

```
bundle exec jekyll build
ruby scripts/check-links.rb
```

It fails on a link, image or `#section` that is not in the built site, a link to a redirected
address, a title that differs from the heading, a `nav_order` used twice, and a `parent` that
matches no page or several. `.github/workflows/check.yml` runs it, and the help map check
below, on every pull request.

## In-app help map

The app's help links go through **https://docs.vote4dance.com/help.json**, which maps a
help key for each app screen to the docs page and section that answers it. The page
that answers a screen declares it in its own front matter:

```yaml
help:
  organizer.shop: ""               # top of the page
  organizer.shop.orders: orders    # the "## Orders" section, #orders
```

`help.json` (a Liquid template in the repo root) collects these on every build.

- **Keys** are `<app>.<screen>[.<tab>]`. `<app>` is the app's mount path: `manager`,
  `organizer`, `federation`, `public`, `checkin` and so on. Manager screens use
  `manager.event.<screen>` and `manager.comp.<screen>`. A tab key ends in the value of the
  tab's URL parameter or hash, e.g. `federation.state.history` for `?tab=history`.
- **Keys for a part of a screen** add a segment below the screen's key: one failed check on
  Problems is `manager.event.validator.<check>` (the check's name after `validator.tests.`, so
  `manager.event.validator.dsf` answers every `dsf.*` check), and the round page's **Stuck?**
  links are `manager.comp.live.<topic>`.
- **Fallback** (the contract the app implements): try the full key, then drop the last segment, then open the
  docs home. Only give a tab its own key when a section is written for that tab.
- **Values** are heading anchors. Renaming a heading changes its anchor, so when you rename
  one that a key points at, update the key in the same commit.
- Each key is declared on exactly one page.

Check the map after building:

```
bundle exec jekyll build
ruby scripts/check-help.rb
```

It fails on a malformed or duplicate key, and on a key whose page or section is not in
the built site.

[just-the-docs]: https://just-the-docs.com
