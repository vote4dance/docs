---
layout: page
title: Creating and getting a ranking
permalink: /federation/creating-and-getting-a-ranking/
parent: Federation
nav_order: 6
---

# Setting up rankings

A ranking is a list your federation publishes, for example "Season ranking, Adults Standard". It
is built from competition results, using a formula you set per ranking. Rankings need the
**Administrator** role.

## Rankings and promotion points are separate

| | Promotion points | Ranking points |
|---|---|---|
| **What they do** | Move couples up a class. | Order the ranking list. |
| **Set on** | The class levels. See [Promotion points](/federation/progression/). | Each ranking's **Ranking Points** table. |
| **Updated** | When a competition is closed. | When the ranking is recalculated. |

If your rulebook uses one points scale for both, set it in both places.

## Step 1: Create the ranking in its division

A ranking belongs to **one division**. Open the division in `Federation → Structure` and use its
**Ranking** section. A ranking cannot span several divisions: create one per division.

## Step 2: Add the classes

A ranking only counts results from the federation classes you add to it. Add every class that
should count, and none from other purposes.

## Step 3: Set the formula

| Setting | Decides |
|---|---|
| **Purpose** | Public, Selection, Progression or Championship invitation. Everything except Public only counts the current season. |
| **Season start (MM-DD)** | Where the season begins. |
| **Window mode** | Which results count: a date or number of days back, the best of the latest N events, the best M overall, or the whole season. |
| **Ranking by** | Placement, the judges' score, points per placement, or head-to-head. |
| **Update daily** | Recalculate every night. The **Import** button recalculates at once. |

Full detail and an example: [Federation admin rankings](/federation-rankings/federation-admin/).

## Step 4: Check it, then make it public

1. Open the ranking and check the standings against a competition you know.
2. Make it public, and turn on **Rankings** under `Federation → Settings → Public page`. A new
   federation has every public section off.
3. Open the public page and check what dancers will see. See
   [Public Rankings](/federation-rankings/public/).

## Corrections and exceptions

- **Corrections** (adding or removing points, removing a team) are made on the ranking itself.
  Press **Import** afterwards.
- **Exceptions** where the published outcome must differ from the formula, such as a selection
  decision or a tie resolved by the committee, follow
  [Manual workflows](/federation-rankings/manual-workflows/). Do not build a hidden second formula
  into the ranking.

## Common problems

| Problem | Fix |
|---|---|
| A competition is missing from the ranking | It is not closed yet, or its classes are not on this ranking, or the ranking has not recalculated. Press **Import**. |
| A dancer is left out | Check the **Enforcement log** for a `ranking` entry. A missing ranking licence is a common reason. |
| The ranking is not on the public page | The ranking is not public, or **Rankings** is off under **Public page**. |

## Next step

Continue to [Age transfer governance](/federation/age-transfer/).
