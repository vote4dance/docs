---
layout: page
title: Federation Admin
permalink: /federation-rankings/federation-admin/
parent: Federation Rankings
nav_order: 1
redirect_from:
  - /federation/creating-and-getting-a-ranking/
---

# Federation Admin

A ranking is a list your federation publishes, for example "Season ranking, Adults Standard". It is built from competition results, using a formula you set per ranking. This page shows how to create a ranking, add its classes, set how it is scored, recalculate it, make it public and correct it.

Rankings are in the division's **Ranking** section: `Federation → Structure → (division) → Ranking`. Adding, changing, recalculating and correcting a ranking need the **Administrator** role.

## Before you start

Make sure these are already correct:

- the federation has the right divisions
- the federation classes already exist in the correct division (see [Divisions and disciplines](/federation/divisions/#classes))
- you know which division the ranking belongs to

A ranking belongs to one division and cannot span several. For a list that covers the whole federation, create one ranking per division.

## Set up a ranking

1. Open `Federation → Structure`, choose the division in the menu on the left and open **Ranking**.
2. Press **Add** under the list. In a division with no rankings yet, the button is in the middle of the page. **Ranking details** opens.
3. Under **Basics**, type the **Name** and choose the **State**, **Privacy** and **Purpose**. See [Set the scoring and the time window](#set-the-scoring-and-the-time-window) for every field.
4. Fill in **Time window**, **Thresholds** and **Scoring**.
5. Press **Save changes**. The ranking is added to the list.
6. Click the ranking's row to open it, and choose the classes that count in the class field. See [Add the classes](#add-the-classes).
7. Press **Import** on the row, then **Import** in the dialog. The standings are calculated and shown. Check them against a competition you know, then press **Close**.

A new ranking starts as **Active** and **Public**, looks 365 days back, ranks by **Placement** and is not updated daily. If **Rankings** is already turned on for your public page, it is listed there as soon as you save it. Choose the state **Draft** in step 3 to keep it off the list until you have checked it.

To change a ranking later, press **Edit** on its row. **Delete** in the same dialog removes the ranking after you confirm. Drag the rows to change the order of the list; the public page lists the rankings in the same order.

### The ranking's row

Each ranking is one row in the list:

| Part | What it shows |
|---|---|
| Name | The ranking's name. It is a link to the ranking's public page. |
| State tag | **Draft**, **Active** or **Retired** |
| **Update daily** | Shown when the ranking is recalculated every night |
| **Coach** | Shown when **Privacy** is **Coach** |
| **Calculated** | When the standings were last calculated |
| Under the name | The description, the ranking time, and the **Recommended limit** when one is set |
| Download button | Saves the standings as a CSV file: **Position**, **Competitor**, **Score**, **Competitions**, **Counted results** and **Counted competitions** |
| **Import** | Recalculates the ranking now. See [Recalculate a ranking](#recalculate-a-ranking). |
| **Edit** | Opens **Ranking details** |

Click the row to open it. An open row shows **Open rule review** (the Rulebook) and **Open enforcement log**, the ranking's leagues when it has any, its classes, and its corrections.

## Add the classes

A ranking only counts results from the federation classes you add to it.

1. Click the ranking's row to open it.
2. Click in the class field and choose the classes. Type to search. Each class you choose or remove is saved at once.

Only the classes of the ranking's own division are offered. Add every class that should count, and none that serve another purpose. If the class list is wrong, the standings are wrong even though the ranking exists.

While a ranking has no class, the row says **No classes assigned**: "This ranking will not calculate results until at least one class is added."

## Set the scoring and the time window

**Ranking details** decides how the standings are calculated. It has five parts.

### Basics

- **Name** and **Description**.
- **State**: **Draft**, **Active** or **Retired**. Only an **Active** ranking is listed on the public page.
- **Privacy**: **Public** or **Coach**. See [Who can see a ranking](#who-can-see-a-ranking).
- **Purpose**: **Public ranking**, **Selection ranking**, **Progression ranking** or **Championship invitation**. Everything except **Public ranking** is limited to the **current season** automatically.

### Time window

- **Ranking time**: how far back the ranking looks. **Calendar date** takes a **Start date** and an **End date**. **Number of days back** takes a **Number of days**, 365 to begin with. **No date limit** looks at every result.
- **Window mode**: which of those results are counted:
  - **Use ranking time type**: the results in the ranking time. With a **Best count**, only that many of the best.
  - **Best of latest results**: the N most recent events (**Take latest count**), counting the best M of them (**Take best count**).
  - **Best results overall**: the best M results in the window (**Take best count**).
  - **Accumulate full season**: every result in the window is added up. Best-N does **not** apply in this mode. Choose a purpose other than **Public ranking** to limit it to the season.
- **Season start (MM-DD)**: the first day of the season for this ranking, for example `08-01` for 1 August. The season ends the day before the next start. The field is only shown when **Window mode** is **Accumulate full season**. Without it, the season is the calendar year.

A box, **Current window summary**, repeats what you chose in words, for example "Configured to keep the best 3 results from the full set."

### Thresholds

- **Minimum count** and **Minimum counted events**: a competitor needs at least this many counted competitions to get a position. When both are filled in, **Minimum counted events** is used.
- **Best count**: how many of the best results count when **Window mode** is **Use ranking time type**.
- **Last competitions**: only this many of the most recent competitions in the window are looked at.
- **Take best count** and **Take latest count**: the M and N above. They are shown only for the two "best" modes.

### Scoring

- **Recommended limit**: a number shown on the ranking's row. It does not change the standings.
- **Update daily**: **Enable** recalculates the ranking every night at 03:00.
- **Assign position**: with **Disabled**, the list is ordered but nobody gets a position number.
- **Ranking by**: **Placement** (the placements are added up, and the lowest total is first), **Summary** (the judges' score), **Points** or **Head-to-head** (each pair of competitors is compared on the latest event they both danced).
- **Ranking Points**: shown when **Ranking by** is **Points**. Press **Add** for each row and fill in the first place (**Min**), the last place (**Max**) and the points. Leave **Min** or **Max** empty for no limit on that side. This table belongs to the ranking, not to the class, so if two class levels award different points they need two rankings.

Competitors with the same total share a position, and the next position is skipped: 1, 1, 3. The dialog has no tie-break setting.

### Advanced

- **Ranking league**: **Disabled**, or **Divided by percent** to split the ranking into leagues.
- **Normalization**: **None**, **Average shared placements**, **Split points** or **Custom**. It adjusts how shared placements or tied points are counted before the ranking is calculated.

### Example

A season ranking on the best three results, with points per placement, is **Purpose**: **Selection ranking**, **Window mode**: **Best results overall**, **Take best count**: 3, **Ranking by**: **Points**, with the **Ranking Points** table filled in.

### Ranking points are not promotion points

Ranking points are separate from [promotion points](/federation/progression/). Promotion points are earned per competition entry, follow the class level's table and move competitors up a class. Ranking points are worked out again from the placements each time the ranking is calculated, and only produce the standings. A federation whose rulebook uses one points scale for both sets up both: the promotion points table on the class levels, and the same scale in each ranking's **Ranking Points** table.

## One formula per ranking

A ranking has one formula, and its public page shows that result. It cannot show one order to the public and another for selection, and one ranking cannot break ties from another ranking.

- If your federation needs a second list every season, such as a selection ranking with its own formula, create a second ranking.
- If one published outcome must differ in a single case, use a correction or follow [Manual Workflows](/federation-rankings/manual-workflows/).

## Recalculate a ranking

A ranking does not change by itself when a competition ends. It is calculated:

- **every night at 03:00**, when **Update daily** is on and the ranking is **Active** or **Draft**
- **when you press Import** on the ranking's row and then **Import** in the dialog. The dialog then lists the standings under **Imported**, with any results that were **Skipped** and the number of competitors that were **Removed** from the ranking.

A recalculation also brings the promotion points of the ranking's classes up to date and applies the promotions that are due, as **Sync federation progress** does on [Members](/federation/members/#sync-federation-progress).

Those promotions are the ones on points: classes whose **Advance By** is **Points**, for competitors that have reached the threshold. A place in the ranking moves nobody by itself. Setting a class's **Advance By** to **Ranking** does nothing automatically: no recalculation, competition close or **Sync federation progress** promotes its competitors, and although the **Progression** tab shows the class's **Progression ranking threshold** as "Top *n*", no screen applies it. To promote from a ranking, generate the **Promotion worklist** and apply it yourself: see [Promotion on the best results of a season](/federation/progression/#promotion-on-the-best-results-of-a-season).

A competition counts when:

- it is linked to your federation, and is published, closed or archived (see [Competitions](/federation/competitions/#rankings-and-rules))
- its date is in the ranking's time window
- its class is linked to one of the ranking's federation classes

Two rules, set in the [federation rules](/federation-rules/editor/), also decide whose results count:

- **Ranking needs a license**: with **Required**, a result counts only when every dancer of the competitor holds a valid license. A result that is left out is written to the [Enforcement log](/federation/members/#enforcement-log).
- **Team points when a dancer changes**: decides whether a competitor keeps its earlier results when a partner or another dancer changes.

## Make it public

1. Press **Edit** on the ranking, set **State** to **Active** and **Privacy** to **Public**, and press **Save changes**.
2. Turn on **Rankings** under `Federation → Settings → Public page`. A new federation has every public section off. See [Federation settings](/federation/settings/#public-page).
3. Click the ranking's name on its row. Its public page opens, so you can check what dancers will see. See [Public Rankings](/federation-rankings/public/).

Repeat the setup in the next division if the same list is needed there.

### Who can see a ranking

| **Privacy** | On the website | In the phone app |
|---|---|---|
| **Public** | Listed under **Rankings** on the federation's public page when its **State** is **Active**. Anyone can open it, without signing in. | The app has no list of rankings. A dancer's profile can show the dancer's place in a **Public** ranking under **Ranking and progression**. |
| **Coach** | Left off the list under **Rankings**. The ranking's own address still opens for anyone who has it, without signing in. | The place is not shown on the dancer's profile. |

**Coach** only takes a ranking off the public list. It is not tied to a role: coaches, club administrators and dancers get no list of **Coach** rankings, and nobody has to sign in to open one from its address. In the Federation app, the division's **Ranking** section lists every ranking, whatever its **Privacy**.

## Corrections and exceptions

A correction changes one competitor's result in one ranking. Use it for cases such as:

- adding or removing points
- leaving a competitor out of the published list
- an administrative adjustment the committee has decided

A correction never changes the competition's own results.

### Add a correction

1. Open `Federation → Structure → (division) → Ranking` and click the ranking's row. Check that it is the right ranking in the right division: a correction applies to this ranking only.
2. Under the corrections table, write why the correction is needed. A description is required: say what was decided, and who approved it.
3. In the search box below it, type at least three characters of the competitor's name and choose the competitor. The correction is added to the table with today's date.
4. Set the **Action**:
   - **Override value** adds the number under **Set value** to the competitor's results, as one more result dated on the correction's **Date**. It is counted like a result from a competition, so in a ranking that counts the best results it only counts when it is among them.
   - **Exclude from ranking** leaves the competitor out of this ranking.
5. Set the **Date** and the **Set value**. After typing a value or a description, press the save button beside the field, or Enter.
6. Press **Import** on the ranking's row to recalculate it.

To remove a correction, press the delete button on its row and confirm, then press **Import** again.

An **Override value** correction is dated, and it counts only while its date is inside the ranking's time
window, like a result danced on that date. Once the date falls outside the window, the correction
drops out of the ranking on the next run. An **Exclude from ranking** correction has no such limit.

### After an age move

Do not use corrections to move a competitor's results after an age move. When a competitor moves
up or down an age group, through the age-up batch or by editing a class membership into another
age group, the ranking drops the results danced in the old class from the old ranking and
carries them into the new age group's ranking. The share carried is set by the rules **Ranking
kept when moving up an age group** and **Ranking kept when moving down an age group**. Carried
results keep their dates, so they leave the window like any other result. With neither rule set,
the rankings ignore the move.
See [Age moves](/federation/age-moves/).

### When a correction is not enough

When the list you publish must differ from the calculated one, such as a selection decision, an approved exception after a partner change or a tie the committee has decided, follow [Manual Workflows](/federation-rankings/manual-workflows/).

## Common problems

### A competition is missing from the ranking

The competition is still hidden, its classes are not linked to the ranking's federation classes, its date is outside the ranking's time window, or the ranking has not recalculated. Press **Import**.

### A competitor is left out

Check the [Enforcement log](/federation/members/#enforcement-log) for a `ranking` entry. A missing ranking license is a common reason: the rule **Ranking needs a license** is **Required** for the class, and a dancer has no valid license.

A competitor with fewer counted competitions than **Minimum count** is listed without a position.

### The ranking is not on the public page

The ranking is not **Active**, its **Privacy** is not **Public**, or **Rankings** is off under **Public page**.

### I expected one ranking to span several divisions

A ranking belongs to one division. Create one ranking per division.

### I expected one ranking to calculate public and selection results differently

One ranking has one formula. Create a second ranking for the selection list, or publish a separate selection decision. See [Manual Workflows](/federation-rankings/manual-workflows/).

### I expected another ranking to act as a tie-break source

A ranking cannot read another ranking. Tied competitors share a position. For a tie your committee has decided, see [Manual tie resolution](/federation-rankings/manual-workflows/#3-manual-tie-resolution).

### A correction affected the wrong ranking

Corrections belong to one ranking in one division. Delete the correction, add it on the right ranking, and press **Import** on both.

## Related pages

- [Federation Rankings](/federation-rankings/)
- [Manual Workflows](/federation-rankings/manual-workflows/)
- [Public Rankings](/federation-rankings/public/)
- [Points and rankings](/federation/points-and-rankings/): how rankings differ from promotion points and season points
- [Age moves](/federation/age-moves/)
- [Federation staff roles](/federation/staff-roles/)
