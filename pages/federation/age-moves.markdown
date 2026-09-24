---
layout: page
title: Age moves
permalink: /federation/age-moves/
parent: Federation
nav_order: 10
---

# Age moves

At the start of a season, competitors whose members have outgrown their age
group move to the same class one age group up. The **Age-up batch transition**
does this in one pass, from `Federation → Competitors`. It previews first and
moves only the competitors you tick.

> The batch always covers the **whole federation**, including when you open the
> Competitors tab inside one division. The preview lists every candidate the
> federation has, not only that division's.

---

## When a competitor has aged out

The age group's **band** decides, and the batch counts age by birth year
(`season-end year − birth year`).

| The age group…                                             | is left behind when…                                                             | example                                        |
| ---------------------------------------------------------- | -------------------------------------------------------------------------------- | ---------------------------------------------- |
| has a **maximum age** (Juniors 13–15)                      | the oldest member is older than that maximum                                     | turning 16 leaves a 13–15 band                 |
| has **no maximum** (Adults 21+, Senior 35+, Grand Senior 50+) | the oldest member reaches the **minimum age of the next age group** on the ladder | turning 65 leaves Grand Senior 50+ for the 65+ class |

"The next age group on the ladder" means the same class one age group up: same
division, discipline, category and class level, an **active** class, in the age
group whose band starts just above this one.

> An age group with no maximum age and nothing above it — the top of the ladder
> — never produces candidates. Nothing says its members have outgrown it, and
> there is nowhere to move them.

### Which year the age is counted in

The year the **season ends**, taken from the federation's **Season start
(MM-DD)** rule. With a season starting 1 August, a batch dated 1 August 2026
belongs to the 2026/27 season and counts the age each dancer turns during 2027
— the same year registration validates against.

### Where the birth years come from

- **Linked accounts**, once every member of the competitor has a birth date on
  file.
- **The latest competition entry** otherwise. Competitors built from imported
  results have no accounts until a dancer claims their place, and a couple where
  only one partner has claimed is still read from the entry, so the unclaimed
  partner's age is not missing. These rows carry a **from entry** tag in the
  preview.

---

## Running the batch

1. Set the **Effective date**. It dates the move and decides the season, and so
   the year ages are counted in.
2. **Preview**. Every candidate is listed with its current class, the target
   class, the age against the limit, and its points.
3. **Tick the competitors to move.** Nothing is ticked by default, and *Select
   all* skips rows that cannot move. Tick only competitors that have started in
   the new age class — under most federation rules a competitor may stay in the
   old one.
4. Optionally set a **carryover**: a batch default, overridden per row. Without
   one, the competitor's progression points carry into the new class unchanged.
5. **Run age-up.** The confirmation names how many ticked competitors will move.
   Running with nothing ticked moves nobody, and only records the manual ranking
   corrections listed below the table.

---

## Why a row cannot move

A row that cannot move stays in the preview with its reason instead of
disappearing, and is never counted as moved.

| Reason shown                                              | What it means                                                                                                    |
| --------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------- |
| Its current class no longer exists                        | The class was removed since the membership was written.                                                           |
| No class one age group up in this division                | No active class with the same discipline, category and class level exists in the age group above. Create it first. |
| The target class no longer exists                         | The class was removed between the preview and the run.                                                            |
| No active membership to move                              | The competitor's membership in the source class is no longer active.                                               |
| Already moved to another class                            | Something moved the competitor since the preview.                                                                  |
| Transitions are locked for this competitor                | The membership is held in place; clear the lock first.                                                              |
| **Not everyone in the couple fits the target class's age band** | See below.                                                                                                    |
| Converted from a manual ranking correction                | The move is already recorded among the manual corrections listed below the table.                                  |

### "Not everyone in the couple fits the target class's age band"

A candidate is found from its **oldest** member, but an age band applies to
**every** member unless the federation says otherwise — so a 65+ class needs
both partners at 65 by default, and a couple whose younger partner is 62 is not
moved into a class registration would then refuse them for.

If the federation reads the band off one dancer, say so once in the rules: set
**Application preset → Oldest member decides** on the target category or class
(see [Age category rules](/federation-rules/age-category-rules/)). Those
competitors become movable in the next preview, with no change to the batch.

---

## What the move does

- **Membership.** The competitor joins the target class, and the membership in
  the old class is retired. The change is recorded in the competitor's history
  as an *age move*, with the effective date.
- **Promotion points.** Carried into the new class unchanged, or as the
  carryover you set for the batch or the row.
- **Rankings.** With **Ranking carry on age move up (%)** set, the competitor
  leaves the source ranking and the counted results follow into the target
  ranking at that percentage; a move down an age group uses the matching down
  rule. With neither rule set, the rankings ignore the move.
- **Manual ranking corrections.** Age moves that staff previously recorded by
  hand as ranking corrections are converted into recorded moves, and the
  correction rows are removed. Rows the batch cannot interpret are listed as
  *Left as they are* and stay untouched.

---

## Before the first run

- **Season start (MM-DD)** is set on the federation, so ages are counted for the
  right year.
- The age groups above have a **minimum age**, and the classes that use them
  exist, are **active**, and match the class level below them.
- **Ranking carry** percentages are set if rankings should follow the move.
- **Age composition** is set wherever the band is read off one dancer rather
  than all of them.

---

## Related

- [Age category rules](/federation-rules/age-category-rules/) — the bands
  themselves and how they apply to a team.
- [Promotion points](/federation/progression/) — what the carried points mean.
- [Age transfer governance](/federation/age-transfer/) — the policy behind the
  move.
