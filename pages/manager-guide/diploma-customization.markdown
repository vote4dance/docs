---
layout: page
title: Customizing diplomas
permalink: /manager-guide/diploma-customization/
parent: Manager Guide
nav_order: 6
---

# Customizing diplomas

The diploma print page lets you produce a personalized diploma for every
competitor — start number, name, organization, placement and category — and
style it to match your event. You reach it from the Manager print routes
(**Print → Diplomas** for a class and round).

This page explains the print options and, for advanced users, how to fine-tune
the layout with custom CSS.

## Print options

At the top of the diploma page is a settings panel (it is never printed).

- **Styled / Clean** — *Styled* prints the decorative background and the large
  "Diploma" title; *Clean* prints only the text on a white page, ideal when you
  feed pre-printed diploma paper into the printer.
- **Show name of competition** — show or hide the competition name and date in
  the header.
- **Show start numbers** — include the start number before each competitor name.
- **Print** — opens your browser's print dialog.

Your selections are remembered in your browser, so they are still there the next
time you open the page.

> The **Vote4Dance** mark is fixed in the top-left corner of every page and
> cannot be moved or hidden. Everything else is yours to style.

## Custom CSS

The **CSS** box on the diploma page applies your own styling to the printed
diplomas. Changes preview **live** on screen and are carried into the print
output. The CSS only affects the diplomas — never the settings panel — and you
do not need to add any wrapper or `@media print` rule; just write the selectors.

Use real print units — `cm`, `mm`, `pt` (and `px` if you prefer).

### CSS classes

Each part of a diploma has a class you can target:

| Class               | What it targets                                  |
| ------------------- | ------------------------------------------------ |
| `.diploma-body`     | The whole diploma card                           |
| `.diploma-header`   | Competition name + date (the brand stays fixed)  |
| `.diploma-title`    | The large "Diploma" title (styled mode)          |
| `.diploma-name`     | Start number + competitor name                   |
| `.diploma-org`      | Organization + country                           |
| `.diploma-showname` | Show / performance name                          |
| `.diploma-place`    | Placement + category                             |

### Examples

**Move the competitor name up 1 cm** (without moving the header):

```css
.diploma-name {
  transform: translateY(-1cm);
}
```

**Make all diploma text larger or smaller:**

```css
.diploma-body {
  font-size: 1.2em;
}
```

**Change the placement color and weight:**

```css
.diploma-place {
  color: #821c99;
  font-weight: 700;
}
```

**Use a different font** (loaded from Google Fonts):

```css
@import url('https://fonts.googleapis.com/css2?family=Shadows+Into+Light&display=swap');

.diploma-body {
  font-family: 'Shadows Into Light';
}
```

**Uppercase the competitor name:**

```css
.diploma-name {
  text-transform: uppercase;
}
```

**Hide a field** (for example the organization line):

```css
.diploma-org {
  display: none;
}
```

**Add space below the name:**

```css
.diploma-name {
  margin-bottom: 1rem;
}
```

## Printing tips

- Use your browser's **print preview** (Ctrl/Cmd + P) to check the result
  before printing.
- Diplomas print in **portrait**; one competitor per page.
- For the styled background to print, enable **"Background graphics"** in the
  browser print dialog.
- Inkjet printers usually handle heavier diploma paper better than laser
  printers.

---

See also: [Post-event and exports](/manager-guide/post-event/) for the full list
of print outputs.
