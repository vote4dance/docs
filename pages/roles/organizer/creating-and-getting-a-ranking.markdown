---
layout: page
title: Creating and getting a ranking
permalink: /organizer/creating-and-getting-a-ranking/
parent: Organizer
nav_order: 6
---

# Organizer creating and getting a ranking

Most organizers do not define ranking formulas, but your data quality determines whether federation rankings can be created without manual cleanup.

## What this step is for

You are preparing a ranking-ready result package by ensuring class structure, statuses, and published results are correct and traceable.

## What you own vs what federation owns

You own:

- class and round correctness
- accurate participant placement
- dispute/correction handling before final publish
- complete result publication

Federation owns:

- ranking policy and scoring weights
- cross-event exceptions
- final ranking publication rules

## Where to do it

In Manager, work across:

- Competition setup
- Rounds
- Results publishing

Coordinate with federation admins if ranking sync/export is required.

## Step-by-step ranking readiness flow

### Step 1: Verify classes that are ranking-eligible

Create a final list of classes that should feed ranking. For each class, confirm:

- The **Federation Class** it maps to is the right one — that mapping is what carries the age and
  level rules, and what the federation counts by
- The class title and short letter are right
- **Problems** has nothing to say about it

### Step 2: Validate round outcomes before publish

For every ranking-eligible class:

1. ensure round statuses reached required state (Closed/Confirmed)
2. ensure qualifiers/finals are correct
3. ensure ties and disqualifications are resolved per policy

### Step 3: Resolve data integrity issues

Before publication, check for:

- wrong class assignments
- duplicate participant rows
- missing placements
- unresolved withdrawals/exclusions

Do not publish ranking-relevant classes until these are fixed.

### Step 4: Publish final results

When integrity checks pass:

1. publish results for all ranking-eligible classes
2. record publication timestamp
3. record operator identity

If your federation requires a review hold, submit for review instead of direct publish.

### Step 5: Close the competition

**Closing is what runs the federation side.** For a federation-linked competition, ending the
competition resolves couples from their person numbers, registers class memberships for everyone
who earned points, computes the points and applies promotions at the class threshold. Nothing
reaches rankings and progression until you do it.

Two data-quality points follow from that, and they are worth checking *before* you close:

- **Person numbers.** A typo creates a phantom second couple with a split points balance.
- **Club tags.** A typo creates a duplicate club, which is then approved into the federation with
  placeholder details for somebody to clean up.

If results are imported or corrected after the close, set the competition to **Closed** again —
processing is safe to repeat.

See [Promotion points](/federation/progression/) for exactly what happens at close.

### Step 6: Corrections after the fact

Manual point corrections are edited on the entry in Manager **after** the competition is closed;
a re-confirmed result overwrites a manual value, so the order matters. Anything that changes class
membership or a couple's balance belongs to the federation.

## Pre-close checklist

- All ranking-eligible classes published
- No unresolved disputes impacting placement
- Withdrawals/disqualifications reflected correctly
- Event notes include any special exceptions
- Federation handoff completed

## Common blockers and fixes

### "Ranking class has missing placements"

Fix:

1. reopen correction workflow if policy allows
2. complete placements
3. republish with revision note

### "Published too early before dispute resolution"

Fix:

1. log incident
2. follow federation correction procedure
3. avoid ad hoc edits without audit trace

### "Federation says class mapping is wrong"

Fix:

1. compare class code against federation template
2. correct mapping
3. resend ranking package

## What success looks like

Federation can process rankings from your event immediately, with minimal manual intervention.

## Next step

Continue to [Age transfer coordination](/organizer/age-transfer/) if participants are moving between age groups.
