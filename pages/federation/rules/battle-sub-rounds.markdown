---
layout: page
title: Battle sub-rounds
permalink: /federation-rules/battle-sub-rounds/
parent: Federation Rules
nav_order: 10
---

# Battle sub-rounds

For federation administrators. Set up dances and the round setup so that the **Round guide** in Manager creates battles that are themselves split into rounds: a semifinal whose battles run in two rounds plus a tie-break, and a final made up of a gold battle and a bronze battle, each danced in three rounds.

> **Prerequisite:** read [Battle round setup](/federation-rules/battle-class-rules/) first for how the rounds of a battle class (placing round, quarterfinal, semifinal, final) are produced. This page only covers what hangs *under* a battle. The conditions, actions and settings a rule can use are listed in [Round setup conditions, actions and settings](/federation-rules/round-setup-settings/).

---

## The thinking behind sub-rounds

### Why a battle needs rounds of its own

In many rulebooks a battle is not decided by one exchange. The two dancers go
back and forth over two rounds, with a tie-break if the judges are split; a
final may settle bronze and gold in separate battles, each over three rounds.
Those rounds have to exist in the competition so judges can score each one and
the screens and speaker can follow them.

### Three levels, built from two tools

Think of a battle class as three levels:

```
Semifinal                 ← the stage       made by the round setup
└─ Battle 1/2             ← who faces whom  made by the battle dance
   ├─ Runda 1/2           ← what is danced  made by the dances inside it
   ├─ Runda 2/2
   └─ (Tie-Break)
```

- **The round setup** makes the top level, the same way as everywhere else: the
  ladder or the bracket gives the stages, and a rule for one round, such as the
  semifinal, picks one out.
- **Dances** make everything below it. A dance on its own is one thing that is
  danced. Give a dance **dances of its own** and it becomes a container: a
  battle made of rounds.

### Build from the bottom up

Because a container points at its contents, the contents must exist first. So
the order is always the same:

1. Create the smallest pieces: the rounds inside a battle.
2. Create the battle dance that lists them.
3. Put the battle dance on a stage with a rule.

Both setups below follow those three steps.

---

## How the generator builds depth

The round setup and the dances are set per discipline, under **Structure** → (division) → **Disciplines** → (discipline), in the **Round setup** and **Dances** sections. When a competition creates the rounds of a class with the Round guide, the tree is built like this:

- The **Round sizes** and **Round name(s)** of the base rule (the rule for **Every round**) give the stages: for example the sizes 2, 4, 8, 200 with the names Final, Semifinal, Kvartsfinal, Uttagning. Names count from the end: the first name is the last round.
- A rule for **Semi-final (2nd from the end)** hits the semifinal however many rounds the class gets. With **Action** **Modify** it changes that round; with **Add After** it creates an extra round beside it.
- **Dances** on a rule become sub-rounds of the round. With **Round type** **Battle** on the same rule, each dance instead becomes one battle per pair; [X] in the dance's name is replaced by the battle number and [N] by the number of battles.
- A dance can carry **Dances** of its own. They become sub-rounds of every round that dance creates. This is what produces the third level.

### Add a dance

1. Open the discipline's **Dances** section and click **Add dance**.
2. Type the dance's **Name**. It is the name of the sub-round in the competition.
3. Add the dance's settings with **Another change**. They are the same settings as under **Change** in a round setup rule, **Dances** included. A dance cannot list itself.
4. Click **Save changes**.

To change a dance later, click **Edit dance** on its row.

---

## Setup 1 — Semifinal battles in two rounds with a tie-break

**The rulebook says:** a semifinal battle is danced twice, and a third round
breaks a tie.

Every battle in the semifinal is danced in two rounds, with a tie-break in reserve:

```
Semifinal (Top 4)          4 → 2
├─ Battle 1/2              2 → 1
│  ├─ Runda 1/2
│  ├─ Runda 2/2
│  └─ (Tie-Break)
└─ Battle 2/2              2 → 1
   ├─ Runda 1/2
   ├─ Runda 2/2
   └─ (Tie-Break)
Final                      2
```

### Step 1 — Dances

Create the three sub-rounds first, then the battle dance that points at them. The names of the three are the round names shown in the competition.

| Dance (**Name**) | Its settings |
|---|---|
| Runda 1/2 | **Music length** and **Judging type** as needed |
| Runda 2/2 | The same as Runda 1/2 |
| (Tie-Break) | The same, typically with a shorter **Music length** |
| Battle [X]/[N] | **Max on floor** 2; **Judging type** a match judging type; **Dances** Runda 1/2, Runda 2/2, (Tie-Break) |

### Step 2 — Rule for the semifinal

In the discipline's **Round setup** section, add a rule ([The rule editor](/federation-rules/round-setup-rules/#the-rule-editor)):

| When | Action | Change |
|---|---|---|
| **The semi-final, quarter-final or another round counted from the final** → **Semi-final (2nd from the end)** | **Modify** | **Round type** **Battle**; **Dances** Battle [X]/[N] |

In brackets mode, also tick **between** … **and** … **competitors** under **And only when the class has** and enter 4 as the lower end: a class of 3 dances a trio as its semifinal, which is not split into pairs.

To do the same in the quarterfinal, copy the rule with **Quarter-final (3rd from the end)** and limit it to the class sizes that have a quarterfinal, because in a smaller class the 3rd round from the end is the placing round. In brackets mode that is 8 or more competitors, or 7 or more when seven dance a quarterfinal with a bye. With eight competitors the rule gives Battle 1/4 … 4/4, each with its own rounds.

---

## Setup 2 — Final with a bronze battle and a gold battle

**The rulebook says:** the final four dance two battles, 3rd and 4th for
bronze and 1st and 2nd for gold, each over three rounds.

The difference from Setup 1 is that the final is now one stage holding *two*
different battles. The final holds four dancers, the semifinal sends all four
on, and the two battles are named dances rather than one numbered battle dance.

**Use brackets mode with the setting Bracket: final with gold and bronze battle.** It is the way the app builds this final by itself, and the one to choose for every discipline in [brackets mode](/federation-rules/battle-class-rules/#brackets-mode): the semifinal keeps its two battles and sends all four dancers on, the final holds the gold battle first and the bronze battle second, and the bronze battle awards places 3–4 without any further setting. Manager places the four dancers 1–4 from the two battles. Two other ways exist for disciplines that are not in brackets mode, or whose bronze battle is a round of its own; see [Other ways to build this final](#other-ways-to-build-this-final).

The tree the Round guide produces:

```
Semifinal                  4 → 4
├─ Battle 1
└─ Battle 2
Final                      4
├─ Guldbattle              places 1–2
│  ├─ Runda 1/3
│  ├─ Runda 2/3
│  └─ Runda 3/3
└─ Bronsbattle             places 3–4
   ├─ Runda 1/3
   ├─ Runda 2/3
   └─ Runda 3/3
```

### Step 1 — Dances

| Dance (**Name**) | Its settings |
|---|---|
| Runda 1/3 | **Music length** and **Judging type** as needed |
| Runda 2/3 | The same as Runda 1/3 |
| Runda 3/3 | The same as Runda 1/3 |
| Guldbattle | **Dances** Runda 1/3, Runda 2/3, Runda 3/3 |
| Bronsbattle | **Dances** Runda 1/3, Runda 2/3, Runda 3/3 |

You do not set a **Round position** on the bronze battle: the second battle of the final awards places 3–4 by itself, and the first awards 1–2.

### Step 2 — Base rule

On the discipline's bracket rule, the rule with **Round type** **Brackets**, or on a rule of its own, add the setting ([Bracket settings](/federation-rules/battle-class-rules/#bracket-settings)):

| When | Action | Change |
|---|---|---|
| **Every round** | **Modify** | **Bracket: final with gold and bronze battle** **Enable** |

The setting applies to every class whose semifinal holds four: classes of 4 and 5, and of 7 or more. A class of six whose semifinal is danced by all six keeps a final of two. To give six competitors the gold and bronze final too, also turn on **Bracket: top 4 from the placing round at 6 and 7**.

Without steps 1 and 3 the setting already gives the final two battles, named Battle 1 (gold) and Battle 2 (bronze).

### Step 3 — Rule for the final

| When | Action | Change |
|---|---|---|
| **The final**; **And only when the class has** **between** 4 **and** (empty) **competitors** | **Modify** | **Dances** Guldbattle, Bronsbattle |

Pick the gold battle first: the first dance listed becomes the gold battle and the second the bronze battle.

The rule is limited to 4 or more competitors because a smaller class has a final of two or three. If six competitors keep a final of two in your rules (see step 2), leave 6 out as well, with one rule for 4 to 5 competitors and one for 7 and more. To dance the final of a class of 2 over three rounds as well, add a rule for **The final** with **between** 2 **and** 2 **competitors** and **Dances** Guldbattle.

### Other ways to build this final

**A ladder that ends in a final of four.** Use this when the discipline is not in brackets mode and its rounds come from a ladder you write yourself. The final has to hold four competitors, so the smallest round size is 4 instead of 2:

1. Create the dances of step 1, and give Bronsbattle a **Round position** of 3 as well, so it awards places 3–4; the gold battle awards 1–2. Do not set **Max on floor** on the bronze and gold battles: they take the final's four competitors and would otherwise be split into two heats.
2. Set the ladder on the base rule:

   | When | Action | Change |
   |---|---|---|
   | **Every round** | **Modify** | **Rounds** with the sizes 4, 8, 16, 200 and the names Final, Semifinal, Kvartsfinal, Uttagning; **Judging type** a placement judging type |

3. Add the rule for the final:

   | When | Action | Change |
   |---|---|---|
   | **The final** | **Modify** | **Dances** Bronsbattle, Guldbattle |

**A bronze battle as a round of its own.** Use this when your rulebook treats the bronze battle as a round of its own beside the semifinal, the way a B‑final is, and the final stays a battle of two. The final (size 2) gets the name Guldbattle in the base rule's round names, and the bronze battle is added by a rule:

| When | Action | Change |
|---|---|---|
| **Semi-final (2nd from the end)** | **Add After** | **Round name(s)** Bronsbattle; **Num to advance** 0 (**Count**); **Round position** 3; **Dances** Runda 1/3, Runda 2/3, Runda 3/3 |

The round position makes the bronze battle award places 3–4. This is the same rule as [the B‑final add rule](/federation-rules/battle-class-rules/#the-bfinal-add-rule). Outside brackets mode the Round guide also sets the semifinal's **Round for non-qualified participants** to the added round. The added round gets its rounds from **Dances** only outside brackets mode: in brackets mode a round added this way is one battle without rounds of its own, so for a bronze battle in several rounds use the bracket setting above.

---

## Validating your setup

1. Open the **By class** tab of the **Round setup** section, pick a battle class and try 4, 6 and 8 competitors: it shows the rounds the class gets at each size ([Check a class](/federation-rules/round-setup-checks/#check-a-class)).
2. To see the battles and their rounds, open the **Round guide** for a class in a test competition, enter the **Number of Participants** and click **Preview**. Sub-rounds are shown as tags on their round, and a battle with rounds of its own lists them in parentheses, such as "Battle 1/2 (Runda 1/2, Runda 2/2, (Tie-Break))". The tree should look like the ones above at all three sizes.
3. In Manager, create the rounds with the Round guide before any competitors are added; it refuses otherwise.
4. For the final with a gold and a bronze battle, run the semifinal in the test competition. Confirming the semifinal sends all four dancers on to the final, but it does not put them in the two battles. The organizer does that on the final's page, and the final cannot be started while a dancer is in neither battle.
   - In Scrutineer (Beta), press **Place in battles**. With the battles named as in Setup 2, **Seeded** proposes the two semifinal winners for Guldbattle and the two losers for Bronsbattle. Check the proposal, then press **Place in battles** in the dialog to save.
   - In the classic Manager, set each dancer's **Match** in the final's list of participants, the two winners to the gold battle and the two losers to the bronze battle, and click **Send participants to match**. **Assign from round** does not tell winners from losers for this final, so do not rely on it here.

   See [Battle bracket](/battle-bracket/) for both tools.
5. Rules apply per discipline and can be narrowed to categories, class levels and age groups under **Applies to**. If the discipline already has a battle rule for the semifinal, edit that one instead of adding another.
6. A dance that lists itself through another dance is cut off at the repeat: a dance is never nested under itself.
