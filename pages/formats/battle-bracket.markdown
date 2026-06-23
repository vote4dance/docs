---
layout: page
title: Battle bracket
permalink: /battle-bracket/
parent: Special formats
nav_order: 3
---

# Battle bracket setup

This guide walks competition organisers through running **battle rounds** (1‑vs‑1 elimination matches and trios) where competitors are seeded based on the results of a prior qualifying round. It assumes you have **administrator** role or higher on the competition.

When a federation has configured battle class rules, the **Round Guide** generates the entire skeleton (placing round, all battle layers, B‑final) automatically for any count. When class rules are not configured, you build the skeleton by hand. Either way, the seeding steps below are the same.

> **Federation admins:** see [Battle class rules](/federation-rules/battle-class-rules/) for how to configure class rules so the skeleton is generated automatically.

---

## Overview

Battle rounds work in two parts:

1. **Round skeleton** — created once, before the battle starts. A *parent* battle round contains *child* rounds, one per match (final, B‑final, semis, quarters, trios).
2. **Seeding** — done after the previous round has been judged and confirmed. The **Assign to match** button seeds the bracket automatically in most cases.

Bronze / B‑final rounds have no special status in the system — they are normal child rounds that you populate with the losers of the prior round. When class rules set up `round_others_id`, the **Assign teams** button routes losers there automatically; otherwise, you place them by hand.

### The two tools you'll use

- **Assign to match** — a button on a battle round. Reads placements from a source round (the round you pick) and automatically pairs competitors using the standard tournament fold (seed 1 vs bottom, seed 2 vs second-to-last, …). Works for **any count**, including the 7-competitor bye.
- **Per‑team match selector** — on the round‑results screen, each team has a dropdown for *Match*. Use this to override seeding, handle trios, and place B‑final competitors.

### Glossary

- **Seed N** — the competitor that placed Nth in the prior (qualifying) round.
- **Quarter / Semi / Final** — successive layers of a knockout bracket.
- **B‑final / Bronze** — the match between the two semifinal losers, dancing for 3rd place. By the rules, the B‑final is danced *before* the final.
- **Trio** — a single match among three competitors where the judge selects who advances.
- **Crosses** — a trio judged using select (cross) judging rather than 1v1 match judging.

---

## Two‑step pattern for every battle round

1. **Set up the round skeleton** in the round editor before the battle starts. Create the parent battle round and the child rounds (one per match) with the right *Number of competitors* and *Number advancing*.
2. **Seed teams** after each judging layer is closed and confirmed: click **Assign to match** on the round you want to seed and pick the source round.

That covers every case except the B‑final, which always requires a manual step (assign the two losers) unless `round_others_id` is pre-configured on the semifinal round.

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

**Seeding the trio.** Place all three competitors into the Trio Semifinal via the *Match* dropdown, or run **Assign to match** sourcing the qualifying round.

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
- **B‑Final.** If `round_others_id` is configured, the **Assign teams** button on the semi round places the losers automatically. Otherwise, use the *Match* dropdown to assign the two losers by hand.

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

If the round guide generated the skeleton from class rules, this seeding follows automatically. Otherwise, place each competitor in the right trio via the *Match* dropdown.

**After the trios are judged.**
- **Final.** Run **Assign to match** sourcing the trio parent. The winner from each trio advances.
- **B‑Final.** Assign the runner‑up from each trio by hand via the *Match* dropdown (or automatically if `round_others_id` is set on the trio round).

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
- **B‑Final.** Assign the two semi losers by hand (or automatically if `round_others_id` is configured on the semi).

---

### 9 or more competitors — standard bracket

**Skeleton.** Add one more qualifying or placing layer above the quarters. The bracket below (quarters → semis → B‑Final → Final) stays the same.

**Seeding flow.** Run **Assign to match** at each layer in turn:
1. Qualifying / Placing result → top N advance to the quarter parent.
2. Run **Assign to match** on the quarter parent, sourcing the placing round.
3. After each layer, run **Assign to match** on the next parent sourcing the previous one.
4. **B‑Final** is always manual unless `round_others_id` is set.

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

*"auto"* = automatic when `round_others_id` is configured on the semifinal by the federation admin.

---

## Operator checklist

For every battle round:

1. Confirm the round skeleton exists (parent round + all child rounds). If the class uses the Round Guide, it is generated automatically; otherwise, build it by hand.
2. After the prior round is closed and confirmed, run **Assign to match** on the next parent round, sourcing the previous round.
3. For the B‑Final: if not routed automatically, go to the round‑results screen and set each loser's *Match* dropdown to the B‑Final child.
4. Repeat for every layer until the Final and B‑Final are complete.

---

## Known limitations

- **B‑Final routing** is manual unless the federation has configured `round_others_id` on the semifinal round. This is the most common source of bracket errors — double-check before closing the semi.
- **Trio seeding for size 6** — the standard fold places seeds (1, 6, 5) in Trio A and (2, 3, 4) in Trio B, which matches most federation rules. If your federation uses a different grouping, override it via the *Match* dropdown.
- **Size‑5 elimination** — only the top four seeds enter the bracket; seed 5 must be manually confirmed as 5th place in the standings.
