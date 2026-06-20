---
layout: page
title: Embed widgets
permalink: /school-club/embed-widgets/
parent: School/Club
nav_order: 11
---

# Embed widgets

Embed widgets let your club display its upcoming competition registrations and results directly on your own website — your club site, a Facebook page, or anywhere else that accepts an `<iframe>`.

Widgets are read-only and require no login from your visitors.

---

## Before you start

- You need organization admin access on your club's Vote4Dance profile.
- Your club must have a published organization profile (name, logo, tag set).

---

## Step 1: Generate your embed key

1. Open **Vote4Dance → your club → Settings**.
2. Find the **Embed widget** section.
3. Click **Generate key**.
4. Copy the key — it starts with `pk_embed_`.

You can rotate or disable the key at any time. Rotating immediately stops the old key from working.

---

## Step 2: Add the widget to your site

Paste this snippet where you want the widget to appear on your club's website:

```html
<script src="https://vote4dance.com/embed/loader.js"></script>
<div
  data-v4d-widget="results"
  data-v4d-key="pk_embed_YOUR_KEY_HERE"
></div>
```

The widget resizes automatically to fit its content.

Change `data-v4d-widget` to choose what to show:

| Value | Shows |
|---|---|
| `results` | Your club's recent competition results, grouped by event, newest first |
| `registrations` | Your club's upcoming competition entries, grouped by event, soonest first |

---

## Step 3: Match the widget to your site's style

Add extra attributes to the `<div>` to control the look:

| Attribute | Example | What it does |
|---|---|---|
| `data-v4d-locale` | `sv` | Widget language: `en`, `sv`, or `es`. Defaults to the visitor's browser language. |
| `data-v4d-mode` | `dark` | `light`, `dark`, or `auto` (follows visitor's OS setting). |
| `data-v4d-color` | `#1a73e8` | Accent color for badges and links. Defaults to Vote4Dance pink. |
| `data-v4d-radius` | `4` | Corner radius in pixels (`0`–`16`). |
| `data-v4d-font` | `Inter` | Font family. The font must already be loaded on your page. |

Example:

```html
<div
  data-v4d-widget="results"
  data-v4d-key="pk_embed_YOUR_KEY_HERE"
  data-v4d-locale="sv"
  data-v4d-color="#003366"
  data-v4d-radius="4"
></div>
```

---

## What visitors see

### Results widget

Grouped by event, each group shows the event image, name, date, and venue (with a link to Google Maps). For each placed team: placement, names, and the class — clicking the class opens the full public results for that class on Vote4Dance.

If a team includes a dancer from a different club, their club tag is shown in parentheses, e.g. `Anna Andersson (ABC)`.

### Registrations widget

Same grouping. Each row shows the class and team name. The class name links to the public entry list for that class on Vote4Dance.

---

## What controls which competitions appear

The widget only shows competitions that organizers have marked as public with visible teams. If a competition does not appear in the widget, the organizer of that event has restricted public team visibility — contact the organizer, not Vote4Dance support.

---

## Security

The embed key is **safe to publish in public HTML** — it can only read your club's public data and cannot modify anything. Rotate it if you believe it has been misused.

---

## Next step

If your members compete through a federation, continue to [Joining a federation](/school-club/joining-a-federation/) or review [Federation Licenses](/federation-licenses/).
