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

[just-the-docs]: https://just-the-docs.com
