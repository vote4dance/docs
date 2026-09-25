---
layout: page
title: Battle sub-rounds
permalink: /federation-rules/battle-sub-rounds/
parent: Federation Rules
nav_order: 3
---

# Battle sub-rounds

This page explains how to configure dances and class rules so that the **Round Guide** generates battles that are themselves split into rounds — a semifinal whose battles run in two rounds plus a tie-break, and a final made up of a bronze battle and a gold battle, each danced in three rounds.

> **Prerequisite:** read [Battle class rules](/federation-rules/battle-class-rules/) first for how the round skeleton (placing, quarter, semi, final) is produced. This page only covers what hangs *under* a battle. Rule syntax is listed in [How class rules work](/federation-rules/reference/).

---

## The thinking behind sub-rounds

### Why a battle needs rounds of its own

In many rulebooks a battle is not decided by one exchange. The two dancers go
back and forth over two rounds, with a tie-break if the judges are split; a
final may settle bronze and gold in separate battles, each over three rounds.
Those rounds have to exist in the competition so judges can score each one and
the screens and speaker can follow them.

### Three levels, built from two tools

Think of a battle class as three levels:

```
Semifinal                 ← the stage       made by class rules
└─ Battle 1/2             ← who faces whom  made by the battle dance
   ├─ Runda 1/2           ← what is danced  made by the dances inside it
   ├─ Runda 2/2
   └─ (Tie-Break)
```

- **Class rules** make the top level, the same way as everywhere else: the
  ladder gives the stages, and a position rule such as *round 2 from end* picks
  one out.
- **Dances** make everything below it. A dance on its own is one thing that is
  danced. Give a dance **dances of its own** and it becomes a container — a
  battle made of rounds.

### Build from the bottom up

Because a container points at its contents, the contents must exist first. So
the order is always the same:

1. Create the smallest pieces — the rounds inside a battle.
2. Create the battle dance that lists them.
3. Put the battle dance on a stage with a class rule.

Both setups below follow those three steps.

---

## How the generator builds depth

Class rules and dances live per discipline under **Federation → Structure → (division) → Discipline**, in the **Dances** and **Class rules** tabs. When a competition creates rounds for a class from the Round Guide, the tree is built like this:

- **Round sizes** and **Round labels** on the base rule (no conditions) give the ladder: sizes `2, 4, 8, 200` with labels `Final, Semifinal, Kvartsfinal, Uttagning`. Labels count from the end — the first label is the last round.
- A rule with condition **round == 2, from end** hits the semifinal regardless of how many rounds the class gets. **Modify** changes that round; **Add** creates an extra round after it.
- **Dances** on a rule become sub-rounds of the round. With **Round type: Battle** the generator instead creates one battle per pair; `[X]` in the dance name is replaced by the battle number and `[N]` by the number of battles.
- A dance can carry **Dances** of its own. They become sub-rounds of every round that dance creates — this is what produces the third level.

The preview in the Class rules tab shows sub-rounds as tags; a dance with sub-rounds of its own lists them in parentheses, e.g. `Battle 1/2 (Runda 1/2, Runda 2/2, (Tie-Break))`.

---

## Setup 1 — Semifinal battles in two rounds with a tie-break

**The rulebook says:** a semifinal battle is danced twice, and a third round
breaks a tie.

Every battle in the semifinal is danced in two rounds, with a tie-break in reserve:

```
Semifinal (Top 4)          4 → 2
├─ Battle 1/2              2 → 1
│  ├─ Runda 1/2
│  ├─ Runda 2/2
│  └─ (Tie-Break)
└─ Battle 2/2              2 → 1
   ├─ Runda 1/2
   ├─ Runda 2/2
   └─ (Tie-Break)
Final                      2
```

### Step 1 — Dances

Create the three sub-rounds first, then the battle dance that points at them. The names of the three are the round labels shown in the competition.

| Dance (name) | Round settings |
|---|---|
| `Runda 1/2` | music length, judging as needed |
| `Runda 2/2` | same as Runda 1/2 |
| `(Tie-Break)` | same, typically a shorter music length |
| `Battle [X]/[N]` | `max_floor: 2`, `judging: match`, **`dances: Runda 1/2, Runda 2/2, (Tie-Break)`** |

### Step 2 — Class rule for the semifinal

| Condition | Action | Changes |
|---|---|---|
| `round == 2, from end` | modify | `round_type: battle`, `dances: Battle [X]/[N]` |

To do the same in the quarterfinal, copy the rule with condition `round == 3, from end`. With eight competitors that yields `Battle 1/4 … 4/4`, each with its own rounds.

---

## Setup 2 — Final with a bronze battle and a gold battle

**The rulebook says:** the final four dance two battles — 3rd and 4th for
bronze, 1st and 2nd for gold — each over three rounds.

The difference from Setup 1 is that the final is now one stage holding *two*
different battles, so the final must hold four dancers, and the two battles
are named dances rather than one numbered battle dance.

The tree the Round Guide should produce:

```
Final                      4
├─ Bronsbattle
│  ├─ Runda 1/3
│  ├─ Runda 2/3
│  └─ Runda 3/3
└─ Guldbattle
   ├─ Runda 1/3
   ├─ Runda 2/3
   └─ Runda 3/3
```

### Step 1 — Dances

| Dance (name) | Round settings |
|---|---|
| `Runda 1/3` | music length, judging as needed |
| `Runda 2/3` | same as Runda 1/3 |
| `Runda 3/3` | same as Runda 1/3 |
| `Bronsbattle` | **`dances: Runda 1/3, Runda 2/3, Runda 3/3`**, `round_position: 3` |
| `Guldbattle` | **`dances: Runda 1/3, Runda 2/3, Runda 3/3`** |

The bronze battle sets `round_position: 3` so it awards places 3–4; the gold battle awards 1–2.

Do not set `max_floor` on the bronze and gold battles — they inherit the final's count (4) and would otherwise be split into two heats.

### Step 2 — Base rule

The ladder decides how many reach each stage. Here the final has to hold four competitors, so the last round size is 4 instead of 2:

| Condition | Action | Changes |
|---|---|---|
| *(none)* | *(none)* | `round_label: ["Final", "Semifinal", "Kvartsfinal", "Uttagning"]`, `round_sizes: [4, 8, 16, 200]`, `judging: placement` |

### Step 3 — Class rule for the final

| Condition | Action | Changes |
|---|---|---|
| `round == 1, from end` | modify | `dances: Bronsbattle, Guldbattle` |

> **Proven alternative.** DSF Hiphop Freestyle uses two sibling rounds instead: the final (size 2) is labelled `Guldbattle` in the base rule's round labels, and the bronze battle is created by its own rule — condition `round == 2, from end`, action **add**, `round_label: Bronsbattle`, `round_num_through: 0` (count), `round_position: 3`, `dances: Runda 1/3, Runda 2/3, Runda 3/3`. The round position makes the bronze battle award places 3–4. This is the same mechanism as the B-final add rule described in [Battle class rules](/federation-rules/battle-class-rules/).
>
> The tree with Final as the shared parent is new: verify in a test competition that the pairs land in the right battle (1–2 in gold, 3–4 in bronze) before using it live.

---

## Validating your setup

1. Open the preview in the Class rules tab and enter 4, 6 and 8 for the participant count — the tree should look like the ones above at all three.
2. In Manager, create the rounds from the Round Guide before any competitors are added; the guide refuses otherwise.
3. Rules apply per discipline and can be narrowed by category, class level and age group in the filter at the top of the rule. If the discipline already has a battle rule for the semifinal, edit that one instead of adding another.
4. A dance that lists itself, directly or through another dance, is cut off at the repeat — the generator never nests a dance under itself.
