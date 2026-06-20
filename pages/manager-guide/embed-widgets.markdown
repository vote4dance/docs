---
layout: page
title: Embed widgets
permalink: /manager-guide/embed-widgets/
parent: Manager Guide
nav_order: 7
---

# Embed widgets

Embed widgets let you display your club's upcoming registrations and competition results on any external website — your club site, a Facebook tab, or any page that accepts an `<iframe>`.

Widgets are read-only and credential-less. They never require a login and can be embedded cross-origin on any domain.

---

## Enable embeds for your club

1. Open **Manager → Organization → Settings**.
2. Scroll to the **Embed widget** section.
3. Click **Generate key** to create your publishable embed key.
4. Copy the key — you will use it in the embed code below.

You can rotate or disable the key at any time. Rotating immediately invalidates the old key; any pages using it will show an error until updated.

---

## Add a widget to your site

Paste the loader snippet where you want the widget to appear:

```html
<script src="https://vote4dance.com/embed/loader.js"></script>
<div
  data-v4d-widget="results"
  data-v4d-key="pk_embed_YOUR_KEY_HERE"
></div>
```

Change `data-v4d-widget` to `registrations` for the upcoming registrations widget.

The loader creates a responsive `<iframe>` and resizes it automatically to fit the content.

---

## Available widgets

| Widget | `data-v4d-widget` value | What it shows |
|---|---|---|
| Upcoming registrations | `registrations` | Teams from your club registered in upcoming public competitions, grouped by event, sorted by date ascending. Max 10 events. |
| Results | `results` | Published placements for your club's teams, grouped by event, sorted by date descending. Max 10 events. |

Both widgets only show competitions where the organizer has enabled public team visibility (`competition_hide_teams = 0`). Results additionally require the organizer to have published results.

---

## Customization

Add attributes to the `<div>` to control the look:

| Attribute | Values | Default | Effect |
|---|---|---|---|
| `data-v4d-locale` | `en`, `sv`, `es` | Browser language | UI language (titles, empty states). Competition and team names are not translated. |
| `data-v4d-mode` | `light`, `dark`, `auto` | `light` | Color scheme. `auto` follows the visitor's OS setting. |
| `data-v4d-color` | Any hex color, e.g. `#1a73e8` | Vote4Dance pink | Primary accent color for placement badges and links. |
| `data-v4d-radius` | `0`–`16` | AntD default | Border radius in pixels. Use `0` for sharp corners to match a corporate site. |
| `data-v4d-font` | Font family name, e.g. `Inter` | Inherited | Widget font. The font must already be loaded on the host page. |

Example with customization:

```html
<div
  data-v4d-widget="results"
  data-v4d-key="pk_embed_YOUR_KEY_HERE"
  data-v4d-locale="sv"
  data-v4d-color="#1a73e8"
  data-v4d-radius="4"
></div>
```

---

## What the widgets show

### Results widget

Each competition group shows:
- **Competition image** (if set on the event)
- **Parent event name** (e.g. "SM Bugg & Rock´n´roll") and child competition name (e.g. "Fredag 15/5")
- **Date** and **venue** with a Google Maps link
- For each placed team: placement badge, team name, and class — the class name links directly to the public results page for that class

If a dancer on a team is from a different club, their club tag is shown in parentheses after their name, e.g. `Anna Bäärnhielm (ÖBRK)`.

### Registrations widget

Same grouping as results. Each row shows the class name (links to the public teams page) and the team name.

---

## Security notes

- The embed key is **publishable** — it is safe to include in public HTML. It can only read public data for your club; it cannot write anything or access private data.
- Widgets never collect payment information. If sign-up-for-classes lands on the widget, it will open a hosted checkout page — card data is never entered inside the widget itself.
- Rotate the key if you believe it has been misused. The old key stops working immediately.
