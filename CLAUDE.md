# Notes for Claude

See README.md for how the site is built and written.

## Reviewing changes

The app (`vote4dance/judging-monorepo`) depends on this site. It links to docs pages and their
sections, both through the in-app help map (`help.json`, built from the `help:` front matter)
and through URLs written into the app itself.

When you review a change here, check whether it touches anything the app links to:

- a page's `permalink`
- a heading that a `help:` key or an app link points at (renaming a heading changes its anchor)
- a `help:` key that was added, removed or moved to another page
- the `title` of a page that declares `help:` keys, since `help.json` carries the title too

The app also links straight to these sections, outside the help map (see
`apps/judging-frontend/apps/public/pages/competition/registration/components/RegistrationGuide.tsx`
in the monorepo):

- `/dancer/registration-for-event/`, `#registering-with-a-partner` and `#if-you-cannot-register`
- `/dancer/vote4dance-id/`, `/manager-guide/shop/` and `/manager-guide/diploma-customization/`

Search the monorepo for `docs.vote4dance.com` to find the current list.

If it does, say so in the review, and check whether the monorepo also needs to be updated or to
re-import the help map, so the app does not link to a page or section that no longer exists.
