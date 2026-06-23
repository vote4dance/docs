---
layout: page
title: Federation Rules
permalink: /federation-rules/
parent: Federation
nav_order: 4
has_children: true
---

# Federation Rules

Use this section for the federation rule profiles the system enforces
automatically — eligibility, ranking, progression, representation, and
age-category rules.

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

The most specific layer that sets a value wins. Check the final, merged result
for any class under **Federation → Rules → Class rule profile** before going live.

## Start here

- [Age category rules](/federation-rules/age-category-rules/) — how the age
  category is decided for solos, duos, and groups, and where to set the rules.
- [Battle class rules](/federation-rules/battle-class-rules/) — how to configure
  class rules so the Round Guide auto-generates the correct skeleton for each
  competitor count in a 1v1 battle discipline.
