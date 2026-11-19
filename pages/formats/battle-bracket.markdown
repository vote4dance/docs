---
layout: page
title: Battle bracket
permalink: /battle-bracket/
parent: Classes, rounds and judges
nav_order: 9
---

# Battle bracket

How to run **battle rounds** in Manager: 1‑vs‑1 elimination battles and trios, where the competitors are seeded from the result of a qualifying round. You need Manager access to the event. Where access is given, the Manager app is labelled **Scrutineer**: see [Users, apps and stations](/manager-guide/users-and-stations/).

When the federation has made a battle round setup, the **Round guide** creates the whole skeleton (placing round, all battle layers, B‑final) for any number of competitors. For a class in **brackets mode** the federation needs only four or five rules, and the skeleton follows the number of competitors that turn up on the day. Without a round setup, you build the skeleton by hand. Either way, the seeding steps below are the same.

> **Federation admins:** see [Battle round setup](/federation-rules/battle-class-rules/) for how to make the round setup that the Round guide builds the skeleton from.

---

## Overview

Battle rounds work in two parts:

1. **Round skeleton**: made once, before the battles start. A *parent* battle round holds *child* rounds, one per battle (final, B‑final, semifinals, quarterfinals, trios).
2. **Seeding**: done when the round before has been judged and closed. The **Assign to match** card on the battle round seeds the bracket for you in most cases.

A bronze battle or B‑final is an ordinary child round. You fill it with the losers of the round before. Where those losers go is set on that round, under **Round for non-qualified participants**:

- When it names the B‑final, saving **Qualified participants** on the closed round sends the losers there.
- When it says **Not advanced**, you place the losers by hand.

See [Check where the round sends its participants](/manager-guide/live-operations/#check-where-the-round-sends-its-participants). In Scrutineer (Beta) you can set **Round for non-qualified participants** already during setup: see [Send the rest to a second chance or a B-final](/manager-guide/rounds-by-hand/#send-the-rest-to-a-second-chance-or-a-b-final).

### The two tools you'll use

- **Assign to match**: a card on the page of a battle round that has child rounds. It shows while the round is **Not started** and has participants.
  1. Click **Assign from round** and pick the source round. The list holds the class's rounds that are **Closed** or **Confirmed**.
  2. Manager reads the placements from the source round and pairs the competitors by the standard tournament fold (seed 1 against the last seed, seed 2 against the second last, and so on). This works for **any number**, including the bye with 7 competitors. You see "Targets updated, please confirm!".
  3. Check each competitor's battle in the **Match** column.
  4. Click **Send participants to match**. The competitors are put into their battles.

  Below, "run **Assign to match**, sourcing a round" means these four steps with that round picked in step 1. Every competitor in the battle round must also be in the source round.
- **Match** column: in the battle round's list of participants, each competitor has a **Match** list with **Not advanced** and the round's battles. Use it to change the seeding, to fill a trio, and to place the competitors of a B‑final.

In Scrutineer (Beta), the new version of the Manager app, the round page has **Place in battles** instead: it puts the starters into their battles, seeded by the bracket or at random, and lets you move a starter to another battle. For how to read a battle round's result there, see [Battle rounds](/manager-guide/reading-the-marks/#battle-rounds).

### Glossary

- **Seed N**: the competitor that placed Nth in the qualifying round before.
- **Quarter / Semi / Final**: the layers of a knockout bracket, one after the other.
- **B‑final / Bronze**: the battle between the two semifinal losers, for 3rd place. By the rules, the B‑final is danced *before* the final.
- **Trio**: one battle among three competitors, where the judges choose who goes on.
- **Crosses**: a trio judged with crosses (select judging) instead of as a 1‑vs‑1 battle.

---

## What spectators and the speaker see

- **Spectators and dancers** read a published battle class as a tree on the event page: see [Battle results as a tree](/spectator/following-the-schedule/#battle-results-as-a-tree).
- **The speaker** gets a live list of every battle in the **Results** page of the Speaker app: see [Battles in the speaker app](/manager-guide/screens/#battles-in-the-speaker-app).

---

## Two‑step pattern for every battle round

1. **Set up the round skeleton** before the battles start. Create the parent battle round, then its child rounds, one per battle, with **Add round** → **Child round** under **Class order** on the round's page. Give each the right **Number to advance**.
2. **Seed the competitors** after each layer is judged and closed: run **Assign to match** on the round you want to seed, sourcing the round before.

That covers every case except the B‑final. Its two competitors are placed by hand, unless the semifinal round names the B‑final under **Round for non-qualified participants**.

---

## By bracket size

### 2 competitors — direct final

**Skeleton.** A single Final child, 2 competitors.

**Seeding.** Run **Assign to match** on the parent, sourcing the qualifying round. Both competitors go into the Final automatically.

**Bronze.** None.

---

### 3 competitors — trio semifinal

**Skeleton.**
- 1 Trio Semifinal child — 3 competitors, 2 advancing
- 1 Final child — 2 competitors

No bronze child. The competitor who does not advance from the trio is automatically 3rd.

**Seeding the trio.** Set the **Match** of all three competitors to the Trio Semifinal, or run **Assign to match** sourcing the qualifying round.

**After the trio is judged.** Run **Assign to match** on the parent round, sourcing the trio round. The two advancing competitors are moved into the Final automatically.

---

### 4 competitors — 1v4, 2v3 with B‑final

**Skeleton.**
- 2 Semifinal children — 2 competitors each, 1 advancing
- 1 B‑Final child
- 1 Final child

**Seeding the semis.** Run **Assign to match** on the parent round, sourcing the qualifying round. Produces 1v4 and 2v3 automatically.

**After the semis are judged.**
- **Final.** Run **Assign to match** on the parent, sourcing the semi round. The two winners are seeded automatically.
- **B‑Final.** If the semifinal round names the B‑final under **Round for non-qualified participants**, saving **Qualified participants** on the closed semifinal round places the losers there. Otherwise, set the two losers' **Match** to the B‑final by hand.

---

### 5 competitors — 5th eliminated, then 4‑bracket

**Skeleton.** Same as the 4‑competitor case.

**Step before seeding.** Advance only the top **four** seeds from the qualifying round. Seed 5 stays out and is locked at 5th in the standings.

**From here on, follow the 4‑competitor flow.**

---

### 6 competitors — two trios (crosses) + B‑Final + Final

This size uses **crosses** (select) judging for the trios rather than 1v1 match judging.

**Skeleton.**
- 2 Trio children — 3 competitors each (select judging), 1 advancing, 1 to B‑Final
- 1 B‑Final child
- 1 Final child

**Seeding the trios.** Run **Assign to match** on the parent, sourcing the qualifying round. The standard fold produces:
- Trio A: seed 1, seed 6, seed 5
- Trio B: seed 2, seed 3, seed 4

If you want another grouping, put each competitor in the right trio in the **Match** column before you click **Send participants to match**.

**After the trios are judged.**
- **Final.** Run **Assign to match** sourcing the trio parent. The winner from each trio advances.
- **B‑Final.** Set the **Match** of the runner‑up from each trio to the B‑final by hand, unless the trio round names the B‑final under **Round for non-qualified participants**.

---

### 7 competitors — one bye + adjusted bracket

**Skeleton.**
- 4 Quarterfinal children (one will hold only seed 1 — the bye)
- 2 Semifinal children
- 1 B‑Final child
- 1 Final child

**Seeding the quarters.** Run **Assign to match** on the parent round, sourcing the qualifying round. The bracket generator produces:

| Battle | Competitors |
|---|---|
| Quarter 1 | Seed 1 (bye — no opponent) |
| Quarter 2 | Seed 4 vs Seed 5 |
| Quarter 3 | Seed 2 vs Seed 7 |
| Quarter 4 | Seed 3 vs Seed 6 |

Seed 1 is automatically placed alone in their battle and advances without competing.

**After the quarters are judged.** Run **Assign to match** on the semifinal round, sourcing the quarter round. Produces:
- Semi A: Seed 1 vs Winner(4‑5)
- Semi B: Winner(2‑7) vs Winner(3‑6)

**After the semis are judged.**
- **Final.** Run **Assign to match** sourcing the semi round. Automatic.
- **B‑Final.** Assign the two semi losers by hand.

---

### 8 competitors — standard 8‑bracket with B‑final

**Skeleton.**
- 4 Quarterfinal children
- 2 Semifinal children
- 1 B‑Final child
- 1 Final child

**Seed the quarters.** Run **Assign to match** sourcing the qualifying round. Produces 1v8, 2v7, 3v6, 4v5 automatically.

**After the quarters.** Run **Assign to match** on the semi round sourcing the quarter round. Produces W(1‑8) vs W(4‑5) and W(2‑7) vs W(3‑6).

**After the semis.**
- **Final.** Run **Assign to match** sourcing the semi round. Automatic.
- **B‑Final.** Assign the two semi losers by hand, unless the semifinal round names the B‑final under **Round for non-qualified participants**.

---

### 9 or more competitors — standard bracket

**Skeleton.** Add one more qualifying or placing layer above the quarters. The bracket below (quarters → semis → B‑Final → Final) stays the same.

**Seeding flow.** Run **Assign to match** at each layer in turn:
1. Qualifying / Placing result → top N advance to the quarter parent.
2. Run **Assign to match** on the quarter parent, sourcing the placing round.
3. After each layer, run **Assign to match** on the next parent sourcing the previous one.
4. The **B‑Final** is always filled by hand, unless the semifinal round names it under **Round for non-qualified participants**.

**For 9–20 competitors**, typically advance the top 8 to quarters (1v8, 2v7, 3v6, 4v5).

**For 21 or more**, a pre-qualifying round filters down to 16 or 8 before the standard bracket begins.

---

## Quick reference

| Size | Quarter seeding | Semi seeding | Final seeding | B‑Final |
|---|---|---|---|---|
| 2 | — | — | automatic | — |
| 3 | — | manual / auto | automatic from trio | none |
| 4 | — | automatic (1v4, 2v3) | automatic | manual or auto |
| 5 | — | automatic (top 4 only) | automatic | manual or auto |
| 6 | — | automatic (fold) or manual | automatic from trios | manual or auto |
| 7 | automatic (seed 1 bye) | automatic (collapse) | automatic | manual |
| 8 | automatic (1v8 … 4v5) | automatic | automatic | manual or auto |
| 9+ | automatic at every layer | automatic | automatic | manual or auto |

*"auto"* means: done for you when the semifinal round names the B‑final under **Round for non-qualified participants**.

---

## Operator checklist

For every battle round:

1. Check that the round skeleton is there: the parent round and all its child rounds. The Round guide makes it when the federation has a round setup for the class. Otherwise, build it by hand.
2. When the round before is closed, run **Assign to match** on the next parent round, sourcing that round.
3. For the B‑Final: if the losers were not sent there for you, set each loser's **Match** to the B‑Final in the round's list of participants.
4. Repeat for every layer until the Final and the B‑Final are done.

---

## Judging the battles live

In Scrutineer (Beta), the new Manager, open the battle round under **Live**. The battle on the floor shows each judge's pick as it comes in, the votes for each dancer, and **Confirm winner**. The **Bracket** below it shows every battle and who goes on.

### When a battle is tied

A tied battle can't be confirmed: there is no winner to send on. Instead of **Confirm winner** you get a button that settles the tie:

- **Vote again** — the votes are level, for example 1–1 because a judge didn't pick anyone. The battle goes back to judging. Let the dancers dance again; each judge's earlier pick stays filled in, so they change it if they want and send it in again. Nothing new is added to the schedule.
- **Extra round** — in a battle danced over several rounds, the dancers have won the same number of rounds. The battle's tie-break round is put on the floor; if the battle has none, one is added after its other rounds. Judge it like the other rounds.

When the battle has a winner, confirm it as usual.

### Opening a battle again

Each battle in the **Bracket** that is being judged, closed or confirmed has a **⋯** button. Choose **Reopen battle** to:

1. Open one judge's sheet again, for example when a judge sent in the wrong pick.
2. Put a closed battle back to judging.
3. Take back a confirmed battle. Its winner is taken out of the next battle again, as long as nobody has judged that battle yet.

Only that battle changes; the other battles stay as they are. Once the whole battle round is confirmed, reopen the round itself instead.

### The marks for each battle

Under **Marks**, each battle has its own tab with the two dancers in that battle, each judge's pick and the battle's place. **Result** shows everyone in the round.

---

## Known limitations

- **The B‑Final is filled by hand** unless the semifinal round names it under **Round for non-qualified participants**. This is the most common cause of a wrong bracket. Check the setting before you close the semifinal. For a class in brackets mode, the Round guide does not fill it in, so set it yourself.
- **Trios with 6 competitors**: the standard fold puts seeds 1, 6 and 5 in Trio A and seeds 2, 3 and 4 in Trio B, which fits most federations' rules. If your federation groups them differently, change it in the **Match** column.
- **5 competitors**: only the top four seeds enter the bracket. Check yourself that seed 5 ends as 5th in the result.
