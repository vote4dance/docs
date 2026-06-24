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

## Two approaches

| Approach | When to use |
|---|---|
| **Brackets mode** (recommended for new classes) | One trigger rule + a few optional modify rules handles every count automatically. Add this to a new class or replace a dense per-count ruleset. |
| **Manual per-count rules** (legacy / custom) | Fine-grained control, or when an existing ruleset is working and does not need migration. Fully supported; the two approaches cannot be mixed on the same class. |

---

## Brackets mode

Brackets mode replaces the per-count `round_sizes` + `round_type: battle` approach with a single trigger rule. The generator builds the complete bracket skeleton — placing, quarter, semi, final, and optionally R16 — for any competitor count automatically.

### Trigger rule

Create one class rule with **no conditions** and **no action** containing:

```json
[
  { "key": "round_type", "value": "brackets" },
  { "key": "round_sizes", "value": [2, 4, 8, 200] }
]
```

The `round_sizes` value doubles as the bracket depth setting. The generator reads the largest finite value (anything below 200) as the **maximum bracket entry size**:

| `round_sizes` | Max bracket entry | Effect |
|---|---|---|
| `[2, 4, 8, 200]` | 8 | Quarter is the deepest battle level; counts ≥ 16 do not get an R16 round |
| `[2, 4, 8, 16, 200]` | 16 | R16 (Åttondelsfinal) is added when count ≥ 16 |

### What gets generated per count

The generator selects the bracket structure based on competitor count and max bracket entry:

| Count | Structure | Battle children |
|---|---|---|
| 2 | Final | 1 |
| 3 | Semi (1 trio, top 2 advance) → Final | 1 + 1 |
| 4–5 | Placing → Semi (2 pairs) → Final | 2 + 1 |
| 6 | Placing → Semi (3 pairs, or 2 trios via modify rule) → Final | 3 or 2 + 1 |
| 7 | Placing → Quarter (4 pairs, one bye) → Semi → Final | 4 + 2 + 1 |
| 8–max | Placing (all through) → Quarter → Semi → Final | 4 + 2 + 1 |
| > max, max=8 | Placing (top 8) → Quarter → Semi → Final | 4 + 2 + 1 |
| ≥ 16, max=16 | Placing → R16 (8 pairs) → Quarter → Semi → Final | 8 + 4 + 2 + 1 |

The Placing round always uses select judging; the Final always uses placement judging. Both are set from the federation's judging configuration; no per-round judging rule is needed unless you want to override them.

### B‑final

B‑final is **not** auto-generated. Add an explicit `add` rule on the semifinal position:

| Condition | Action | Changes |
|---|---|---|
| `round == 2, from end` | **add** | `round_label: B-final`, `round_num_through: 0`, `round_position: 3`, `judging: match` |

This keeps B‑final optional and lets you control which classes have one.

### Crosses / trio mode for count 6

By default, count 6 produces a semi with 3 pairs of 2. To use trios (crosses) instead — two heats of 3, winner of each advancing — add a modify rule:

| Condition | Action | Changes |
|---|---|---|
| `count == 6`, `round == 2, from end` | modify | `judging: select`, `max_floor: 3` |

With `max_floor: 3`, the semi generates 2 trio children (3 competitors each, 1 advancing) instead of 3 pair children.

### Customising round labels

Set a `round_label` array on the trigger rule to name the bracket levels. The array maps from Final (index 0) outward:

```json
{ "key": "round_label", "value": ["Final", "Semifinal", "Kvartsfinal", "Åttondelsfinal", "Uttagning"] }
```

Override a specific round's label (e.g. the placing round) with a per-round modify rule:

| Condition | Action | Changes |
|---|---|---|
| `round == 1, from start` | modify | `round_label: ["Uttagning"]` |

### Placing round judging and music

Configure the placing round with a condition that excludes very small brackets where there is no placing round:

| Condition | Action | Changes |
|---|---|---|
| `round == 1, from start`, `count >= 4` | modify | `judging: 10-0`, `round_label: ["Uttagning"]`, `max_floor: 4`, dances |
| `round == 1, from end` | modify | `music_length: 240`, `extra_time: 40` |

### Complete example — Solo Champion Vuxna (R16 enabled)

| # | Conditions | Action | Changes |
|---|---|---|---|
| 1 | *(none)* | modify | `round_type: brackets`, `round_sizes: [2,4,8,16,200]`, `round_label: ["Final","Semifinal","Kvartsfinal","Åttondelsfinal","Uttagning"]` |
| 2 | `round == 1, from start`, `count >= 4` | modify | `judging: 10-0`, `round_label: ["Uttagning"]`, `max_floor: 4`, dances |
| 3 | `round == 2, from end` | **add** | `round_label: B-Final`, `round_num_through: 0`, `round_position: 3`, `judging: match` |
| 4 | `round == 1, from end` | modify | `music_length: 240`, `extra_time: 40` |

Result: counts 2–15 get the standard Quarter→Semi→Final bracket; counts ≥ 16 automatically add an R16 layer. All handled by 4 rules instead of 13–17.

### Complete example — Solo Champion Barn / FDO (max 8, with crosses)

| # | Conditions | Action | Changes |
|---|---|---|---|
| 1 | *(none)* | modify | `round_type: brackets`, `round_sizes: [2,4,8,200]`, `round_label: ["Final","Semifinal","Kvartsfinal","Uttagning"]` |
| 2 | `round == 1, from start`, `count >= 4` | modify | `judging: 10-0`, `round_label: ["Uttagning"]`, `max_floor: 6` |
| 3 | `count == 6`, `round == 2, from end` | modify | `judging: select`, `max_floor: 3` |
| 4 | `round == 2, from end` | **add** | `round_label: B-Final`, `round_num_through: 0`, `round_position: 3`, `judging: match` |
| 5 | `round == 1, from end` | modify | `music_length: 240`, `extra_time: 40` |

Result: count 6 gets 2 trios (crosses) for the semi; all other counts use standard pairs. No R16 regardless of count.

---

## Manual per-count rules (legacy)

The following sections document the original approach: an explicit `round_sizes` rule plus `round_type: battle` modify rules for each competitor count. Use this approach for existing class rule sets that are already working. Both approaches are fully supported; do not mix them on the same class.

### How round sizes work

The `round_sizes` rule sets the bracket ladder for the size loop:

```
[2, 4, 8, 16, 200]
```

Given 10 competitors and this ladder, the generator finds the first size at or above 10 (16) and builds downward: Placing(16) → Quarter(8) → Semi(4) → Final(2).

Round sizes can be overridden per count — set `round_sizes` on a rule with a `count` condition to use a different ladder for a specific bracket size.

### From-end conditions

Rules that should fire at a specific bracket position use a **from-end** condition: `round == N, from end`. This is count-agnostic — the Final is always round 1 from end, the Semi is round 2 from end, regardless of total rounds.

Rules that should only fire when a quarter exists combine two conditions:

```
round == 3, from end    ← the quarter layer
round >= 2, from start  ← excludes the first round (placing)
```

---

### Count 2 — direct final

`round_sizes: [2]`

Single Final. No placing round.

---

### Count 3 — crosses semifinal

`round_sizes: [2, 3]`

Generates: Placing(3, 2 advancing) → Final(2).

| Condition | Action | Changes |
|---|---|---|
| `count == 3`, `round == 1, from start` | modify | `judging: select`, `round_label: Semifinal`, `max_floor: 3`, `round_num_through: 2` |

---

### Count 4 — semis + B‑final + final

`round_sizes: [2, 4, 200]`

Generates: Placing(4, all advancing) → Semi(4, 2 advancing) → Final(2).

| Condition | Action | Changes |
|---|---|---|
| `count == 4`, `round == 1, from start` | modify | `judging: 10-0 or select`, `round_num_through: 4` |
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

| Condition | Action | Changes |
|---|---|---|
| `count == 6`, `round == 2, from end` | modify | `judging: select`, `round_label: Semifinal`, `max_floor: 3`, `round_num_through: 2` |
| `count == 6`, `round == 2, from end` | **add** | `round_label: B-final`, `round_num_through: 0`, `judging: match` |

---

### Count 7 — one bye + adjusted bracket

`round_sizes: [2, 4, 7, 9]`

Generates: Placing(9, all advancing) → Quarter(7) → Semi(4) → Final(2).

| Condition | Action | Changes |
|---|---|---|
| `count == 7`, `round == 1, from start` | modify | `round_num_through: 100%`, `judging: 10-0` |
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
| `count >= 8`, `round == 2, from end` | **add** | `round_label: B-final`, `round_num_through: 0`, `judging: match`, `round_position: 3` |

---

### Count 9–20 — standard 4-layer bracket

`round_sizes: [2, 4, 8, 21]`

| Condition | Action | Changes |
|---|---|---|
| `count >= 9, count <= 20`, `round == 1, from start` | modify | `judging: 10-0`, `round_label: Placing round` |
| `count >= 9, count <= 20`, `round == 2, from start` | modify | `round_type: battle`, `judging: match`, `round_label: Quarterfinal` |
| `count >= 9, count <= 20`, `round == 3, from start` | modify | `round_type: battle`, `judging: match`, `round_label: Semifinal` |
| `count >= 9, count <= 20`, `round == 3, from start` | **add** | `round_label: B-final`, `round_num_through: 0`, `judging: match`, `round_position: 3` |

---

### Count 21 or more — qualification + placing + bracket

`round_sizes: [2, 4, 8, 16, 200]`

| Condition | Action | Changes |
|---|---|---|
| `count >= 21`, `round == 1, from start` | modify | `judging: select`, `round_label: Qualification round` |
| `count >= 21`, `round == 2, from start` | modify | `judging: 10-0`, `round_label: Placing round` |
| `count >= 21`, `round == 3, from start` | modify | `round_type: battle`, `judging: match`, `round_label: Quarterfinal` |
| `count >= 21`, `round == 4, from start` | modify | `round_type: battle`, `judging: match`, `round_label: Semifinal` |
| `count >= 21`, `round == 4, from start` | **add** | `round_label: B-final`, `round_num_through: 0`, `judging: match`, `round_position: 3` |

---

## The B‑final add rule

Applies to both approaches. The key fields:

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
- **From a battle source** (previous bracket layer): collapses winners from each previous match into new pairings, preserving the bracket structure.
- **Byes** (size 7): when the fold produces a match with no second competitor, that slot is empty. The single competitor advances automatically.

No configuration is needed for seeding — it is always determined by the source round's placement results.

---

## Validating your setup

After creating or editing rules, open the Round Guide for a test competition class and try several competitor counts. Confirm:

1. The correct number of rounds is generated for each count.
2. Battle rounds show children (one per match).
3. The B‑final appears alongside the semifinal, not after the final.
4. For count 2: only a Final is generated (no placing round).
5. For count 3: the semi uses select judging.
6. For count 6 with crosses: the semi generates 2 trio children (3 competitors each).
7. For count 7: the quarterfinal shows 4 battles, one of which will receive only Seed 1 when seeded.
8. For brackets mode with max=16: counts 16+ produce an R16 layer; counts below 16 do not.
