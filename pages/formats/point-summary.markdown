---
layout: page
title: Point summary
permalink: /point-summary/
parent: Special formats
nav_order: 2
---

# Point summary setup

Use this flow when qualification is done first and final ranking uses summarized group points.

## 1. Run qualification round

Create a normal qualification round.

![Qualification](/assets/images/point-summary/qualification.png)

Set group-based priority settings.

![Groups](/assets/images/point-summary/groups.png)

When qualification is complete, assign groups by ranges.

![Assign groups](/assets/images/point-summary/assign-groups.png)

## 2. Create summarize points round

Create a dedicated round configured for summarized points.

![Create summary](/assets/images/point-summary/create-summary.png)

## 3. Configure group points

Set priority mode to groups and configure group point distribution.

![Group points edit](/assets/images/point-summary/group-points-edit.png)

![Group points](/assets/images/point-summary/group-points.png)

## How points are counted

Each couple gets the **Points** of its group, plus bonuses for how far it got, and the total is
multiplied by the group's **Multiplier**. The bonuses follow the DSF BRR rules:

| Result                                     | Bonus                        |
| ------------------------------------------ | ---------------------------- |
| Reaching a quarterfinal                    | +2                           |
| Reaching a semifinal                       | +5                           |
| Reaching the final                         | +8                           |
| Advancing from an extra chance round       | +1                           |
| Final placement 1 / 2 / 3 / 4 / 5 / 6 / 7+ | 10 / 8 / 6 / 4 / 3 / 2 / 1   |

Each stage pays once, the first time a couple reaches it, and the round a couple starts in pays
nothing. A couple alone in the summary gets a flat 100 points — no bonus and no multiplier — as
the rules give when no competition can be held.

### Bonus per round

Open the summary round, go to **Priority** and click **Edit** next to **Round priority setting**.
Below the groups, the **Bonus per round** table lists every round in the class. **Counts as**
decides the bonus for reaching that round, and **Bonus** shows what reaching it pays. A round whose
stage an earlier round already reaches, and the round couples start in, show **No bonus**.

![Bonus per round](/assets/images/point-summary/bonus-per-round.png)

Each round starts from its name:

- Kvartsfinal or Quarter-final → **Quarterfinal**; Semifinal → **Semifinal**; Final → **Final**
- Lucky loser, Hope round and Extrachans → **Extra chance**; an extra chance round itself always
  counts as **Extra chance**
- A B-final that sends its winners on to the final → **Extra chance**; one that sends nobody on →
  **No stage**
- A duel round counts as the stage its name gives: Semifinal Dueller → **Semifinal**, Final Duell 1
  → **Final**. Duels named after the final but followed by a Final round (Finaldueller before
  Final), and duels that name no stage, → **No stage**
- Åttondelsfinal, Uttagning, Kval and Ranking rounds → **Preliminary round**
- Any other name is placed by its order: the last round is the final, then the semifinal, the
  quarterfinal and the preliminary rounds

Change a row when your format pays differently. For example, a couple that wins the lucky loser
round gets +1 for advancing from an extra chance; set **Lucky loser** to **No stage** and it gets
+8 for reaching the final instead.

Only the rows you change are saved. Every other row keeps following its round's name, so a round
you add or rename later is read again, and choosing a row's starting value again makes it follow
the name once more. Renaming a round keeps what you set for it.

**Summaries made before the Bonus per round table** keep counting bonuses by round order, the way
they always have. The dialog says so, and saving the settings switches the summary to the table.
Recalculating an older summary never changes its bonuses; only a couple alone in the summary gets
the flat 100 points described above.

## 4. Validate and publish

Validate summarized outcomes, then publish the round.

![Results](/assets/images/point-summary/results.png)
