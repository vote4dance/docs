---
layout: page
title: Age category rules
permalink: /federation-rules/age-category-rules/
parent: Federation Rules
nav_order: 1
---

# Age category rules

Use this page when you set up how a federation decides which age category a
solo, duo, or group competes in.

An age category has an **age band** (a minimum and/or maximum age, set on the age
group). On top of the band you choose **how the band is applied** when a team has
more than one dancer — for example "the oldest dancer decides" for a duo, or a
tolerance such as "up to 50% may be younger" for a group.

> Age is calculated from the **birth year**: `competition year − birth year`.
> A dancer born in 2011 is 15 for any competition held in 2026, regardless of
> their exact birthday (unless the age group is set to use the exact birthday).

---

## The two pieces

1. **Age band** — the min/max age, set on the age group
   (`Federation → Division → Age groups`).
2. **Age composition rule** — how the band is applied to a team. Configured in
   the rule editor as the **Age composition rules** field. It supersedes the age
   group's basic basis for whatever scope you set it on.

---

## Decide where to set the rule

This is the most important decision. **Set the rule at the scope where it
actually applies**, and let everything else inherit it.

| If the rule…                                                                       | Set it on…           | Where in admin                                                                 |
| ---------------------------------------------------------------------------------- | -------------------- | ------------------------------------------------------------------------------ |
| is the same for a whole category across all its age groups (e.g. all small groups) | **Category**         | Division → **Category** tab → **Rules** sub-tab → pick the category            |
| differs per age band, the same way for every category (e.g. the older partner decides up to Adults, but both must reach Senior) | **Age group** | Division → **Age groups** → pick the group → **Rules** |
| applies to one concrete class only (discipline + category + age group + level)     | **Federation class** | Division → **Discipline** → **Federation classes** list → the row's rules icon |
| changes on a specific date (e.g. a new season)                                     | **Timed profile**    | Federation → **Rules** → **Add rule profile** (set Effective from / to)        |

**Rule of thumb:** set the baseline on the **Category**, override the exceptions
on the **Federation class**.

**Know what the Age group scope does before you use it.** An age group is shared
by every category that uses it (a duo *and* a small group can both be "Juniors
2"), and it is *more* specific than the category in the merge — so a composition
rule placed there hits every one of those categories and overrides the
category-level setting.

That is wrong when the rule really belongs to a category, and right when it
really belongs to the band. The clearest case is a federation whose couples move
up together: the older partner decides the class through Juniors and Adults, but
the Senior bands require *both* partners to have reached the age. That
distinction is per age group, not per category — so it goes on the **Adults**
group (oldest member decides) with the Senior groups left alone. Setting it on
the category instead would loosen Senior too.

### Precedence reminder

Most specific wins: Federation → Division → Discipline → **Category** → Age group
→ Class level → **Federation class**. Verify the merged result under
**Federation → Rules → Class rule profile**.

---

## Filling in the Age composition rules field

In the rule editor (on a Category or Federation class) the **Age composition
rules** field has:

- **Application preset** — a shortcut for the common cases:
  - *Each member in band* — every dancer must be inside the band.
  - *Oldest member decides* — only the oldest dancer must be inside the band
    (younger dancers may dance up). Use this for duos.
  - *Youngest member decides* — only the youngest dancer must be inside the band.
  - *Average age* — the team's rounded average must be inside the band.
- **Younger allowances (dancing up)** — how many dancers may be *below* the
  minimum, and by how much.
- **Older allowances (dancing down)** — how many dancers may be *above* the
  maximum, and by how much.
- **Maximum age span** — optional cap on the gap between the youngest and oldest
  dancer.

Each allowance row is read as *"a dancer up to **N years** outside the band is
allowed, up to this **limit**"*:

- **Any years** (leave the years box empty) — no limit on how far outside.
- **Limit** is one of:
  - *Unlimited* — any number of such dancers.
  - *Max count* — at most N such dancers.
  - *Max percent* — at most N% of the team.
  - *Per N dancers* — e.g. one per seven dancers.

You can use a preset on its own, allowances on their own, or both. When you set
allowances they define exactly which dancers are tolerated; anyone not covered
makes the registration invalid.

---

## Worked examples

### Danssport Vlaanderen (DSV) — Disco

- **Duo** — the oldest dancer decides. On the **Duo** category set the
  preset to **Oldest member decides** (or leave the age group basis at oldest).
- **Small group / Formation** — on the **Small group** and **Formation**
  categories set Age composition rules to:
  - **Younger allowances:** one row — years *empty (any)*, limit **Max percent =
    50**.
  - **Older allowances:** two rows — years **1**, limit **Unlimited**; and years
    **4**, limit **Per N dancers** with *per* **7**, *max* **1**.

  Setting this once on the category covers every age band the category uses
  (Children, Juniors, Adults), each checked against its own min/max.

### Other federations (same shape, different numbers)

| Federation | Duo / couple                | Group / formation                                              |
| ---------- | --------------------------- | -------------------------------------------------------------- |
| **IDO**    | oldest decides, span ≤ 3 yr | up to **50%** may be ≤ 3 yr younger; no dancing down           |
| **SDO**    | oldest decides              | oldest decides; a dancer may be up to **2 yr** younger         |
| **ND**     | —                           | the **youngest** dancer decides the category                  |

All of these map onto the preset and younger/older allowances described above.

---

## Related

- [Age moves](/federation/age-moves/) — the season batch that moves competitors
  up an age group. It checks the target class against the same band and
  composition rule, so a preset set here decides who the batch may move.

---

## What dancers see

If a team does not meet the rule, registration is blocked with a message such as
*"Too many team members are younger than this age category allows"*,
*"…older than this age category allows"*, or *"The age gap between team members
is too large for this age category"*.
