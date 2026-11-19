---
layout: page
title: Promotion points
permalink: /federation/progression/
parent: Points and rankings
nav_order: 1
redirect_from:
  - /federation/class-transfer/
help:
  federation.division.progression: ""
  federation.progression.points-by-round: pay-by-the-round-a-dancer-reached
  federation.progression.recalculate: recalculate-points
---

# Promotion points

Promotion points (U-poäng) move competitors up a class ladder. Vote4Dance tracks them with one simple rule: **every competition entry carries the points earned at that competition** — whether the system computed them from judged results, they arrived in an imported result file, or an official typed them in. The federation side sums those values per class membership and promotes automatically at the class threshold.

A competitor is whoever enters a class together: a couple, a solo dancer, a duo or a group. Some screens and messages say *team* for the same thing.

## Where a value comes from

A competition entry's promotion points ("U-points") can be written three ways, and they all count the same:

1. **Computed** — when a judged round is confirmed, the system scores the class through the federation's points table: by place, by field size and, if your table says so, by the round each dancer reached. Revoking a round's confirmation retracts its points.
2. **Imported** — the "UP" / "Points" column of a result file. **This column means *points earned at this competition***, not the competitor's running total. The one exception is a competitor's very first appearance: see *Opening balances* below. Result files are imported per competition, in Manager, by whoever runs that competition. The federation console has no import of its own.
3. **Entered** — an official can edit the value on any entry in Manager, under **Promotion points** on the participant (see [Promotion points of one participant](/manager-guide/post-event/#promotion-points-of-one-participant)). The computed value wins again when results are confirmed again or the competition is closed again, and Manager does not save the field while the event is **Closed**. For a number that has to stay, correct the result's points on the federation side: see [Correct a result's points](/federation/class-point-limits/#correct-a-results-points).

## Everything happens at competition close

Closing a competition is the moment progression runs. For every entry in a federation-linked class, the system:

1. **Resolves the competitor** from the entry's person numbers — creating the competitor on first sight, reusing it forever after. The entry's club tag is resolved the same way: an unknown club is created (with placeholder details for the office to complete) and approved into the federation, and a couple is named after the file, club tag included: `Name & Name (TAG)`. Dancers who already have an account and no active dancer license receive a free bootstrap license at that club. The name is not updated by later files, so a club change needs a rename — see [Couples created by the result import](/federation/club-transfers/#couples-created-by-the-result-import). Accuracy in result files is critical: a typo in a person number creates a phantom second competitor with a split balance, and a typo in a club tag creates a duplicate club.
2. **Registers a class membership** — but only for competitors that received points (earned or carried-in). Competitors with nothing to record are not registered and do not appear in the class history; they are registered by whichever later competition first awards them points.
3. **Computes earned points** for judged classes (imported classes keep their entered values).
4. **Updates balances and applies promotions.** A competitor reaching the class threshold is moved to the target class immediately, with the reason recorded in their history.

Historical competitions are never processed automatically — progression starts counting from each competitor's first processed competition. To re-run progression for a competition (for example after importing results into an already-closed competition, or after a correction), set the competition's status to **closed** again.

## Opening balances

A competitor's first processed entry opens their balance:

- On an **imported** first entry, the value is taken as their carried-in total — old result files that print running totals therefore seed transitioning competitors correctly with no extra work.
- On a **judged** first entry, a pre-loaded value is preserved as their carried-in balance, and the entry itself ends up showing what they earned at that competition.
- The federation can also set a carried-in balance when it moves a competitor to another class: choose a **Carryover type** while editing the class membership (see [Manual moves and corrections](#manual-moves-and-corrections)). It is added on top of everything the competitor earns and survives recalculation.

**Correction rule for officials:** do not type a first-time competitor's earned points on the entry before the competition is closed. Before close, a value on a judged debut entry is read as their carried-in total, not as an earned override. Correct their points after closing, on the federation side: see [Correct a result's points](/federation/class-point-limits/#correct-a-results-points).

## Setting it up

Promotion points are a **federation rule**, so they are edited in the rule editor of the scope they should apply to. The usual place is the class level, because the points normally differ per level (a lower class awards fewer points than a higher one):

`Federation → Structure → (division) → Class Levels → Federation rules → (select the class level)`

The same rules can be set on the federation, a division, a discipline or a single federation class; the **Rulebook** lists the layers each rule accepts. A narrower scope replaces the wider one; the table is replaced as a whole, not merged row by row.

The rules involved:

- **Promotion points source** — **Points on the competition entry** for the model described on this page. The other sources remain available: **Summary score**, and **Placement achieved**, where the points are worked out from the placement again each time progress is synced.
- **Promotion points table** — the placement-to-points table. Each row has:
  - **Round** — *Any round*, *Final*, *Semifinal* or *Before the semifinal*. See [Pay by the round a dancer reached](#pay-by-the-round-a-dancer-reached).
  - **Final kind** — *Either final*, *Qualified for the final* (there was at least one earlier round) or *Direct final* (everyone in the class danced the final). Use it when the rulebook pays less for a direct final. The kind is derived from the class's rounds; it is not entered per competition.
  - **Min. jury marks** — only on *Semifinal* and *Before the semifinal* rows: the row pays only with at least this many jury marks in that round.
  - **From place / To place** — leave "to place" empty for no upper bound.
  - **Min entrants / Max entrants** — the field-size band; leave both empty for any field size.
  - **Points**.
  Rows are tried from the top and the first matching row wins, so put the specific rows (a direct-final variant, a small-field variant) above the general ones.
- **Promotion points reach** — *Finalists only* (default) or *All placed, including earlier rounds*. Choose the second when your rulebook pays by place alone, whichever round the place was earned in; give dancers out before the final a row for their places (for example places 7 and up). You don't need it for rows that name a round: those pay either way.
- **Awards promotion points** — turn it off on a **competition level** (`Structure → (division) → Competition Levels → Federation rules`) to make a whole tier of competitions, such as a championship, award nothing.
- **Opening rounds count as the start of a class** — off by default. See [When a class starts directly](#when-a-class-starts-directly).
- **Ladder** — each class that promotes needs **Advance By** set to **Points**, a **Target Class**, and a promotion threshold (the rule **Points to move up**) on its class level or federation rules. Leave the threshold unset if promotion is decided by hand.

Check the result on `Structure → (division) → Progression`: every class with where it promotes to, the threshold, where its points come from, and, per class, the resolved table with the scope it was inherited from and a small calculator ("place 1 of 8 starters → points"). The tab warns about configurations that would silently do nothing, such as a table without the matching source.

![The points table and the calculator on the Progression tab](/assets/images/promotion-points/points-table-preview.png)

### Check promotion by cause

At the top of **Progression**, a heading says how promotion stands in the division: **Promotion is set up in this division**, **Promotion is set up, but 3 classes need a look**, or **Promotion is not set up in this division**. Below it, the counters show how many classes there are, how many **Promote automatically**, how many are **Not set up** and how many **Need a look**.

**By cause** groups the classes that don't promote by what is missing, so you fix a whole group at once instead of class by class:

1. Read each cause and how far it reaches, for example **No “Promotes to” class** for *Standard, Latin, Tio-Dans and 1 more discipline · all class levels from A-klass to E-klass*, with the number of classes.
2. Click **Show** to list only those classes below, or **Show all classes** to list them all again.
3. Use the button on the cause to fix it: **Set up a ladder** or **Set “Promotes to”** opens the discipline's classes at the first class concerned, where you set the class it promotes to, and **Change at** (a competition level) opens that level's federation rules.

**Competition levels that give no points** lists the levels where **Awards promotion points** is turned off; results at their events give no points, whatever the class says.

If promotion happens outside Vote4Dance, **Promotion is not set up** is fine and there is nothing to do.

![Progression for a division where promotion is not set up, with the By cause list](/assets/images/federation-rules-editor/progression-by-cause.png)

### Promotion on the best results of a season

The promotion threshold (the rule **Points to move up**) compares the **sum of everything the competitor has earned since joining the class**. It has no best-N setting, and it does not start again with a new season.

**Results that count** is a different mechanism. It belongs to [Closing a class at points](/federation/class-point-limits/): it decides how many of a competitor's best results of the season add up to its season points, which close a class level, open or close an event and order the season ranking. It never changes the promotion threshold, and reaching a class limit does not move the class membership.

So a rulebook that promotes on the best N results of a season cannot be set as an automatic threshold. Leave the threshold unset and promote by hand:

1. Create a [ranking](/federation-rankings/federation-admin/) for the class with **Window mode** set to **Best results overall** and **Take best count** set to N, and keep it up to date.
2. On `Structure → (division) → Progression`, find **Promotion worklist**. Set **Ranking top** to the number of places that move up, and press **Generate worklist**.
3. The list shows each candidate with its class, the class it would move to and the reason: its place in the ranking, or its points against the threshold. The candidates are ticked to begin with, except those that only may move up. Untick the competitors that should stay.
4. Press the **Apply** button, which shows how many promotions it will make, and confirm. Each promotion is written to the class history and the enforcement log.

The worklist only lists competitors with an active class membership that is not locked, in classes that have a **Target Class**, and it reads rankings that are **Active**. It needs the **Administrator** role. Nothing is changed until you apply.

The worklist is the only way a ranking promotes anyone. Setting a class's **Advance By** to **Ranking** does not: nothing promotes its competitors automatically, and the worklist lists the same candidates whatever **Advance By** says.

You can also promote one competitor at a time: see [Manual moves and corrections](#manual-moves-and-corrections).

## A team that already holds a higher class

When **Membership policy** is **Required**, a competitor needs a class membership to enter a class. A competitor without one can still register for the bottom class of a ladder, and it is placed in that class when it registers. Higher classes stay closed until the federation places the competitor there or its points allow it to move up.

A competitor that already holds a class higher up the same ladder can't enter a lower class. Registering for the bottom class is refused with "This team already dances in a higher class, so it cannot enter this lower class." Many rulebooks say this: a couple that has danced A or B may not start in a lower class. It is not placed in the bottom class as well, so it never holds two classes in one ladder.

The ladder is the chain of **Target Class** settings, so this works as long as each class points to the next one up. If a competitor really should dance a lower class, for example after a long break, move it on `Members → Competitors` first (see [Manual moves and corrections](#manual-moves-and-corrections)).

## Pay by the round a dancer reached

Some rulebooks pay for reaching a round, whatever the place. A semifinalist may earn 5 points, while a finalist on the same place earns what the final pays. A place alone can't tell those two dancers apart, so name the round on the row.

1. Open `Structure → (division) → Class Levels → Federation rules` and select the class level.
2. In **Promotion points table**, set **Round** to *Final* on the rows that pay by place in the final.
3. Press **Add a points row** and set **Round** to *Semifinal*. The places empty themselves: this row pays everyone who went out in that round, whatever their place.
4. Fill in **Points** and, if the rulebook asks for it, **Min. jury marks**.
5. Press **Save rules**, then check a few results with the calculator on the **Progression** tab.

![Two semifinal rows in the points table](/assets/images/promotion-points/points-table-semifinal.png)

Vote4Dance works out the rounds from how the class was actually danced, not from what a round is called:

- **Final** is the last round of the class. A final danced in two parts counts as one final.
- **Semifinal** is the last round before the final where dancers were eliminated, whatever its name.
- **Before the semifinal** is every round before that.
- A redance or hope round belongs to the round that sent dancers to it.

A dancer who matches no row gets 0 points. So if quarterfinalists earn nothing, simply leave out a row for them. As always, rows are tried from the top and the first matching row wins.

### When a class starts directly

Some rulebooks treat a class differently if it starts at that round. On a *Semifinal* or *Before the semifinal* row, the second dropdown says which case the row pays:

- **After an earlier round** — dancers were already eliminated in an earlier round.
- **Class started at this round** — nobody was eliminated before this round.
- **However it started** — both.

For example, to pay 5 points to every semifinalist, but only with at least 1 jury mark when the class started at the semifinal, use these two rows:

| Round | How it was reached | Min. jury marks | Points |
|---|---|---|---|
| Semifinal | After an earlier round | | 5 |
| Semifinal | Class started at this round | 1 | 5 |

A round where nobody is eliminated and nobody is judged, such as a presentation or a General Look, doesn't normally count as the start. A semifinal after a presentation is still "Class started at this round", and a final after a General Look is still a *Direct final*.

If your rulebook says otherwise, turn on **Opening rounds count as the start of a class**. You can set it per class level, so a General Look and a presentation can be treated differently when each is used at its own level. A final or semifinal after such a round then counts as reached through an earlier round.

## A points table for one level of competition

A championship can pay differently from the qualifiers, even when it uses the same classes. Give it a competition level with its own table.

1. Open `Structure → (division) → Competition Levels` and add a level for the championship, if you don't have one yet.
2. Open **Federation rules**, select the level, and fill in **Promotion points table** the same way as above. For example: *Final* rows paying 30, 29, 28 and so on, a *Semifinal* row and a *Before the semifinal* row paying 15 each.
3. Press **Save rules**.
4. Set this competition level on each event it applies to.

At events on that level, this table replaces the class tables for every class in the event, including classes that have no class level of their own. The **Progression** tab tells you which levels have their own table. Competition levels belong to a division, so each division needs its own.

## Recalculate points

Saving a table changes points for new results only. To bring results that are already in line with the tables you saved, recalculate the season.

1. Open `Structure → (division) → Season points` and choose the **Season**.
2. Press **Recalculate points**. Nothing changes yet: you see, per event, how many results would change and the points before and after.
3. Check the list. If it looks wrong, press **Close** and fix the table first.
4. Press the **Recalculate** button, which shows how many results will change. The Season points page follows by itself.

![The list of events before you recalculate](/assets/images/promotion-points/recalculate-preview.png)

Good to know:

- **Corrected results stay as they are.** The **Corrected results kept** column counts the results where the table would give something else.
- **Only events that count on Season points are included.** Private and practice events are left out, and so are other seasons and divisions.
- **Removing a table doesn't take points back.** A class left with no table at all isn't touched, because its points may have been entered by hand. Correct those results by hand if needed.
- **Nobody moves class because of a recalculation.** Existing balances are updated, but promotions wait for the next competition to close, and no new class memberships are created.

Only federation administrators can recalculate.

## Manual moves and corrections

Class moves are mostly automatic: you set the rules once, and Vote4Dance applies them each time an organizer closes a competition. You step in for exceptions, on `Federation → Members → Competitors`. Editing memberships needs the **Manager** role; **Sync federation progress** needs **Administrator**.

| Task | How |
|---|---|
| Promote, demote or move a competitor | **Edit** the membership, change the class, choose a **Carryover type**, and write a **Reason**. |
| Keep automation away from one membership | Tick **Lock automatic transitions**. |
| Set a competitor's starting balance in a new class | While you **Edit** the membership and change the class, choose **Set points manually** under **Carryover type** and type the number. There is no button for changing the balance of a competitor that stays in its class: correct the points of its results instead ([Correct a result's points](/federation/class-point-limits/#correct-a-results-points)), or [write to Vote4Dance](/getting-help/#writing-to-vote4dance). |
| Promote several competitors from a ranking or over the threshold | **Promotion worklist** on `Structure → (division) → Progression`. See [Promotion on the best results of a season](#promotion-on-the-best-results-of-a-season). |
| Recalculate everyone | **Sync federation progress**. |

Every change is written to **History** with its reason. Write reasons someone can understand next year: what changed, why, and who approved it.

## Where to see points

- **Members → Competitors** ([Competitors tab](/federation/members/#competitors)) — the roster: filter by class for every member with status and current points, or type a competitor's name in the search field to find them across all classes.
- **Competitor profile** — click any competitor in **Members → History** ([History tab](/federation/members/#history)) to open their page: classes with current points, membership details, and their full class history.
- **Manager participants list** — a points column appears automatically in any class where entries carry points, and a green rise icon marks competitors whose result takes them past the threshold (with the target class in the tooltip).
- **Public results** — a class's results show its points table under **Promotion points**, including what a semifinal pays, so dancers can see how it works.
- **Speaker (prize ceremony)** — the placement reveal shows a "moving up" badge for competitors whose result earns the promotion, switching to past tense once the promotion is applied.

![Promotion points in a class's public results](/assets/images/promotion-points/public-points-panel.png)

## What gets logged

The [Enforcement log](/federation/members/#enforcement-log) records decisions with consequences: promotions applied, promotions earned but blocked by a disabled auto-promotion rule, carried-in balances set, registrations blocked. Being below a threshold is a normal state, not an event, and is never logged.

## Common problems

| Problem | Fix |
|---|---|
| A competitor should have moved, but has not | Check the competition is closed. Then check the class's ladder on **Progression**, and the **Enforcement log** for `promotion` entries. |
| A couple's points are split over two competitors | A wrong person number on an entry. Have the organizer correct it and close the competition again, so the points are counted for the real couple. Then **Edit** the duplicate's membership and set its **Status** to **retired**. If the real couple's points are still wrong, [write to Vote4Dance](/getting-help/#writing-to-vote4dance). |
| Clubs dispute a move | The **History** tab on **Members** shows what changed, when and why. |
