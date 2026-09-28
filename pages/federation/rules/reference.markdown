---
layout: page
title: How class rules work
permalink: /federation-rules/reference/
parent: Federation Rules
nav_order: 0
help:
  federation.discipline.rules: ""
---

# How class rules work

Class rules answer one question: **"This class has N competitors — which rounds
does it dance?"** The federation writes the rules once per discipline, and the
**Round Guide** in Manager applies them to every competition, so organizers get
the right rounds without building them by hand.

This page starts with the thinking behind class rules, then walks through one
example from start to finish, and ends with a reference of every condition,
action and setting. For complete rule sets you can copy, see
[Battle class rules](/federation-rules/battle-class-rules/) and
[Battle sub-rounds](/federation-rules/battle-sub-rounds/).

> **Draft.** This page collects what the other federation guides already use.
> Settings that no guide covers yet are not listed.

---

## The thinking behind class rules

### The problem they solve

Nobody knows how many competitors a class will have until registration closes.
Twelve entries need a different competition from four — more rounds, other
cuts, perhaps a B-final. Without rules, every organizer would build those
rounds by hand at every event, and two competitions under the same federation
could run the same class differently.

Class rules move that decision to where it belongs: **the federation's
rulebook.** The federation describes once how a class is danced, and every
competition gets the same answer for the same number of competitors.

### Describe the pattern, not every case

A rulebook does not say "with 10 dancers do this, with 11 do that, with 12 do
something else". It describes a **pattern**:

> *The field is cut down round by round until two remain for the final. The
> first round is a placing round judged 10-0. Semifinal losers dance a B-final
> for third place.*

Class rules are written the same way, in three layers of thought:

| Ask yourself | Goes into | Example |
|---|---|---|
| How does the field shrink? | The **ladder** — `round_sizes` on the base rule | 16 → 8 → 4 → 2 |
| What is special about each **stage**? | **Position rules** — conditions on the round's place | The placing round is judged 10-0; the semifinal has a B-final |
| Which **sizes** break the pattern? | **Count rules** — conditions on the number of competitors | With exactly 6, the semifinal is danced in trios |

Work down the table and stop as early as you can. Most of a rulebook is
captured by the ladder and a handful of position rules; count rules are for the
genuine exceptions. The same thinking is behind brackets mode for battles,
which replaced 13–17 per-count rules with four.

If you find yourself writing one rule per count, step back and look for the
pattern you are repeating.

### Anchor stages to the final, not the start

What stays the same when a class grows? Not its beginning — a big class gets
extra rounds at the front. **Its end** stays the same: there is always a final,
and before it a semifinal. That is why stage rules count **from the end**:
"the semifinal" means "round 2 from end" whether the class has three rounds or
five. Counting from the start only makes sense for the one round that is always
first.

### General first, exceptions narrower

The same idea runs through the whole federation structure. A rule set on the
discipline covers every class in it; a category, age group, class level or
single federation class only overrides what is truly different for it. You
state the common case once and keep exceptions small and visible — and the
**Rulebook** shows, for any class, which value won and where it came from.

---

## The four steps in practice

Every time the Round Guide builds a class, the same four steps run:

```
  1. Count        How many competitors are in the class?          → 10
  2. Ladder       Pick the round sizes from round_sizes.          → 16, 8, 4, 2
  3. Rounds       One round per size, largest first.              → 4 rounds, ending in the final
  4. Rules        Each rule looks for rounds it matches           → labels, judging,
                  and changes, adds or removes them.                 an extra B-final …
```

Steps 1–3 give a plain list of rounds. Step 4 is where your rules shape them.
A rule is always the same three things:

- **Conditions** — *which* rounds it applies to (for example "the semifinal" or
  "only when there are exactly 6 competitors").
- **Action** — *what* it does to those rounds: change them, add a round beside
  them, or remove them.
- **Changes** — the settings it writes, such as a label or a judging method.

One rule has no conditions at all: the **base rule**. It holds the defaults for
the whole class, above all the `round_sizes` ladder. Start every rule set there.

---

## Worked example: 10 competitors

The discipline has three rules:

| # | Conditions | Action | Changes |
|---|---|---|---|
| 1 | *(none)* — the base rule | *(none)* | `round_sizes: [2, 4, 8, 16, 200]`, `round_label: ["Final", "Semifinal", "Quarterfinal", "Placing round"]` |
| 2 | `round == 1, from start` | modify | `judging: 10-0` |
| 3 | `round == 2, from end` | add | `round_label: B-final`, `round_num_through: 0`, `round_position: 3` |

**Step 1 — the count** is 10.

**Step 2 — the ladder.** The generator takes the first size in `round_sizes`
that is *larger than* the count. For 10 competitors that is 16, and the ladder
runs down from there: 16, 8, 4, 2.

A size is the round's **capacity**, not how many dance in it — all 10
competitors dance the 16-size round. Read the ladder as "how big a field each
round can take": 10 is too many for a quarterfinal of 8, so the class needs a
round before it. (When no size is larger than the count, the largest size is
used.)

**Step 3 — the rounds, and how they are numbered.** Each round can be counted
from either end:

| Round | Size | From start | From end | Label (from `round_label`) |
|---|---|---|---|---|
| Placing round | 16 | 1 | 4 | Placing round |
| Quarterfinal | 8 | 2 | 3 | Quarterfinal |
| Semifinal | 4 | 3 | 2 | Semifinal |
| Final | 2 | 4 | 1 | Final |

The label list is read **from the final outward**: the first name is the final,
the second the semifinal, and so on.

**Step 4 — the rules.**

- Rule 2 matches round 1 from start → the placing round is judged `10-0`.
- Rule 3 matches round 2 from end → a **B-final** is added beside the
  semifinal. Nobody advances from it (`round_num_through: 0`) and it awards
  places 3–4 (`round_position: 3`).

**Result:** Placing round (10-0) → Quarterfinal → Semifinal + B-final → Final.

### Same rules, 6 competitors

Now the first size larger than 6 is 8, so the ladder is 8, 4, 2 — only three
rounds:

| Round | Size | From start | From end |
|---|---|---|---|
| Placing round | 8 | 1 | 3 |
| Semifinal | 4 | 2 | 2 |
| Final | 2 | 3 | 1 |

Rule 3 still finds the semifinal, because the semifinal is **always round 2
from end**. Had rule 3 said `round == 3, from start`, it would have hit the
semifinal at 10 competitors but the final at 6.

This is the most important habit in class rules: **name bracket positions from
the end.** The final is always 1 from end and the semifinal 2 from end, however
many rounds a count produces. Use *from start* only for the first round.

One trap remains: at 6 competitors, round **3** from end is the placing round,
not a quarterfinal. To target the quarterfinal only when there is one, add a
second condition that rules out the first round:

```
round == 3, from end     ← the quarterfinal position
round >= 2, from start   ← …but never the first round
```

---

## Building a rule set, step by step

The steps follow the three questions above: the ladder first, then the stages,
then the exceptions.

1. **Write the base rule.** No conditions, no action. Set `round_sizes` and the
   `round_label` list. For a 1v1 battle discipline, set `round_type: brackets`
   here instead and let the generator build the bracket
   ([Battle class rules](/federation-rules/battle-class-rules/)).
2. **Preview it.** Open the preview in the Class rules tab, type in a few
   participant counts — a small one, a typical one and a large one — and check
   the round list before adding anything else.
3. **Add modify rules by position.** Judging, music and labels that belong to
   "the placing round" or "the semifinal" go on a rule with a from-start or
   from-end condition, not on a count.
4. **Add extra rounds.** A B-final or a bronze battle is an **add** rule on the
   round it sits beside.
5. **Only then handle special counts.** If one count genuinely needs a different
   shape (six competitors dancing trios, for example), add a rule with a
   `count` condition for just that case.
6. **Preview again** at every count you touched, then check the merged result
   in **Federation → Rulebook**.

---

## Common mistakes

| Symptom | Likely cause | Fix |
|---|---|---|
| A rule hits the semifinal at one count and the final at another | It uses a from-start condition for a bracket position | Use `round == N, from end` |
| The quarterfinal settings land on the placing round in small classes | `round == 3, from end` alone matches the placing round when there is no quarter | Add `round >= 2, from start` |
| Count 8 has no B-final while 9 and above do | The add rule says `count >= 9` | Cover count 8 too (`count >= 8`), or drop the count condition |
| Two rules fight over the same round | A second rule was added for a round another rule already targets | Edit the existing rule instead of adding another |
| Brackets and per-count rules give odd results | Both approaches are on the same class | Use one approach per class |
| The Round Guide refuses to create rounds | The class already has competitors | Create the rounds before competitors are added |
| A dance list stops partway | A dance lists itself, directly or through another dance | The generator cuts off at the repeat; remove the loop |

---

## Reference

### Where class rules live

Class rules live per discipline under **Federation → Structure → (division) →
Discipline**, in the **Class rules** tab. The filter at the top of a rule can
narrow it from the whole discipline to a category, class level or age group.

### Conditions

All conditions on a rule must hold for it to fire. A rule with no conditions
applies to every round.

| Condition | Matches | Example |
|---|---|---|
| `count == N` | Exactly N competitors in the class | `count == 6` |
| `count >= N`, `count <= N` | A range of counts; use both for a closed range | `count >= 9`, `count <= 20` |
| `round == N, from start` | The Nth round, counting from the first | `round == 1, from start` — the first round |
| `round == N, from end` | The Nth round, counting back from the final | `round == 1, from end` — the final; `2` — the semifinal |
| `round >= N, from start` | Every round from the Nth on | Combine with a from-end condition to skip the first round |

### Actions

| Action | Effect | Typical use |
|---|---|---|
| *(none)* | The changes are the class defaults. Used on the **base rule**. | `round_sizes`, the `round_label` list, `round_type: brackets` |
| **modify** | Changes the matching round. | Judging, a label or music on one round |
| **add** | Creates an extra round beside the matching round. | A B-final or bronze battle beside the semifinal |
| **remove** | Removes the matching round from the list. | Drop a round the ladder would otherwise create for a given count |

### Settings, by what they control

**The shape of the class**

| Setting | Values | Effect |
|---|---|---|
| `round_sizes` | List of sizes, e.g. `[2, 4, 8, 16, 200]` | The ladder. The first size larger than the count is the first round; the ladder runs down to the final. In brackets mode, the largest size below 200 is the largest bracket (8 = up to quarterfinals, 16 = adds a round of 16). |
| `round_type` | `brackets`, `battle` | `brackets` on the base rule builds a whole battle bracket for any count. `battle` on one round splits it into one battle per pair (the older per-count setup). |
| `round_label` | A list, or one name | On the base rule, a list read from the final outward. On a modify or add rule, the name of that one round. |

**Who advances and which places a round awards**

| Setting | Values | Effect |
|---|---|---|
| `round_num_through` | A count, or a percentage such as `100%` | How many advance. `0` — nobody advances, as on a B-final. |
| `round_position` | A place, e.g. `3` | The first place the round awards. `3` on a B-final or bronze battle gives places 3–4. |

**How the round is judged and danced**

| Setting | Values | Effect |
|---|---|---|
| `judging` | `select`, `10-0`, `match`, `placement` | `select` picks who advances; `match` is 1v1 battle judging; `placement` ranks the field. Defaults come from the federation's judging configuration. |
| `max_floor` | A count | Most competitors on the floor at once; a larger round is split into heats. `max_floor: 3` on a semifinal gives trios (crosses). |
| `dances` | List of dance names | Each dance becomes a sub-round. A dance can carry dances of its own, giving a third level ([Battle sub-rounds](/federation-rules/battle-sub-rounds/)). |
| `music_length` | A number (the guides use `240`) | Music length for the round. |
| `extra_time` | A number (the guides use `40`) | Extra time added to the round. |

**Dance names in battles.** In a battle round's dance name, `[X]` becomes the
battle number and `[N]` the number of battles — `Battle [X]/[N]` gives
`Battle 1/4 … 4/4`.

**Linked rounds.** The Round Guide links a semifinal to its B-final when it
creates the rounds (`round_others_id`), so **Assign teams** sends the semifinal
losers there. You never set this in a rule.

### Other rules in the same editor

These are set in the same rule editor but do not shape rounds. Each has its own
guide.

| Rule | Guide |
|---|---|
| Age composition rules (application preset, younger/older allowances, maximum age span) | [Age category rules](/federation-rules/age-category-rules/) |
| Promotion points source, points table, reach, awards promotion points, advance by, target class, promotion threshold | [Promotion points](/federation/progression/) |
| License items required for registration or progression | [Federation admin licenses](/federation-licenses/federation-admin/) (section 4) |

### How layers combine

- The most specific layer that sets a value wins; layers that leave a value
  empty inherit it. See [Federation Rules](/federation-rules/) for the order.
- A structured value, such as the promotion points table, is replaced as a
  whole by a narrower layer — not merged row by row.
- Not every rule can be set at every layer. The **Rulebook** lists the layers
  each rule accepts, the value that applies, the layer that set it and the
  value it displaced.

---

## Glossary

| Term | Meaning |
|---|---|
| **Base rule** | The rule with no conditions and no action; the class defaults. |
| **Ladder** | The `round_sizes` list — the capacities of the rounds, from the first round down to the final. |
| **From start / from end** | Two ways to number the same rounds: from the first round forward, or from the final backward. |
| **Placing round** | The first round, which ranks everyone before the bracket or later rounds. |
| **B-final** | An extra round beside the semifinal where the semifinal losers dance for 3rd and 4th place. |
| **Crosses** | Heats of three instead of pairs; `max_floor: 3`. |
| **Round Guide** | The Manager tool that builds a competition's rounds from these rules. |
| **Rulebook** | The federation view that shows the value each rule ends up with, and which layer set it. |
