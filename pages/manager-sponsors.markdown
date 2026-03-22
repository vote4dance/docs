---
layout: page
title: Sponsors
permalink: /manager-guide/sponsors/
parent: Manager Guide
nav_order: 1.5
---

# Sponsors

Use `Sponsors` at the event level to create sponsor products, sell them through Vote4Dance, and control where purchased sponsors are shown.

## How sponsors work

- An organizer creates sponsor offers in Manager.
- Each offer defines a slot type, title, description, price, currency, visibility, capacity, and optional image.
- Sponsors buy through the public sponsor page for the event or through a direct public checkout link for a specific sponsor item.
- Purchased sponsors are then shown automatically in the placements connected to that slot.
- These placements are purchase-driven only. Manual or external sponsors are not supported for the built-in sponsor surfaces.

## Before you start

- Stripe Connect must be connected before you can create paid sponsor offers.
- All sponsor prices exclude VAT.
- Each purchase includes a 5% Vote4Dance fee plus Stripe processing fees.
- Supported currencies in Manager are `SEK`, `EUR`, `USD`, and `NOK`.
- Minimum amount is `500 SEK` or `50` in the other supported currencies.

## Default creation flow

1. Open `Event > Sponsors` in Manager.
2. Click `Create sponsor items` to seed the standard event-wide offers.
3. Edit each offer to set the final title, commercial description, price, quantity, and image.
4. Use `Add class sponsor` when you need class-specific sponsorship.
5. For class sponsors, assign the relevant classes before saving.
6. Let functionaries open the public sponsor page for the event and use `Sell sponsor` on the specific offer they are selling.
7. Functionaries can copy the direct payment link, show the QR code, or open the prefilled email draft for that package.
8. Follow incoming purchases in the `Purchases` tab.

## Selling sponsor items as a functionary

1. Open the public sponsor page for the event while signed in as functionary.
2. Find the sponsor offer you want to sell.
3. Use the QR icon in the item title when you want to show a large QR code for that exact package.
4. Use `Sell sponsor` to open the sales actions for that package.
5. From that dialog, you can copy the public checkout link, let the sponsor scan the QR code, or open a prefilled email draft.
6. The email draft includes the event name, the invited sponsor package, and the direct payment link for that exact item.
7. The sponsor-item checkout page is public, so the sponsor can open it directly without auth, enter company details, and pay.
8. After payment, the sponsor receives a claim link where they can upload their logo and finish their sponsor profile later.

## What is created by default

The standard seed creates these event-wide offers:

- `Main Sponsor`
- `Featured Sponsor`
- `Competition Sponsor`
- `Bonus Sponsor`

`Class Sponsor` is added separately on purpose, because each class sponsor item must be linked to one or more classes before it can be used correctly.

## Default price starting points

If you create the default offers in `SEK`, the current starting amounts are:

- `Main Sponsor`: `8000 SEK`
- `Featured Sponsor`: `4000 SEK`
- `Class Sponsor`: `2000 SEK`
- `Competition Sponsor`: `1000 SEK`
- `Bonus Sponsor`: `500 SEK`

These are starting points only. Organizers are expected to adjust pricing to match their event size, audience, and sponsor package strategy.

## Slot summary

### Main Sponsor

- Capacity: 1 total across the event
- Best for: headline sponsor package
- Typical commercial value: premium event-wide visibility across public pages and live venue screens

Current usage:

- Public event page hero sponsor placement
- Result screen sponsor placement
- Schedule/text screen sponsor placement
- Dedicated sponsor screen placement

![Main sponsor on public event page](/assets/images/sponsors/main-sponsor-preview.svg)

![Main sponsor in native app](/assets/images/sponsors/native-main-sponsor-preview.svg)

![Main sponsor on result screen](/assets/images/sponsors/result-screen-main-sponsor-preview.svg)

![Main sponsor on schedule screen](/assets/images/sponsors/schedule-screen-main-sponsor-preview.svg)

![Main sponsor on sponsor screen](/assets/images/sponsors/sponsor-screen-main-sponsor-preview.svg)

### Featured Sponsor

- Capacity: 2 total across the event
- Best for: strong secondary sponsor package
- Typical commercial value: highlighted placements without full exclusivity

Current usage:

- Highlighted featured placement on public event surfaces
- Live screen placement on heat-related screens
- Dedicated sponsor screen split between the featured sponsors

![Featured sponsor on public event page](/assets/images/sponsors/featured-sponsor-preview.svg)

![Featured sponsor in native app](/assets/images/sponsors/native-featured-sponsor-preview.svg)

![Featured sponsor on live screen](/assets/images/sponsors/live-screen-sponsor-preview.svg)

![Featured sponsor on sponsor screen](/assets/images/sponsors/sponsor-screen-featured-sponsor-preview.svg)

### Class Sponsor

- Capacity: up to 2 sponsors per class
- Best for: targeted exposure tied to specific classes or age groups
- Important setup rule: each class sponsor item must be assigned to one or more classes before saving

Current usage:

- Public sponsor list placement
- Sponsor list / sponsor screen list placement
- Live class-related screen placement

![Class sponsor in public sponsor list](/assets/images/sponsors/public-sponsor-list-preview.svg)

![Class sponsor in native app](/assets/images/sponsors/native-public-sponsor-list-preview.svg)

![Class sponsor in sponsor list](/assets/images/sponsors/sponsor-list-preview.svg)

![Class sponsor on live screen](/assets/images/sponsors/live-screen-sponsor-preview.svg)

### Competition Sponsor

- Capacity: no global slot cap in the catalog
- Best for: broad event-wide visibility at a more accessible package level
- Important setup rule: set the total slots you want on the offer itself

Current usage:

- Public sponsor list placement
- Sponsor list / sponsor screen list placement

![Competition sponsor in public sponsor list](/assets/images/sponsors/public-sponsor-list-preview.svg)

![Competition sponsor in native app](/assets/images/sponsors/native-public-sponsor-list-preview.svg)

![Competition sponsor in sponsor list](/assets/images/sponsors/sponsor-list-preview.svg)

### Bonus Sponsor

- Capacity: no global slot cap in the catalog
- Best for: add-on or lower-tier sponsor exposure
- Important setup rule: set the total slots you want on the offer itself

Current usage:

- Public sponsor list placement

![Bonus sponsor in public sponsor list](/assets/images/sponsors/public-sponsor-list-preview.svg)

![Bonus sponsor in native app](/assets/images/sponsors/native-public-sponsor-list-preview.svg)

## Pricing guidance

Use the slot type to decide how premium the package should be:

- `Main Sponsor`: highest price and strongest exclusivity
- `Featured Sponsor`: premium, but below the main package
- `Class Sponsor`: targeted package that can be sold per class group
- `Competition Sponsor`: broader support package with list-style exposure
- `Bonus Sponsor`: entry or add-on package for extra sponsor volume

In practice, most organizers start with the default prices, then adjust:

- up for large events, strong attendance, or high screen coverage
- down for local events or sponsor bundles
- per slot if some placements are more valuable for the audience you are selling to

## Purchases and operations

- The `Purchases` tab shows purchased sponsors, contact details, and amount totals.
- Sold-out state on the public sponsor page is based on the offer capacity fields returned by the API. Functionary sell actions and QR entry points follow the same sold-out rules.
- Purchased sponsors can update company details, link, and logo through the sponsor flow supported by the product.
- If a sponsor image is important for delivery, make sure the sponsor completes their company name, link, and logo after purchase.

## Recommended organizer checklist

1. Connect Stripe first.
2. Create the default sponsor offers.
3. Review titles, descriptions, and price points before sharing the page.
4. Add class sponsors only for the classes you actually plan to sell.
5. Upload good offer images where relevant.
6. Test both the public sponsor page and the functionary `Sell sponsor` flow before using it on site.
7. Monitor purchases and confirm sponsor company details before event day.
