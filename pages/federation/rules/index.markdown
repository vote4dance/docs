---
layout: page
title: Federation Rules
permalink: /federation-rules/
parent: Federation
nav_order: 4
has_children: true
help:
  federation.rules: ""
  federation.rules.checks: setup-check
  federation.rules.map: setup-map
  federation.rules.ages: age-bands
  federation.rules.rulemap: where-rules-are-set
---

# Federation Rules

Use this section for the federation rules the system enforces automatically:
which teams may enter a class (age composition), how a class's rounds are
generated, and how battles are built. Promotion points, license requirements
and rankings are also federation rules, but each has its own guide, linked
under *Related* below.

Rules work as a **hierarchy of layers**. The broadest setting sits at the
federation level; narrower layers override it for that specific scope. Only set a
rule where it genuinely differs from the layer above — empty fields inherit.

```
Federation
  └── Division
        └── Discipline
              └── Category
                    └── Age group
                          └── Class level
                                └── Federation class  (most specific, always wins)
```

The most specific layer that sets a value wins. Not every rule can be set at
every layer; the **Rulebook** lists the layers each rule accepts.

Each layer's own overrides are edited in its **Rules** section under
**Federation → Structure**. Check the merged result in **Federation → Rulebook**
before going live: for every rule it shows the value that applies, the layer
that set it and the value it displaced. Rules nobody has set are marked as the
platform default.

## Start here

- [How class rules work](/federation-rules/reference/) — **read this first.**
  The thinking behind class rules, a worked example, a step-by-step method, and
  a reference of every condition, action and setting.
- [Age category rules](/federation-rules/age-category-rules/) — how the age
  category is decided for solos, duos, and groups, and where to set the rules.
- [Battle class rules](/federation-rules/battle-class-rules/) — how to configure
  class rules so the Round Guide auto-generates the correct skeleton for each
  competitor count in a 1v1 battle discipline.
- [Battle sub-rounds](/federation-rules/battle-sub-rounds/) — battles danced in
  several rounds with a tie-break, and a final made of a bronze and a gold
  battle.

## Checking the whole setup

The **Rulebook** has six tabs: **Rules** (the merged result for one division or
class, above), **Setup map**, **Age bands**, **Setup check**, **Where rules are
set** and **Timed profiles**. The four in the middle look at every class in the
federation at once, so you do not have to open classes one at a time. Each
reads the whole setup when you open it ("Reading every class…") and says when
it was read. Press **Run again** after you change something.

### Setup check

A list of checks over every class and every rule it inherits. The top line
counts the problems, warnings, notes and checks that passed. Each check that
finds something says what it found, why it matters, and under **How to fix**
what to do, with links such as **Open class**, **Open rules** or **Open level**
that go straight to the class or level concerned.

It checks for:

- class codes used by more than one class (retired classes are left out)
- classes missing a category, age group or class level
- stored rules the platform no longer has. Nothing reads them, and the rule
  editors do not show them, so an Administrator can remove them here with
  **Remove**. Removing one does not change how any class behaves.
- rules stored at a level they cannot be set at. The stored value still applies,
  but it is dropped the next time that level's rules are saved.
- classes with a progression warning, the same warnings the **Progression**
  panel shows per division
- rules set for some divisions only. Often deliberate.
- categories, age groups and class levels with the same name in several
  divisions that are set up differently. Often deliberate.
- active classes that sit on a division, discipline, category, age group or
  class level that is still a draft or already retired
- classes with no licence item. This only matters if dancers need a licence to
  register.
- classes that are still drafts

### Setup map

The whole federation as one picture: a column per division and a block per
discipline, sized by its number of classes. Pick what to colour the blocks by:
**Draft levels**, **Promotion** (classes that advance but have no class to move
into), **Progression warnings**, **Team size** (no member limit anywhere in the
rules), **Licence** (no licence item) or **Draft classes**. Each block shows how
many of its classes are affected. Click a block to open its classes, or a
division name to open the division. **Most affected disciplines** lists the
worst ones.

### Age bands

Every division's age groups on one age axis, so you can compare them. Use
**Highlight** to pick an age group name and see it in every division. Below the
chart the tab lists:

- **Same name, different ages**: a name that covers different ages in
  different divisions
- **Bands that partly overlap** within a division. A band that lies inside
  another is a split of it and is not counted.
- **Gaps between bands**: ages in a division that no age group covers

Age groups that are drafts or retired are drawn as an outline. See
[Age category rules](/federation-rules/age-category-rules/).

### Where rules are set

Every rule against every level it can be set at, for the whole federation. Each
cell says whether the rule is set at that level, and how many times, whether it
could be set there, or whether that level is not allowed for the rule. The
counters at the top show how many rules are in use, how many are set at several
levels, how many are set to different values, and how many are stored but no
longer on the platform. Filter on **All rules**, **Set somewhere** or **Set
nowhere**.

Click a rule to open its details: what it does, where it can be set, the
platform default, how many classes it reaches, and every place it is set. A
rule the platform no longer has can be removed there by an Administrator.

### Export setup

**Export setup**, in the Rulebook's header, downloads the whole setup as
a CSV file, to check in a spreadsheet. Pick one of three:

| Export | One row per |
|---|---|
| **Classes** | class: where it sits, how it advances, and every rule that applies as a column |
| **Rules by class** | class and rule: the value, the level that set it, and what it overrides |
| **Where rules are set** | rule set at each level, with how many classes it reaches |

In **Rules by class**, a rule whose value was put together from several levels,
such as an age composition set partly on the category and partly on the class,
has `merged` as the level that set it, with every contributing level named, and
no overridden value.

The file is named after the federation, the export and the date, for example
`DSF-rules-2026-09-28.csv`.

## Related

- [Promotion points](/federation/progression/) — the points source, points
  table, threshold and target class that move couples up a class ladder.
- [Age moves](/federation/age-moves/) — the season batch that moves competitors
  up an age group, checked against the age category rules.
- [License rules per class](/federation-licenses/federation-admin/) — which
  license items a class requires for registration or progression (section 4).
- [Federation admin rankings](/federation-rankings/federation-admin/) — the rule
  set behind each published ranking.
