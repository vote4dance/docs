---
layout: page
title: Entry rules and the season ranking
permalink: /federation/season-ranking/
parent: Points and rankings
nav_order: 3
---

# Entry rules and the season ranking

A federation can decide who may enter an event by the competitor's points this season and by how many competitions it has danced, and it can publish a season ranking per age group. This page shows how to set the rules, what dancers and event staff see, and how the ranking looks on **Season points** and on the public site.

Nothing changes until you set a rule. A federation that sets none of them sees no difference.

A competitor is whoever enters a class together: a couple, a solo dancer, a duo or a group. **Season points**, the rules and the messages dancers get say *team* for the same thing.

It builds on [Closing a class at points](/federation/class-point-limits/), which explains how a competitor's points are counted and how a class level closes for a competitor. Where the points come from is on [Promotion points](/federation/progression/).

## Who may enter an event

These rules are set on a **competition level**, so they apply whenever a competition runs at that level, for example a championship.

1. Go to **Structure**, choose the division and open **Competition Levels**.
2. Open the **Federation rules** tab and pick the competition level.
3. Fill in the rules you need:
   - **Points needed to enter**: for each class level, **At least** and **At most**. A competitor with exactly that number can enter. A class level left empty has no range. "At least" cannot be higher than "At most".
   - **Winners who may enter anyway**: choose a **Competition level** and a **Class level**. A competitor that placed 1st at that competition level, in that class level, earlier this season in the same discipline and category may enter with too few points. It lifts only the minimum: it does not lift the upper limit or the number of competitions.
   - **Competitions danced before entering**: how many earlier competitions this season, in the same discipline and category, a competitor must have danced. Leave it empty for no minimum.
4. Press **Save rules**.

![Points needed to enter and Winners who may enter anyway on a competition level](/assets/images/season-ranking/entry-rules.png)

The results of the event itself never count towards its own entry rules.

### What dancers and event staff see

A competitor that does not meet a rule cannot add the class, and the reason says why:

- "This team has 10 points this season. This event takes teams with at least 15 points in this class."
- "This team has 18 points this season. This event takes teams with at most 14 points in this class."
- "Competitions danced in this category this season: 1. This event requires at least 2."

![A class that needs more points than the competitor has](/assets/images/season-ranking/entry-locked.png)

Event staff get a warning instead of being stopped and may still add or move the competitor. Entries made before a competitor's points changed stay, and show under **Entries to check** on **Season points**, with the reason, for example "Too few points for this event: 10, at least 15".

The rule counts how many competitions a competitor has danced. It does not check who was invited to a championship, so a selection by invitation list stays with the federation. The ranking and its CSV help you pick the competitors.

### Licenses that don't count at a level

Some licenses are meant for smaller events only. A single-competition license, for example, may be fine at a regional competition but not at a championship. A competition level can say which licenses don't count at its events.

1. Go to **Structure**, choose the division and open **Competition Levels**.
2. Open the **Federation rules** tab and choose the competition level.
3. Under **Licenses not valid at this level**, choose the licenses. The list offers the federation's active dancer licenses.
4. Press **Save rules**.

![Licenses not valid at this level, with a single-competition license chosen](/assets/images/season-ranking/licences-not-valid.png)

At an event of that level, those licenses are left out of what a class accepts. A dancer who holds only such a license can't register for the class there, and sees "This license is not valid at this competition level." A dancer who also holds a license the level accepts registers as usual. Leave the field empty to accept every license the class takes.

This only matters for classes that require a license at registration (see [Step 3: Decide which classes accept which items](/federation/getting-a-license/#step-3-decide-which-classes-accept-which-items)).

If you delete a license item that a level lists, it shows as **Removed license** on the level's rules. Saving the level takes it off the list.

## How results count in the ranking

These rules are set on the **division**, in its rules.

- **Competition levels where one result counts**: at these competition levels only a competitor's highest result counts when it has several in the same discipline and category. The others count neither towards closing a class, nor towards entering an event, nor in the ranking.
- **Class levels with their own points**: results in these class levels count only for that level. Other class levels never see them, and the level gets its own ranking list. They also stay out of the class limits and the entry rules of the other levels.
- **Publish the season ranking**: shows the division's season ranking on the public site.

![The division's rules for how results count and publishing](/assets/images/season-ranking/division-rules.png)

## Season points per age group

On **Season points** (see [Closing a class at points](/federation/class-point-limits/#season-points)), each list is one discipline, category and **Age group**. A competitor that has results in two age groups appears in both, each time with the results of that age group only.

- **Ranked by** switches the order: **Best 3 results** (the number is the one set under **Results that count**) or **All points**. The columns show both totals: **Best 3** and **All points**.
- **Age group** filters the lists to one age group. **All age groups** shows everything.
- A result that a higher one at the same competition level replaced is tagged **Higher result counts**.

![Season points ranked by the best three results, with both totals](/assets/images/season-ranking/ranked-by.png)

## The public season ranking

When **Publish the season ranking** is on for a division, its public page has a **Season ranking** button. It opens a page with the same lists as **Season points**, for everyone, with **Season**, **Ranked by**, an age group filter and a search for a competitor or club.

Dancers and clubs also find it from your federation's own page:

- **Season ranking** in the federation menu, next to **Divisions**. With one published division it opens that ranking; with more it opens a list with one line per division and the current season. On a phone the menu is a row you can swipe, and **Season ranking** opens the same list.
- A **Season ranking** button next to **Explore** on each published division under **Divisions**.

![Season ranking in the federation menu](/assets/images/season-ranking/federation-menu.png)

![The Season ranking button on a published division](/assets/images/season-ranking/divisions-button.png)

To link the ranking from your own website, use the address of the ranking page itself, for example `https://vote4dance.com/public/federation/<your federation>/divisions/<division>/points`, or your federation's **Divisions** page for all of them.

![The public Season ranking page](/assets/images/season-ranking/public-ranking.png)

The public page shows less than **Season points**:

- Only competitions that are **closed** or archived, that publish their results and do not hide their competitors.
- No disqualified results, no correction notes and no entries to check.
- A competitor with no points has no position.

Results appear once a competition has closed. Switch **Publish the season ranking** off to take the page away; the button disappears and anyone who opens the address sees "This ranking isn't published."

Good to know:

- **Check the points first.** The ranking shows the points as they are saved, so make sure the points table pays what your rulebook says, and recalculate if needed ([Recalculate points](/federation/progression/#recalculate-points)), before you switch it on.
- **Switching on or off takes up to a minute** to reach a page that is reloaded, and a page left open keeps what it shows until it is reloaded.
- **A competition that is closed with a final that has not been published** can show that final's points. Publish the round before you close the competition.
