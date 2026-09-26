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
