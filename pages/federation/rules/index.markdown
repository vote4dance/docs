---
layout: page
title: Federation Rules
permalink: /federation-rules/
parent: Federation
nav_order: 4
has_children: true
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

- [Class rule reference](/federation-rules/reference/) — how a class rule is
  built: conditions, actions, and every round setting the battle guides use.
- [Age category rules](/federation-rules/age-category-rules/) — how the age
  category is decided for solos, duos, and groups, and where to set the rules.
- [Battle class rules](/federation-rules/battle-class-rules/) — how to configure
  class rules so the Round Guide auto-generates the correct skeleton for each
  competitor count in a 1v1 battle discipline.
- [Battle sub-rounds](/federation-rules/battle-sub-rounds/) — battles danced in
  several rounds with a tie-break, and a final made of a bronze and a gold
  battle.

## Related

- [Promotion points](/federation/progression/) — the points source, points
  table, threshold and target class that move couples up a class ladder.
- [Age moves](/federation/age-moves/) — the season batch that moves competitors
  up an age group, checked against the age category rules.
- [License rules per class](/federation-licenses/federation-admin/) — which
  license items a class requires for registration or progression (section 4).
- [Federation admin rankings](/federation-rankings/federation-admin/) — the rule
  set behind each published ranking.
