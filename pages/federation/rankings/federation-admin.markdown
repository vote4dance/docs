---
layout: page
title: Federation Admin
permalink: /federation-rankings/federation-admin/
parent: Federation Rankings
nav_order: 1
redirect_from:
  - /federation/creating-and-getting-a-ranking/
---

# Federation Admin

A ranking is a list your federation publishes, for example "Season ranking, Adults Standard". It is built from competition results, using a formula you set per ranking. Rankings need the **Administrator** role.

## Set up a ranking

The division and its federation classes must exist first: see [Before you start](#before-you-start).

1. **Create the ranking in its division.** A ranking belongs to one division. Open the division in `Federation → Structure` and use its **Ranking** section. A ranking cannot span several divisions: create one per division.
2. **Add the classes.** A ranking only counts results from the federation classes you add to it. Add every class that should count, and none that serve another purpose.
3. **Set the formula:** **Purpose**, **Season start (MM-DD)**, **Window mode**, **Ranking by** and **Update daily**. Each setting is explained, with an example, under [3b. Set the scoring and the time window](#3b-set-the-scoring-and-the-time-window).
4. **Check it.** Open the ranking and check the standings against a competition you know.

## Make it public

1. Make the ranking public, and turn on **Rankings** under `Federation → Settings → Public page`. A new federation has every public section off. See [Federation settings](/federation/settings/#public-page).
2. Open the public page and check what dancers will see. See [Public Rankings](/federation-rankings/public/).

## Corrections and exceptions

- **Corrections** (adding or removing points, removing a team) are made on the ranking itself. Press **Import** afterwards. See [5. Apply manual corrections carefully](#5-apply-manual-corrections-carefully).
- **Exceptions** where the published outcome must differ from the formula, such as a selection decision or a tie resolved by the committee, follow [Manual workflows](/federation-rankings/manual-workflows/).

## One formula per ranking

The current model assumes one automated ranking formula per ranking artifact. If the federation needs a different published outcome in a specific case, use the documented manual workflow instead of trying to encode a hidden secondary formula inside the same ranking.

## Before you start

Make sure these are already correct:

- the federation has the right divisions
- the federation classes already exist in the correct division
- you know which division the ranking belongs to

## Do this

### 1. Open the correct division first

Rankings are division-specific.

Do not start by thinking "federation-wide ranking". Start by choosing the correct division, because every ranking must belong to one division.

### 2. Create or review the ranking inside that division

When you create or edit a ranking, the division defines the scope of that ranking.

Use the division ranking page when you need to:

- create a new ranking
- rename a ranking
- change ranking settings
- change ranking order
- import or refresh ranking data for that ranking profile

Current rule simplification:

- one ranking should have one automated formula
- public and selection outputs should not depend on hidden purpose-specific overrides inside the same ranking
- if the federation needs a second stable formula, create a separate ranking

### 3. Add the right federation classes

A ranking only reflects the federation classes linked to it.

Check that:

- all intended classes are included
- no class from another division is included
- the classes belong to the same ranking purpose

If the class list is wrong, the standings will be wrong even if the ranking itself exists.

### 3b. Set the scoring and the time window

The ranking editor decides how standings are calculated. The settings that matter most:

- **Purpose** — Public, Selection, Progression or Championship invitation. Everything except Public is limited to the **current season** automatically.
- **Season start (MM-DD)** — the first day of the federation's season. The season ends the day before the next start. Set it whenever the purpose is not Public, or when the window mode accumulates the season.
- **Window mode** — which results are looked at:
  - *Use ranking time type* — a calendar date or a number of days back.
  - *Best of latest results* — the N most recent events, counting the best M of them.
  - *Best results overall* — the best M results in the window.
  - *Accumulate full season* — every result since the season start. Best-N does **not** apply in this mode.
- **Take best count** — the M above. Shown only for the two "best" modes.
- **Ranking by** — *Placement*, *Summary* (the judges' score), *Points* or *Head-to-head*. With *Points*, a **Ranking Points** table appears: from place, to place, points. This table belongs to the ranking, not to the class, so if two class levels award different points they need two rankings.
- **Update daily** — recalculated every night at 03:00. The **Import** button on the ranking row recalculates it immediately (the button is also how you refresh after a correction).

Example: a season ranking on the best three results, with points per placement, is *Purpose: Selection ranking*, *Window mode: Best results overall*, *Take best count: 3*, *Season start* set, *Ranking by: Points* with the points table filled in.

Ranking points are separate from [promotion points](/federation/progression/). Promotion points are earned per competition entry, follow the class level's table and move dancers up a class. Ranking points are recomputed from placements each time the ranking runs and only produce the standings. A federation whose rulebook uses one points scale for both configures both: the promotion points table on the class levels, and the same scale in each ranking's Ranking Points table.

### 4. Review the federation ranking summary page

The federation ranking admin page is a review page.

Use it to:

- filter by division
- select a ranking profile
- inspect included classes
- inspect published standings
- inspect the resolved ranking license policy
- inspect existing corrections

The page now requires a division selection before a ranking profile can be opened.

### 5. Apply manual corrections carefully

Manual corrections are still made against the ranking in its division.

Use corrections for cases such as:

- adding or removing points
- removing a team from the published list
- handling administrative adjustments

Always confirm you are editing the correct division ranking before saving a correction.

A **Value** correction is dated, and it counts only while its date is inside the ranking's time
window, like a result danced on that date. Once the date falls outside the window, the correction
drops out of the ranking on the next run. A **Remove** correction has no such limit.

Do not use corrections to move a competitor's results after an age move. When a competitor moves
up or down an age group, through the age-up batch or by editing a class membership into another
age group, the ranking job drops the results danced in the old class from the old ranking and
carries them into the new age group's ranking. The share carried is set by the rules **Ranking
carry on age move up (%)** and **Ranking carry on age move down (%)**. Carried results keep their
dates, so they leave the window like any other result. With neither rule set, the rankings ignore
the move.
See [Age moves](/federation/age-moves/).

### 6. Run a manual exception workflow when needed

Use a manual workflow instead of hidden federation rule overrides when:

- the final selection list must differ from the published ranking
- a team identity case needs an approved exception
- a tie must be resolved from committee guidance or another published list

Required actions:

1. Record the source ranking or source decision basis.
2. Record the affected teams and exact difference from the raw result.
3. Record the reason and approver.
4. Publish the final outcome in the right place.
5. Archive the decision for audit.

Use the detailed procedure here:

- [Manual workflows](/federation-rankings/manual-workflows/)

### 7. Check the public result in the same division

After changes, open the public ranking page for the same division and verify:

- the ranking appears in the correct division list
- the standings look correct
- the ranking license policy tag is correct
- any correction is reflected as expected

## What to do next

After the ranking is working:

1. repeat the same setup for the next division if needed
2. use the public page to validate what dancers and organizations will see

## What this page does not decide

This page does not decide:

- whether a recurring exception should become a separate ranking policy
- whether a federation governance decision should override the normal ranking outcome
- how a public-facing explanation should be written when a manual exception exists

Use [Manual workflows](/federation-rankings/manual-workflows/) when the published outcome must intentionally differ from the automated ranking result.

## Common problems

### A competition is missing from the ranking

It is not closed yet, or its classes are not on this ranking, or the ranking has not recalculated. Press **Import**.

### A dancer is left out

Check the **Enforcement log** for a `ranking` entry. A missing ranking license is a common reason.

### The ranking is not on the public page

The ranking is not public, or **Rankings** is off under **Public page**.

### I cannot open a ranking profile until I choose a division

This is expected. Rankings now require division context everywhere.

### I expected one ranking to span multiple divisions

That is no longer supported. Create one ranking per division instead.

### I expected one ranking to calculate public and selection results differently

Do not rely on hidden purpose-specific ranking overrides. Keep one automated formula per ranking and publish a separate selection decision or separate ranking when needed.

### I expected another ranking to act as a tie-break source

That is no longer part of the documented ranking model. Use the ranking's own tie logic for normal cases and use the manual tie-resolution workflow for exceptional cases.

### A correction affected the wrong ranking

Re-check the division and ranking before saving. Corrections are applied to division-scoped rankings.
