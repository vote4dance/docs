---
layout: page
title: How the round setup works
permalink: /federation-rules/reference/
parent: Federation Rules
nav_order: 1
help:
  federation.discipline.rules: ""
---

# How the round setup works

The round setup answers one question: **"This class has N competitors — which rounds
does it dance?"** The federation writes the rules once per discipline, and the
**Round Guide** in Manager applies them to every competition, so organizers get
the right rounds without building them by hand. The round setup is not the
federation's rule profiles (licenses, progression, age composition and the
like): those are set under **Rulebook**, while the round setup lives per discipline
under **Structure**.

This page starts with the thinking behind the round setup, walks through one
example and gives a step-by-step way to build a rule set. It ends with the
common mistakes and a glossary. The screens you work in each have a page of
their own:

| Page | What it is for |
|---|---|
| [Adding and editing round setup rules](/federation-rules/round-setup-rules/) | The rules list of a discipline and the rule editor: read and reorder the rules, download them, add or change a rule, and set its round names and round sizes. |
| [Checking the round setup](/federation-rules/round-setup-checks/) | The **Findings** tab, which reports rules that probably are not meant, for one discipline or the whole federation, and the **By class** tab, which explains the rounds one class gets. |
| [Merging and linking round setup rules](/federation-rules/round-setup-merging/) | Replace copies of the same rule with one rule, and link a rule that several disciplines use so it is edited once. |
| [Setting the default ladder](/federation-rules/default-ladder/) | The ladder a class gets when no other rule gives it one. |
| [Round setup conditions, actions and settings](/federation-rules/round-setup-settings/) | Look-up tables: what each condition matches, what each action does, what each setting controls, and how rules combine. |

For complete rule sets you can copy, see
[Battle round setup](/federation-rules/battle-class-rules/) and
[Battle sub-rounds](/federation-rules/battle-sub-rounds/).

Only federation administrators can change the round setup. Other federation staff
can read the list, the findings and **By class**.

---

## The thinking behind the round setup

### The problem they solve

Nobody knows how many competitors a class will have until registration closes.
Twelve entries need a different competition from four — more rounds, other
cuts, perhaps a B-final. Without rules, every organizer would build those
rounds by hand at every event, and two competitions under the same federation
could run the same class differently.

The round setup moves that decision to where it belongs: **the federation's
rulebook.** The federation describes once how a class is danced, and every
competition gets the same answer for the same number of competitors.

### Describe the pattern, not every case

A rulebook does not say "with 10 dancers do this, with 11 do that, with 12 do
something else". It describes a **pattern**:

> *The field is cut down round by round until two remain for the final. The
> first round is a placing round judged 10-0. Semifinal losers dance a B-final
> for third place.*

The round setup is written the same way, in three layers of thought:

| Ask yourself | Goes into | Example |
|---|---|---|
| How does the field shrink? | The **ladder** — the **Round sizes** of the base rule | 16 → 8 → 4 → 2 |
| What is special about each **stage**? | Rules that say **when** by the round's place | The placing round is judged 10-0; the semifinal has a B-final |
| Which **sizes** break the pattern? | Rules limited to a number of competitors | With exactly 6, the semifinal is danced in trios |

Work down the table and stop as early as you can. Most of a rulebook is
captured by the ladder and a handful of stage rules; rules for particular
numbers of competitors are for the genuine exceptions. The same thinking is
behind brackets mode for battles, which replaced 13–17 per-count rules with
four.

If you find yourself writing one rule per number of competitors, step back and
look for the pattern you are repeating.

### Anchor stages to the final, not the start

What stays the same when a class grows? Not its beginning — a big class gets
extra rounds at the front. **Its end** stays the same: there is always a final,
and before it a semifinal. That is why the rule editor offers **The final** and
**The semi-final, quarter-final or another round counted from the final**: "the
semifinal" means "2nd from the end" whether the class has three rounds or
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
  2. Ladder       Pick the round sizes from Round sizes.          → 16, 8, 4, 2
  3. Rounds       One round per size, largest first.              → 4 rounds, ending in the final
  4. Rules        Each rule looks for rounds it matches           → names, judging,
                  and changes, adds or removes them.                 an extra B-final …
```

Steps 1–3 give a plain list of rounds. Step 4 is where your rules shape them.
A rule is always the same three things:

- **Applies to** — *which classes* it is for: a category, class level and age
  group, or any.
- **When** — *which rounds, and for which class sizes*: for example "the
  semifinal", or "only when the class has 6 competitors".
- **Change** — what it writes: a round name, a judging type, a floor size, an
  extra round beside the matching one, or a round removed.

One rule has no conditions at all: the **base rule**. It holds the defaults for
the whole class, above all the **Round sizes** ladder. Start every rule set
there.

---

## Worked example: 10 competitors

The discipline has three rules:

| # | When | Change |
|---|---|---|
| 1 | Every round (the base rule) | **Round sizes** 2, 4, 8, 16, 200; **Round name(s)** Final, Semi-Final, Quarter-Final, Placing round |
| 2 | **The first round** | **Judging type** 10-0 |
| 3 | **The semi-final, quarter-final or another round counted from the final** → **Semi-final (2nd from the end)**; under **Advanced**, **Action** is **Add After** | **Round name(s)** B-final; **Num to advance** 0 (Count); **Round position** 3 |

**Step 1 — the count** is 10.

**Step 2 — the ladder.** The generator takes the first size in **Round sizes**
that is *at least as large as* the count. For 10 competitors that is 16, and the
ladder runs down from there: 16, 8, 4, 2.

A size is the round's **capacity**, not how many dance in it — all 10
competitors dance the 16-size round. Read the ladder as "how big a field each
round can take": 10 is too many for a quarterfinal of 8, so the class needs a
round before it. (When no size is large enough, the largest size is used.)

**Step 3 — the rounds, and how they are numbered.** Each round can be counted
from either end:

| Round | Size | From start | From the final | Name (from **Round name(s)**) |
|---|---|---|---|---|
| Placing round | 16 | 1 | 4th | Placing round |
| Quarterfinal | 8 | 2 | 3rd | Quarterfinal |
| Semifinal | 4 | 3 | 2nd | Semifinal |
| Final | 2 | 4 | 1st | Final |

The name list is read **from the final outward**: the first name is the final,
the second the semifinal, and so on.

**Step 4 — the rules.**

- Rule 2 matches the first round → the placing round is judged 10-0.
- Rule 3 matches the semifinal → a **B-final** is added beside it. Nobody
  advances from it (**Num to advance** 0) and it awards places 3–4 (**Round
  position** 3).

**Result:** Placing round (10-0) → Quarterfinal → Semifinal + B-final → Final.

### Same rules, 6 competitors

Now the first size at least as large as 6 is 8, so the ladder is 8, 4, 2 — only
three rounds:

| Round | Size | From start | From the final |
|---|---|---|---|
| Placing round | 8 | 1 | 3rd |
| Semifinal | 4 | 2 | 2nd |
| Final | 2 | 3 | 1st |

Rule 3 still finds the semifinal, because the semifinal is **always 2nd from the
end**. Had rule 3 been set to "the third round from the start", it would have hit
the semifinal at 10 competitors but the final at 6.

This is the most important habit in the round setup: **name stages from the
final.** The final is always the last round and the semifinal the one before,
however many rounds a class gets. Use **The first round** for the one round that
is always first.

One trap remains: at 6 competitors, the **3rd from the end** is the placing
round, not a quarterfinal. A rule for the quarterfinal that you meant only for
big classes would land on the placing round of a small one. The **Rounds this
hits** strip in the rule editor shows this before you save ([The rule
editor](/federation-rules/round-setup-rules/#the-rule-editor)); limit the rule with **And only when the class has
between … competitors** if it reaches a round you did not mean.

---

## Building a rule set, step by step

The steps follow the three questions above: the ladder first, then the stages,
then the exceptions.

1. **Write the base rule.** Press **Add rule** in the **Round setup** section.
   Leave **When** on **Every round**, and under **Change** pick **Rounds** and fill
   in one row per round, from the final outward ([Rounds: round names and round
   sizes](/federation-rules/round-setup-rules/#rounds-round-names-and-round-sizes)). For a 1v1 battle discipline, set **Round type** to
   **Brackets** instead and let the generator build the bracket
   ([Battle round setup](/federation-rules/battle-class-rules/)).
2. **Check it.** Open the **By class** tab ([Check a class](/federation-rules/round-setup-checks/#check-a-class)),
   pick a class, and try a few numbers of competitors — a small one, a typical
   one and a large one — to see the round list before adding anything else.
3. **Add stage rules.** Judging, music and names that belong to "the first
   round", "the final" or "the semifinal" go on a rule whose **When** says that
   stage, not on a number of competitors.
4. **Add extra rounds.** A B-final or a bronze battle is a rule with **Action**
   **Add After**, on the round it sits beside. A presentation or warm-up danced
   before everything else is a rule for **Before the first round** ([A round
   before the first round](/federation-rules/round-setup-rules/#a-round-before-the-first-round)).
5. **Only then handle special numbers of competitors.** If one size genuinely
   needs a different shape (six competitors dancing trios, for example), add a
   rule limited with **And only when the class has between … competitors**.
6. **Check again** at every size you touched, open the **Findings** tab, and
   look at the merged result in **Federation → Rulebook**.

---

## Common mistakes

| Symptom | Likely cause | Fix |
|---|---|---|
| A rule hits the semifinal at one size and the final at another | **When** counts the round from the start | Use **The semi-final, quarter-final or another round counted from the final** |
| The quarterfinal settings land on the placing round in small classes | The 3rd round from the end is the first round when there is no quarterfinal | Check **Rounds this hits** at small sizes; limit the rule with **And only when the class has between … competitors** |
| Size 8 has no B-final while 9 and above do | The rule is limited to "9 or more" | Cover size 8 too, or drop the size limit |
| Two rules fight over the same round | A second rule was added for a round another rule already targets | Edit the existing rule instead; **Also sets "…" for these classes** shows who wins |
| Brackets and per-size rules give odd results | Both approaches are on the same class | Use one approach per class |
| A class gets the app's own round names at some size | No rule gives the ladder there (a **Ladder gap**) | Open the **Findings** tab, or **By class** and look for **Fallback** |
| The Round Guide refuses to create rounds | The class already has competitors | Create the rounds before competitors are added |
| A dance list stops partway | A dance lists itself, directly or through another dance | The generator cuts off at the repeat; remove the loop |

---

## Glossary

| Term | Meaning |
|---|---|
| **Base rule** | The rule with no round condition and no action; the class defaults. |
| **Ladder** | The **Round sizes** list — the capacities of the rounds, from the first round down to the final. |
| **Default ladder** | Row 0 of the list: the ladder for classes no other rule gives one. |
| **Copy** | One of several rules that do exactly the same thing for different classes. |
| **Group** | All the copies of one rule, shown as one row. |
| **Linked rule** | One rule used by several disciplines: a change in one reaches all of them, while each keeps its own place in the list and its own switch. |
| **Finding** | Something in the rules that probably is not meant, reported on the **Findings** tab. |
| **Counted from the start / from the final** | Two ways to number the same rounds: from the first round forward, or from the final backward. |
| **Placing round** | The first round, which ranks everyone before the bracket or later rounds. |
| **B-final** | An extra round beside the semifinal where the semifinal losers dance for 3rd and 4th place. |
| **Crosses** | Heats of three instead of pairs; **Max on floor** 3. |
| **Round Guide** | The Manager tool that builds a competition's rounds from these rules. |
| **Rulebook** | The federation view that shows the value each rule ends up with, and which layer set it. |

---

## Sections that have moved

These sections were on this page before. Each is on a page of its own now.

### Rounds: round names and round sizes

This is now on [Adding and editing round setup rules](/federation-rules/round-setup-rules/#rounds-round-names-and-round-sizes).

### Findings

This is now on [Checking the round setup](/federation-rules/round-setup-checks/#findings).

### Across the federation

This is now on [Checking the round setup](/federation-rules/round-setup-checks/#across-the-federation).

### Check a class

This is now on [Checking the round setup](/federation-rules/round-setup-checks/#check-a-class).

### Merging copies

This is now on [Merging and linking round setup rules](/federation-rules/round-setup-merging/#merging-copies).

### Linked rules

This is now on [Merging and linking round setup rules](/federation-rules/round-setup-merging/#linked-rules).

### Default ladder

This is now on [Setting the default ladder](/federation-rules/default-ladder/#default-ladder).
