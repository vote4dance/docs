---
layout: page
title: Embed widgets
description: Show your club's upcoming competition registrations and its results on your own website with an embed widget.
permalink: /school-club/embed-widgets/
parent: School/Club
nav_order: 11
---

# Embed widgets

Embed widgets show your club's upcoming competition registrations and its results on your own website: your club site, or anywhere else that accepts an `<iframe>`.

Your visitors only read the widget. They do not need to sign in.

---

## Before you start

- You are an **Administrator** of the club. See [Roles](/school-club/club-admin/#roles).
- The club's **State** is **Active**. A club in **Draft** or **Retired** shows nothing in a widget. You set it with **Edit organization** on the club's **Home** page.

---

## Step 1: Generate your embed key

1. Open your club in Vote4Dance and stay on its **Home** page.
2. Find the **Website embeds** card. It is only shown to the club's administrators.
3. Click **Enable website embeds**.
4. The card now shows your key. It starts with `pk_embed_`. **Copy key** copies the key alone.

You can make a new key with **Rotate key**, or turn the widgets off with **Disable**, at any time. With a new key, the widgets that use the old key stop working until you put the new one in. With **Disable**, all your widgets stop working.

---

## Step 2: Add the widget to your site

1. On the **Website embeds** card, choose what the widget shows: **Registrations** or **Results**.
2. Click **Copy embed code**.
3. Paste the code into your website where you want the widget.

The code is one `<iframe>` with your key in its address:

```html
<iframe src="https://vote4dance.com/embed/?widget=results&key=pk_embed_YOUR_KEY_HERE" style="width:100%;border:0;height:600px" title="Vote4Dance"></iframe>
```

The widget is 600 pixels high. Change `height:600px` in the code if your page needs more or less.

The `widget` part of the address decides what is shown:

| Value | Shows |
|---|---|
| `results` | Your club's competition results, grouped by event, newest first |
| `registrations` | Your club's upcoming competition entries, grouped by event, soonest first |

---

## Step 3: Match the widget to your site's style

Add options to the address in the code, each one after an `&`:

| Option | Example | What it does |
|---|---|---|
| `locale` | `locale=sv` | Widget language: `en`, `sv` or `es`. Without it, the visitor's browser language is used, and English for any other language. |
| `mode` | `mode=dark` | `light`, `dark` or `auto` (follows the visitor's device). Without it, the widget is light. |
| `color` | `color=%23003366` | Accent color for badges and links, as a hex color. Write the `#` as `%23`. Without it, the widget is Vote4Dance pink. |
| `radius` | `radius=4` | Corner radius in pixels, a whole number. |
| `font` | `font=Inter` | Font family. |

Example:

```html
<iframe src="https://vote4dance.com/embed/?widget=results&key=pk_embed_YOUR_KEY_HERE&locale=sv&color=%23003366&radius=4" style="width:100%;border:0;height:600px" title="Vote4Dance"></iframe>
```

---

## What visitors see

### Results widget

Grouped by event, each group shows the event image, name, date, and venue (with a link to Google Maps). For each placed team: placement, names, and the class. Clicking the class opens the full public results for that class on Vote4Dance.

If a team includes a dancer from a different club, their club tag is shown in parentheses, for example `Anna Andersson (ABC)`.

### Registrations widget

The same grouping. Each row shows the class and the team's name. The class name links to the public entry list for that class on Vote4Dance.

---

## What controls which competitions appear

The widget only shows competitions that are published and whose organizer shows the participants publicly. The registrations widget shows competitions from today on. If a competition is missing from the widget, its organizer has hidden the participants or has not published the competition yet: [ask the organizer](/getting-help/#reaching-the-organizer), not Vote4Dance.

---

## Security

The embed key is **safe to publish in public HTML**. It can only read your club's public data and cannot change anything. Make a new one with **Rotate key** if you believe it has been misused.
