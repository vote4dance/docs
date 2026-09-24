---
layout: page
title: Creating and getting rankings
permalink: /scrutineer/creating-and-getting-a-ranking/
parent: Scrutineer
nav_order: 6
---

# Scrutineer creating and getting rankings

Scrutineers support the data quality that ranking workflows depend on.

## What this step is for

This step explains how accurate results and clean event operations support federation ranking output.

## How it works

Rankings are not something you operate — they are downstream of results you have already approved.
What matters is the order of events:

1. **Review before publication.** The Supervisor app deliberately shows rounds that are *not yet
   published*. This is your window.
2. **The organizer publishes the round.**
3. **The organizer closes the competition.** This is the moment the federation side runs: couples
   are resolved from person numbers, class memberships registered, points computed and promotions
   applied at the class threshold. See [Promotion points](/federation/progression/).
4. The federation's ranking workflow processes the event.

Two things are worth catching *before* step 3, because they are painful afterwards: a typo in a
person number creates a phantom second couple with a split points balance, and a typo in a club tag
creates a duplicate club. Both survive into the rankings.

If results are corrected after a competition is closed, setting it to **Closed** again re-runs the
processing safely.

## When the published outcome must differ

That is a federation decision, not an event-day one, and it has its own workflow:
[Manual workflows](/federation-rankings/manual-workflows/). Every manual change records a reason —
write one that another person can audit a season later.

## What success looks like

The federation can trust the event result set as a basis for ranking-related workflows.

## Next step

Continue to [Age transfer impacts](/scrutineer/age-transfer/).
