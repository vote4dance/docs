---
layout: page
title: Battle class rules
permalink: /federation-rules/battle-class-rules/
parent: Federation Rules
nav_order: 2
---

# Battle class rules

This page explains how to configure federation class rules so that the **Round Guide** automatically generates the correct round skeleton — placing round, battle layers, B‑final — for each competitor count in a 1v1 battle discipline.

> **Competition operators:** see [Battle bracket setup](/battle-bracket/) for how to seed and run battles once the skeleton exists.

---

## How the Round Guide generates rounds

When an organiser opens the Round Guide for a class, the system evaluates the active class rules against the current competitor count and produces a round list. Rules fire based on **conditions** (count range, round position) and take one of three **actions**: modify an auto-generated round, add an extra round alongside an existing one, or remove a round.

### Round sizes

Every discipline needs a `round_sizes` rule that tells the generator how many competitors fit in each round level. For battle disciplines, round sizes correspond to bracket capacity:

```
[2, 4, 8, 16, 200]
```

Given this ladder and 10 competitors, the generator finds the first size above 10 (16) and builds downward: Placing(16) → Quarter(8) → Semi(4) → Final(2).

Round sizes can be overridden per count range — set `round_sizes` on a rule with a `count` condition to use a different ladder for a specific bracket size.

### From-end conditions

Rules that should fire at a specific bracket position (e.g. "the quarter round") use a **from-end** condition: `round == N, from end`. This is count-agnostic — the Final is always round 1 from end, the Semi is round 2 from end, the Quarter is round 3 from end, regardless of how many rounds are in the bracket.

Rules that should only fire when a quarter exists (and not collapse onto the placing round in small brackets) combine two conditions:

```
round == 3, from end    ← the quarter layer
round >= 2, from start  ← excludes the first round (placing)
```

---

## Complete rule set by count

Each count range needs its own `round_sizes` rule plus any modify/add rules. Rules with no count condition apply to all counts.

---

### Count 2 — direct final

`round_sizes: [2]`

The generator finds no size above 2, falls back to the only size, and produces a single Final. No placing round is created.

No additional rules needed.

---

### Count 3 — crosses semifinal

`round_sizes: [2, 3]`

Generates: Placing(3, 2 advancing) → Final(2).

The placing round functions as the semifinal. Modify it:

| Condition | Action | Changes |
|---|---|---|
| `count == 3`, `round == 1, from start` | modify | `judging: select`, `round_label: Semifinal`, `max_floor: 3`, `round_num_through: 2` |

No B‑final rule for count 3 — the non-advancing competitor is automatically 3rd.

---

### Count 4 — semis + B‑final + final

`round_sizes: [2, 4, 200]`

Generates: Placing(4, all advancing) → Semi(4, 2 advancing) → Final(2).

Add rules:

| Condition | Action | Changes |
|---|---|---|
| `count == 4`, `round == 1, from start` | modify | `judging: 10-0 or select`, `round_num_through: 4` (all advance) |
| `count == 4`, `round == 2, from end` | modify | `round_type: battle`, `judging: match`, `round_label: Semifinal` |
| `count == 4`, `round == 1, from end` | modify | `round_type: battle`, `judging: match`, `round_label: Final` |
| `count == 4`, `round == 2, from end` | **add** | `round_label: B-final`, `round_num_through: 0`, `judging: match` |

---

### Count 5 — 5th eliminated, then 4‑bracket

`round_sizes: [2, 4, 200]`

Same structure as count 4, but the placing round advances only 4.

| Condition | Action | Changes |
|---|---|---|
| `count == 5`, `round == 1, from start` | modify | `round_num_through: 4` |

Then apply the same battle + B‑final rules as count 4 with `count == 5` conditions.

---

### Count 6 — crosses semis + B‑final + final

`round_sizes: [2, 6, 200]`

Generates: Placing(6, all advancing) → Semi(6, 2 advancing) → Final(2).

The semi uses select (crosses) judging with two heats of 3 competitors each. The winner of each heat advances to the Final; the runner‑up goes to the B‑final.

| Condition | Action | Changes |
|---|---|---|
| `count == 6`, `round == 2, from end` | modify | `judging: select`, `round_label: Semifinal`, `max_floor: 3`, `round_num_through: 2` |
| `count == 6`, `round == 2, from end` | **add** | `round_label: B-final`, `round_num_through: 0`, `judging: match` |

---

### Count 7 — one bye + adjusted bracket

`round_sizes: [2, 4, 7, 9]`

Generates: Placing(9, all advancing) → Quarter(7) → Semi(4) → Final(2).

The quarter receives 7 competitors. **Assign to match** on the quarter, sourcing the placing round, automatically gives Seed 1 a bye (no opponent) and pairs 2v7, 3v6, 4v5.

| Condition | Action | Changes |
|---|---|---|
| `count == 7`, `round == 1, from start` | modify | `round_num_through: 100%, judging: 10-0` |
| `count == 7`, `round == 3, from start` | modify | `round_type: battle`, `judging: match`, `round_label: Quarterfinal` |
| `count == 7`, `round == 4, from start` | modify | `round_type: battle`, `judging: match`, `round_label: Semifinal` |
| `count == 7`, `round == 4, from start` | **add** | `round_label: B-final`, `round_num_through: 0`, `judging: match`, `round_position: 3` |

---

### Count 8 — standard 8‑bracket

`round_sizes: [2, 4, 8, 21]`

Generates: Placing(8, all advancing) → Quarter(8) → Semi(4) → Final(2).

| Condition | Action | Changes |
|---|---|---|
| `count == 8`, `round == 2, from end` | modify | `round_type: battle`, `judging: match`, `round_label: Quarterfinal` |
| `count == 8`, `round == 1, from end` | modify | ... |
| `count >= 8`, `round == 2, from end` | **add** | `round_label: B-final`, `round_num_through: 0`, `judging: match`, `round_position: 3` |

Note: the B‑final add condition must include `count >= 8` (not `count >= 9`) so that count 8 is covered.

---

### Count 9–20 — standard 4-layer bracket

`round_sizes: [2, 4, 8, 21]`

Generates: Placing(21) → Quarter(8) → Semi(4) → Final(2). Top 8 advance from placing.

| Condition | Action | Changes |
|---|---|---|
| `count >= 9, count <= 20`, `round == 1, from start` | modify | `judging: 10-0`, `round_label: Placing round` |
| `count >= 9, count <= 20`, `round == 2, from start` | modify | `round_type: battle`, `judging: match`, `round_label: Quarterfinal` |
| `count >= 9, count <= 20`, `round == 3, from start` | modify | `round_type: battle`, `judging: match`, `round_label: Semifinal` |
| `count >= 9, count <= 20`, `round == 3, from start` | **add** | `round_label: B-final`, `round_num_through: 0`, `judging: match`, `round_position: 3` |

---

### Count 21 or more — qualification + placing + bracket

`round_sizes: [2, 4, 8, 16, 200]`

Generates: Qualification(200) → Placing(16) → Quarter(8) → Semi(4) → Final(2).

| Condition | Action | Changes |
|---|---|---|
| `count >= 21`, `round == 1, from start` | modify | `judging: select`, `round_label: Qualification round` |
| `count >= 21`, `round == 2, from start` | modify | `judging: 10-0`, `round_label: Placing round` |
| `count >= 21`, `round == 3, from start` | modify | `round_type: battle`, `judging: match`, `round_label: Quarterfinal` |
| `count >= 21`, `round == 4, from start` | modify | `round_type: battle`, `judging: match`, `round_label: Semifinal` |
| `count >= 21`, `round == 4, from start` | **add** | `round_label: B-final`, `round_num_through: 0`, `judging: match`, `round_position: 3` |

---

## The B‑final add rule

Every bracket size that has a B‑final uses the same **add** action on the semifinal round. The key fields:

| Field | Value | Effect |
|---|---|---|
| `round_label` | `B-final` | Name shown in the round list |
| `round_num_through` | `0` | Nobody advances from the B‑final |
| `round_position` | `3` | Losers placed 3rd (runner-up position offset) |
| `judging` | match | 1v1 battle judging |

When the add rule fires, the generator creates the B‑final alongside the semi. Setting `round_others_id` on the semi to point to the B‑final (done automatically when using the Round Guide import) means the **Assign teams** button routes semi losers to the B‑final without operator action.

---

## Seeding — how it works automatically

When an organiser runs **Assign to match** on a battle round and picks a source round, the system applies the **tournament bracket generator**:

- **From a non-battle source** (placing or qualifying round): seeds by placement rank using the standard fold — Seed 1 vs last, Seed 2 vs second-to-last, etc. For 8 competitors this produces 1v8, 2v7, 3v6, 4v5.
- **From a battle source** (previous bracket layer): collapses winners from each previous match into new pairings, preserving the bracket structure (winner of 1v8 faces winner of 4v5).
- **Byes** (size 7): when the fold produces a match with no second competitor, that slot is empty. The single competitor in that match advances automatically.

No configuration is needed for seeding — it is always determined by the source round's placement results.

---

## Round labels

Set `round_label` as an array in the rule changes. The array maps positions from Final (index 0) outward:

```json
["Final", "Semifinal", "Quarterfinal", "Placing round"]
```

This means: the Final is called "Final", the Semi is "Semifinal", etc. The generator picks the label for each round from this array based on its position in the bracket.

---

## Validating your setup

After creating or editing rules, open the Round Guide for a test competition class and try several competitor counts. Confirm:

1. The correct number of rounds is generated for each count.
2. Battle rounds show children (one per match).
3. The B‑final appears alongside the semifinal, not after the final.
4. For count 2: only a Final is generated (no placing round).
5. For count 3: the first round uses select judging and is labelled "Semifinal".
6. For count 7: the quarterfinal shows 4 battles, one of which will receive only Seed 1 when seeded.
