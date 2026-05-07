---
layout: page
title: Battle bracket
permalink: /battle-bracket/
parent: Special formats
nav_order: 3
---

# Battle bracket setup

This guide walks competition organisers through running **battle rounds** (1‑vs‑1 elimination matches and trios) where competitors are seeded based on the results of a prior qualifying round. It assumes you have **administrator** role or higher on the competition.

The system today fully automates the seeding for **2, 4, and 8** competitors. For other sizes (**3, 5, 6, 7**) and for any **bronze / B‑final** round, the bracket is built by combining the automatic seeder with a few manual placement steps. This guide tells you which clicks to make for each size.

---

## Overview

Battle rounds work in two parts:

1. **Round skeleton** — created once, before the battle starts. A *parent* battle round contains *child* rounds, one per match (final, B‑final, semis, quarters, trios).
2. **Seeding** — done after the previous round has been judged and confirmed. Either the **Assign to match** button does it for you, or you place teams by hand from the round‑results screen.

Bronze / B‑final rounds have no special status in the system — they are normal child rounds that you populate with the losers of the prior round.

### The two tools you'll use

- **Assign to match** — a button on a battle round. Reads placements from a source round (the round you pick) and automatically pairs top seed vs bottom seed, second vs second‑to‑last, and so on (the standard tournament fold). This produces the correct bracket whenever the team count is a power of 2 (**2, 4, or 8**).
- **Per‑team match selector** — on the round‑results screen, each team has a dropdown for *Match*. You can move any team to any child round by hand. This is how you handle bronze rounds, trios, byes, and odd sizes.

### Glossary

- **Seed N** — the team that placed Nth in the prior (qualifying) round.
- **Quarter / Semi / Final** — successive layers of a knockout bracket.
- **B‑final / Bronze** — the match between the two semifinal losers, dancing for 3rd place. By the rules, the B‑final is danced *before* the final.
- **Trio** — a single match between three competitors.

---

## Two‑step pattern for every battle round

1. **Set up the round skeleton** in the round editor. Create the parent battle round and the child rounds (one per match) with the right *Number of competitors per match* and *Number of teams advancing*.
2. **Seed teams** after each judging layer is closed and confirmed:
   - If the team count is 2, 4, or 8 and you're seeding the winners' side: click **Assign to match** on the round you want to seed and pick the source round.
   - Otherwise: open the round‑results screen and assign each team to the right child round via the *Match* dropdown.

That's the whole pattern. The rest of this guide is just the specific recipe for each bracket size.

---

## By bracket size

### 2 competitors — direct final

**Skeleton.** A single Final match with 2 competitors per match, 1 advancing.

**Seeding.** Run **Assign to match** on the Final, sourcing the qualifying round. Produces seed 1 vs seed 2 automatically.

**Bronze.** None — both competitors compete directly for gold and silver.

---

### 3 competitors — trio semifinal

**Skeleton.**
- Trio Semifinal child — 3 competitors per match, 2 advancing
- Final child — 2 competitors per match, 1 advancing
- No bronze child. The competitor who does *not* advance from the trio is automatically bronze.

**Seeding the trio.** Place all three teams in the Trio Semifinal manually (the *Match* dropdown on the round‑results screen).

**After the trio is judged.** Run **Assign to match** on the Final, sourcing the trio round. The two competitors advancing (placement 1 and 2 in the trio) move into the Final.

**Manual step.** Confirm the third‑place competitor in the trio is recorded as bronze in the final standings.

---

### 4 competitors — 1v4, 2v3 with B‑final

**Skeleton.**
- 2 semifinal children (2 competitors per match, 1 advancing, each)
- 1 Final child
- 1 B‑Final (Bronze) child

**Seed the semis.** Run **Assign to match** on the parent battle round, sourcing the qualifying round. Produces 1v4 and 2v3 automatically.

**After the semis are judged.**
- **Final.** Run **Assign to match** on the Final child, sourcing the parent battle round. The two semifinal winners are seeded automatically.
- **B‑Final.** Open the round‑results screen and use the *Match* dropdown to assign the two semifinal losers (the teams with placement 2 in their semi) to the B‑Final.

---

### 5 competitors — 5th eliminated, then 4‑bracket

**Skeleton.** Same as the 4‑competitor case (2 semis, Final, B‑Final).

**Manual step before seeding.** Mark seed 5 as **cancelled** in the battle round (or omit them entirely). They are locked at 5th place in the final standings and do not advance.

**From here on, follow the 4‑competitor flow.** With four remaining competitors, **Assign to match** produces 1v4 and 2v3 automatically; the bronze losers are placed by hand after the semis.

---

### 6 competitors — two trios + Final + B‑Final

**Skeleton.**
- 2 trio children — 3 competitors per match, 2 advancing, each
- 1 Final child
- 1 B‑Final child

**Seeding the trios is manual** because the rules use a non‑standard pattern:

- **Trio A:** seed 1, seed 5, seed 6
- **Trio B:** seed 2, seed 3, seed 4

In the round‑results screen, set each team's *Match* dropdown to the right trio.

**After the trios are judged.**
- **Final.** Manually place the *winner* of each trio (placement 1) into the Final.
- **B‑Final.** Manually place the *runner‑up* of each trio (placement 2) into the B‑Final.

---

### 7 competitors — one bye + adjusted bracket

**Skeleton.**
- 3 quarter children — for seeds 2 through 7 only
- 2 semifinal children
- 1 Final child
- 1 B‑Final child

**Seeding the quarters is fully manual** for this size:

- Quarter 1: seed 2 vs seed 7
- Quarter 2: seed 3 vs seed 6
- Quarter 3: seed 4 vs seed 5

Seed 1 is **not** placed into any quarter — they hold a bye.

**After the quarters are judged.**
- **Semi A** (1 vs winner of 4‑5): manually place seed 1 plus the winner of Quarter 3.
- **Semi B** (winner of 2‑7 vs winner of 3‑6): manually place the winners of Quarter 1 and Quarter 2.

**After the semis are judged.**
- **Final.** Manually place the two semifinal winners.
- **B‑Final.** Manually place the two semifinal losers.

---

### 8 competitors — standard 8‑bracket with B‑final

**Skeleton.**
- 4 quarter children
- 2 semifinal children
- 1 Final child
- 1 B‑Final child

**Seed the quarters.** Run **Assign to match** on the parent battle round, sourcing the qualifying round. Produces 1v8, 2v7, 3v6, 4v5 automatically.

**After the quarters are judged.**
- **Semis.** Run **Assign to match** on the semifinal round, sourcing the quarter round. Produces W(1‑8) vs W(4‑5) and W(2‑7) vs W(3‑6) automatically — the standard cross‑bracketing is preserved.

**After the semis are judged.**
- **Final.** Run **Assign to match** on the Final, sourcing the semifinal round. Automatic.
- **B‑Final.** Manually place the two semifinal losers via the round‑results screen.

---

## Quick reference

| Size | Quarter seeding | Semi seeding | Final seeding | Bronze seeding |
|---|---|---|---|---|
| 2 | — | — | automatic | — |
| 3 | — | manual (3 in trio) | automatic from trio | none (3rd of trio) |
| 4 | — | automatic (1v4, 2v3) | automatic | manual (semi losers) |
| 5 | — | automatic (after marking seed 5 cancelled) | automatic | manual (semi losers) |
| 6 | — | manual trios (1,5,6 / 2,3,4) | manual (trio winners) | manual (trio runners‑up) |
| 7 | manual (2v7, 3v6, 4v5; seed 1 bye) | manual (seed 1 + W4‑5; W2‑7 + W3‑6) | automatic | manual (semi losers) |
| 8 | automatic (1v8, 2v7, 3v6, 4v5) | automatic | automatic | manual (semi losers) |

---

## Operator checklist

For every battle round:

1. Build the round skeleton in the round editor before the battle starts (parent round + all child rounds for that size).
2. After the prior round has been judged and confirmed, click **Assign to match** on the round you want to seed. If the size is 2, 4, or 8 and you are seeding the winners' side, you are done.
3. Otherwise — and always for B‑Final, trios, byes, and the size‑5 elimination — go to the round‑results screen and set each team's *Match* dropdown to the correct child round.
4. After judging each layer (quarters → semis → Final + B‑Final), repeat for the next layer.

---

## Known limitations

These cases require careful manual placement today. Misclicks here are the most common source of bracket errors:

- **Bronze rounds for any size** — losers must be picked by hand and assigned to the B‑Final.
- **Trio seeding for sizes 3 and 6** — the (1, 5, 6) / (2, 3, 4) pattern is not obvious; double‑check before locking the round.
- **Bye for size 7** — seed 1 must be moved into the correct semifinal slot after the quarters are judged.
- **Size‑5 elimination** — seed 5 must be marked cancelled so the round only contains four competitors before automatic seeding will work.

If your federation runs battles often and these manual steps are a recurring source of errors, raise it with the platform team — each of the four cases above can be automated independently without affecting the rest of the system.
