---
layout: page
title: Manual Workflows
description: "What to do when a published ranking has to differ from its formula: quotas, a tie the committee decides, results kept after a partner change."
permalink: /federation-rankings/manual-workflows/
parent: Federation Rankings
nav_order: 2
---

# Manual Workflows

A ranking is calculated from results, by one formula. Sometimes the list your federation publishes has to differ from it: a selection list with quotas, a tie the committee decides, a competitor who keeps results after a partner change. A manual workflow is the way to do that so that the decision can be traced afterwards: you make the change with the tools below, and you keep a record of who decided what, and why.

Try the normal setup first. If the classes, the time window or the points table are wrong, fix the ranking itself: see [Federation Admin](/federation-rankings/federation-admin/).

## What you can do in Vote4Dance

| You need to | How |
|---|---|
| Leave a competitor out of a ranking | A correction with the action **Exclude from ranking** |
| Give a competitor a result the competitions did not give | A correction with the action **Override value** |
| Take the standings into your own document | The download button on the ranking's row saves them as a CSV file |
| Move a competitor to another class by decision | **Edit** the class membership on `Federation → Members → Competitors`. See [Members](/federation/members/#editing-a-membership). |
| Check afterwards what the automatic rules did | The [Enforcement log](/federation/members/#enforcement-log) |

Corrections are made on the ranking, in `Federation → Structure → (division) → Ranking`, and need the **Administrator** role. Every correction needs a description. Step by step: [Add a correction](/federation-rankings/federation-admin/#add-a-correction).

A correction with **Override value** shows on the ranking's public page as one more result of that competitor. A visitor who points at it sees the correction's description and date, so write a description the public may read.

You cannot put the competitors of a ranking in an order of your own: the order always follows the totals. So a list that differs from the ranking, such as a final selection list, is published by your federation itself, for example on its own website.

## Keep a record

Do not publish a manual exception without all of the following:

- the ranking it starts from, or the decision it is based on
- the competitors it affects, and exactly how the outcome differs from the calculated one
- the reason
- who approved it
- where the outcome is published, and where the record is kept

Write the short version in the correction's description, for example "Excluded: not eligible, board decision 2026-04-05". Keep the full record in your federation's own archive.

If a published outcome differs from the ranking, say so where you publish it, for example:

- "Selection list from the ranking, with an exception decided by the federation"
- "Tie resolved by committee decision dated `YYYY-MM-DD`"
- "Exception after a partner change, approved by the federation office for the current season"

## Use a manual workflow for these cases

### 1. Selection list differs from the published ranking

Use this when:

- championship quotas override the order of the ranking
- a competitor becomes ineligible after the ranking is calculated
- the federation committee approves an exception
- a separate selection list must be issued for the season

Steps:

1. Open the ranking the selection starts from and press **Import**, so the standings are up to date.
2. Press the download button on its row to save the standings.
3. If a competitor must not appear in the ranking at all, add a correction with **Exclude from ranking** and press **Import** again.
4. Make the selection list from the file: add, remove or move competitors as decided, with the reason for each.
5. Publish the selection list, and keep the record.

Record at least: federation, season, the ranking used, the competitors affected, the reason, who approved it, and where the list is published.

### 2. Team identity exception

Use this when:

- a partner change or a lineup change leads to a dispute about which results the competitor keeps
- a club change needs special handling for the ranking
- federation staff decide that the normal rule should not apply in one case

The normal rule is **Team points when a dancer changes** in the [federation rules](/federation-rules/editor/). It is **Preserve identity**, **Reset on partner change**, **Reset on any lineup change** or **Preserve if name is retained**, and it can be set for the federation, a division, a discipline or a category. Rankings follow it: with a reset, the results danced before the change no longer count for the competitor.

Which club a competitor represents follows the dancers' active licenses. To change the club, the active license is cancelled and a new one is issued with the right club; the representation then follows by itself. How that is done is on [Club transfers](/federation/club-transfers/). A manual workflow is only needed when your federation decides, on top of the club change, that the competitor keeps or loses ranking results against the normal rule.

Steps:

1. Find the competitor as it was before the change and as it is now, and note the dancers in each.
2. Note what **Team points when a dancer changes** says for the class, and what the ranking shows because of it.
3. Get the decision approved.
4. Add a correction on each ranking concerned: **Override value** for a result the competitor should keep, with that result's points or score as the value and the day it was danced as the date, or **Exclude from ranking** if the competitor should not be listed. Press **Import**.
5. If the promotion points should also differ, edit the class membership. See [Manual moves and corrections](/federation/progression/#manual-moves-and-corrections).

Record at least: federation, season, the competitors affected, the rule that would normally apply, what changed in the ranking, what changed in the promotion points, and who approved it.

### 3. Manual tie resolution

In a ranking, competitors with the same total share a position, and the next position is skipped. There is no setting that breaks the tie.

Use this when:

- the shared position is not enough for the decision you publish
- a committee decision must decide the order
- another published list is used to justify a one-off decision

Steps:

1. Note all the tied competitors and their totals.
2. Note why the shared position is not enough, and what the final order is based on.
3. Publish the final order where the decision applies, for example in the selection list.
4. Only if the ranking itself has to show the order: add a correction with **Override value** for one of the competitors, with the decision in the description, and press **Import**. This changes that competitor's total.

Record at least: federation, season, the ranking's name and the date, the tied competitors, the totals before the decision, what the decision is based on, the final order, and who approved it.

## When to create a separate ranking instead

Do not use a manual workflow for a difference that should exist every season.

Create a separate ranking when:

- the federation always needs its own ranking for championship invitations
- the federation always needs a selection ranking with its own formula
- a second published list has its own fixed way of calculating

Create the second ranking in the same division, add the same classes, and give it a name and a **Purpose** that say what it is for. See [Set up a ranking](/federation-rankings/federation-admin/#set-up-a-ranking).

## Afterwards

Press **Import** on every ranking you corrected, then check what visitors see: [Public Rankings](/federation-rankings/public/).
