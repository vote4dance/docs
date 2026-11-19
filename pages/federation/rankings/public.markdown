---
layout: page
title: Public Rankings
permalink: /federation-rankings/public/
parent: Federation Rankings
nav_order: 3
help:
  public.federation.ranking: ""
---

# Public Rankings

Your federation's rankings are shown on its public page on the Vote4Dance website, under **Rankings**. Anyone can open them without signing in. This page shows what visitors see, and what to check when a ranking is missing or looks wrong.

Nothing is set up on the public page itself. Rankings are created and corrected in the federation console: see [Federation Admin](/federation-rankings/federation-admin/).

## Before you start

A ranking is listed on the public page when all of this is true:

- the ranking's **State** is **Active** and its **Privacy** is **Public**
- **Rankings** is turned on under `Federation → Settings → Public page` (see [Federation settings](/federation/settings/#public-page))
- the federation is visible in the public federation list

A ranking that has no classes, or has never been calculated, is listed but empty. Press **Import** on it first: see [Recalculate a ranking](/federation-rankings/federation-admin/#recalculate-a-ranking).

## How visitors find a ranking

1. They open your federation's public page.
2. They choose **Rankings** in the federation's menu. The menu item is there once the federation has at least one active ranking and **Rankings** is turned on.
3. The page lists your divisions, each with its rankings underneath. A division is only listed when it has at least one ranking that is **Active** and **Public**. There is no single list for the whole federation.
4. They click a ranking's name to open it.

A division's own public page, under **Divisions**, also has a **Rankings** button that opens the same list.

The address of a ranking contains both the division and the ranking:
`https://vote4dance.com/public/federation/<your federation>/division/<division>/ranking/<ranking>`.
Use that address to link to a ranking from your own website. The name of each ranking in the division's **Ranking** section is a link to it.

## What a ranking shows

The ranking opens as one list:

- the ranking's name, and **Last updated** with how long ago the standings were calculated
- one row per competitor: the position, the competitor's name (or the names of its dancers), and the total
- under the name, the results that were counted. Point at a result to see the competition and the date; click it to open that class's results.
- a trophy beside the total when the ranking is split into leagues. Point at it to see the league's name.

A competitor without a position has too few counted competitions, or no points.

The page shows the standings as they were last calculated. It does not show which classes the ranking counts, or its settings.

A correction with **Override value** shows as one more result of the competitor, and pointing at it shows the correction's description. A competitor left out with **Exclude from ranking** is simply not on the list. If your federation has published a decision that differs from the ranking, such as a selection list or a decided tie, it is not shown here: publish it yourself, as described in [Manual Workflows](/federation-rankings/manual-workflows/).

## Checking the public view

Open the public page after you set up or change a ranking, and after every correction. The public view is correct when:

- the ranking is listed under the right division, and only there
- the standings are the ones you expect, and **Last updated** is recent
- a correction you made shows as you intended

To look before the public can: a ranking's address opens for anyone who has it, also while the ranking is a **Draft**, when it carries a **Draft** tag. Click the ranking's name in the division's **Ranking** section to open it. Staff who are signed in also get a **Rankings** button in the admin box on the federation's public home page while the **Rankings** section is still turned off.

## Common problems

### I cannot find a ranking on the federation page

Check:

- that you are looking under the right division
- that the ranking's **State** is **Active** and its **Privacy** is **Public**
- that **Rankings** is turned on under **Public page**

If a division has no ranking that is both **Active** and **Public**, the division is not listed on the ranking page at all.

### A ranking link opens an empty page

The address must name the ranking's own division. A link with another division shows nothing. Copy the address again from the ranking's name in the division's **Ranking** section.

### The public page shows the wrong competitors

The public page only shows what was calculated. Check the ranking in the federation console:

- the classes added to it
- its corrections
- its **State** and **Privacy**
- the rule **Ranking needs a licence** for its classes

Then press **Import** and reload the public page. See [Common problems](/federation-rankings/federation-admin/#common-problems) on Federation Admin.

Also check whether your federation published a manual decision apart from the ranking: a selection exception, an exception after a partner change, or a decided tie.
