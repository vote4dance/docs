---
layout: page
title: Class rule reference
permalink: /federation-rules/reference/
parent: Federation Rules
nav_order: 0
---

# Class rule reference

Use this page to look up how a class rule is put together — its scope,
conditions, action and settings. The guides linked from each section show the
rules in use; this page only lists the pieces.

> **Draft.** This reference collects what the other federation guides already
> use. Settings that no guide covers yet are not listed.

---

## Anatomy of a class rule

Class rules live per discipline under **Federation → Structure → (division) →
Discipline**, in the **Class rules** tab. Each rule has:

| Part | What it does |
|---|---|
| **Filter** | The discipline it belongs to, optionally narrowed by category, class level and age group (the filter at the top of the rule). |
| **Conditions** | When the rule fires: competitor count and round position. No conditions means every round. |
| **Action** | What the rule does to a round that matches: *(none)*, **modify** or **add**. |
| **Changes** | The settings the rule writes, such as `round_sizes` or `judging`. |

When a competition creates rounds for a class from the **Round Guide**, the
active class rules are evaluated against the class's competitor count and the
result is the round list. The preview in the Class rules tab does the same for a
participant count you type in, so you can check a rule set without a
competition.

---

## Conditions

| Condition | Matches | Example |
|---|---|---|
| `count == N` | Exactly N competitors in the class | `count == 6` |
| `count >= N`, `count <= N` | A range of counts; combine both for a closed range | `count >= 9`, `count <= 20` |
| `round == N, from start` | The Nth round counting from the first round | `round == 1, from start` — the placing round |
| `round == N, from end` | The Nth round counting back from the final | `round == 1, from end` — the final; `round == 2, from end` — the semifinal |
| `round >= N, from start` | Every round from the Nth on | Combine with a from-end condition to skip the first round |

All conditions on a rule must hold for it to fire.

**Use from-end conditions for fixed bracket positions.** The final is always
round 1 from end and the semifinal round 2 from end, however many rounds a count
produces. To hit the quarterfinal only when the class has one, combine
`round == 3, from end` with `round >= 2, from start` — without the second
condition, a small class's placing round would be round 3 from end too.

---

## Actions

| Action | Effect | Typical use |
|---|---|---|
| *(none)* | The rule's changes are the class defaults. Used with no conditions as the **base rule**. | `round_sizes`, `round_label`, `round_type: brackets` |
| **modify** | Changes the matching round. | Set judging, labels or music on one round |
| **add** | Creates an extra round next to the matching round. | A B‑final or bronze battle beside the semifinal |

---

## Round settings

| Setting | Values | Effect | Guide |
|---|---|---|---|
| `round_sizes` | List of sizes, e.g. `[2, 4, 8, 16, 200]` | The ladder of round capacities. The generator takes the first size larger than the competitor count (or the largest size, when none is larger) and builds downward to the final. In brackets mode, the largest size below 200 is the maximum bracket entry. | [Battle class rules](/federation-rules/battle-class-rules/) |
| `round_type` | `brackets`, `battle` | `brackets` on the base rule generates the whole battle bracket for any count. `battle` on a round splits it into one child per match (the older per-count setup). | [Battle class rules](/federation-rules/battle-class-rules/) |
| `round_label` | List of names, or one name | On the base rule, a list mapped from the final outward (`["Final", "Semifinal", …]`). On a modify or add rule, the name of that one round. | [Battle class rules](/federation-rules/battle-class-rules/) |
| `round_num_through` | A count, or a percentage such as `100%` | How many competitors advance from the round. `0` means nobody advances — used on a B‑final. | [Battle class rules](/federation-rules/battle-class-rules/) |
| `round_position` | A place, e.g. `3` | The first place the round awards. A B‑final or bronze battle with `3` awards places 3–4. | [Battle class rules](/federation-rules/battle-class-rules/) |
| `judging` | `select`, `10-0`, `match`, `placement` | How the round is judged. `select` picks who advances; `match` is 1v1 battle judging; `placement` ranks the field. Default per round type comes from the federation's judging configuration. | [Battle class rules](/federation-rules/battle-class-rules/) |
| `max_floor` | A count | Maximum competitors on the floor at once; a larger round is split into heats. `max_floor: 3` on a semifinal gives trios (crosses). | [Battle class rules](/federation-rules/battle-class-rules/) |
| `dances` | List of dance names | Each dance becomes a sub-round. A dance can carry its own dances, which gives a third level. | [Battle sub-rounds](/federation-rules/battle-sub-rounds/) |
| `music_length` | A number (the guides use `240`) | Music length for the round. | [Battle class rules](/federation-rules/battle-class-rules/) |
| `extra_time` | A number (the guides use `40`) | Extra time added to the round. | [Battle class rules](/federation-rules/battle-class-rules/) |

**Dance names in battles.** In a battle round's dance name, `[X]` is replaced by
the battle number and `[N]` by the number of battles — `Battle [X]/[N]` gives
`Battle 1/4 … 4/4`.

**Linked rounds.** `round_others_id` points a semifinal at its B‑final so
**Assign teams** routes the losers there. The Round Guide sets it when it creates
the rounds; you do not set it in a rule.

---

## Other federation rules

These are set in the same rule editor but are not round settings. Each has its
own guide.

| Rule | Guide |
|---|---|
| Age composition rules (application preset, younger/older allowances, maximum age span) | [Age category rules](/federation-rules/age-category-rules/) |
| Promotion points source, points table, reach, awards promotion points, advance by, target class, promotion threshold | [Promotion points](/federation/progression/) |
| License items required for registration or progression | [Federation admin licenses](/federation-licenses/federation-admin/) (section 4) |

---

## How layers combine

- The most specific layer that sets a value wins; layers that leave a value
  empty inherit it. See [Federation Rules](/federation-rules/) for the order.
- A structured value, such as the promotion points table, is replaced as a
  whole by a narrower layer — it is not merged row by row.
- Not every rule can be set at every layer. The **Rulebook** lists the layers
  each rule accepts, the value that applies, the layer that set it and the
  value it displaced.
