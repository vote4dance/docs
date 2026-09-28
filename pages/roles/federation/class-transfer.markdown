---
layout: page
title: Class transfer governance
permalink: /federation/class-transfer/
parent: Federation
nav_order: 8
---

# Class moves: your part

Class moves are driven by **promotion points** and are mostly automatic. You set the rules once;
Vote4Dance applies them each time an organizer closes a competition. You step in for exceptions.

## Set the rules once

Promotion points are federation rules, usually set per **class level**:
`Federation → Structure → (division) → Class Levels → Rules`.

| Rule | Decides |
|---|---|
| **Promotion points source** | Where points come from, usually the points on the competition entry. |
| **Promotion points table** | Points per placement, optionally by field size and final kind. |
| **Promotion points reach** | Finalists only, or everyone placed. |
| **Advance by**, **target class** and **promotion threshold** | Which class a couple moves to, and at how many points. |

Leave the threshold unset where your rulebook promotes by hand, or on the best N results of a
season, which cannot be automated yet.

Check it on `Structure → (division) → Progression`. It shows each class's ladder and points
table, and has a calculator. The full guide: [Promotion points](/federation/progression/).

## What then happens automatically

When an organizer **closes** a competition in your federation:

1. Couples are identified from the person numbers on their entries.
2. Class memberships are registered for everyone who earned points.
3. Points are added up per class, and a couple that reaches the threshold moves to the target
   class at once. The reason is recorded in its history.

## Manual moves and corrections

On `Federation → Members → Competitors`. Editing memberships needs the **Manager** role;
**Sync federation progress** needs **Administrator**:

| Task | How |
|---|---|
| Promote, demote or move a competitor | **Edit** the membership, change the class, choose a **Carryover type**, and write a **Reason**. |
| Keep automation away from one membership | Tick **Lock automatic transitions**. |
| Set a competitor's starting balance | The carryover action on the division's **Status** tab. |
| Recalculate everyone | **Sync federation progress**. |

Every change is written to **History** with its reason. Write reasons someone can understand next
year: what changed, why, and who approved it.

## Common problems

| Problem | Fix |
|---|---|
| A couple should have moved, but has not | Check the competition is closed. Then check the class's ladder on **Progression**, and the **Enforcement log** for `promotion` entries. |
| A couple's points are split over two couples | A wrong person number on an entry. Have the organizer correct it, then set the real couple's balance with a carryover and retire the duplicate's membership. |
| Clubs dispute a move | The **History** tab shows who changed what and why. |

## Next step

Continue to [Renew license season flow](/federation/renew-license/).
