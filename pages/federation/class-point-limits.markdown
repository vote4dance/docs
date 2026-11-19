---
layout: page
title: Closing a class at points
permalink: /federation/class-point-limits/
parent: Points and rankings
nav_order: 2
help:
  federation.division.points: season-points
  federation.division.points.all-seasons: points-that-never-expire
---

# Closing a class at points

Some federations move a competitor up a level once it has earned enough points in a season: a competitor that has reached the limit can no longer enter that class level, and goes up. This page shows how to set the limits, what dancers and event staff see, and how to follow and correct each competitor's points on **Season points**.

Nothing changes until you set a limit. A federation that does not use the rule sees no difference.

A competitor is whoever enters a class together: a couple, a solo dancer, a duo or a group. **Season points**, the rules and the messages dancers get say *team* for the same thing.

This page is about the **limit**. Where the points themselves come from, and how the points table pays them, is on [Promotion points](/federation/progression/).

A limit closes a class level for new entries. It does not move the competitor's class membership: that is the promotion threshold, which adds up everything the competitor has earned in the class and is not changed by **Results that count**. See [Promotion on the best results of a season](/federation/progression/#promotion-on-the-best-results-of-a-season).

## How a team's points are counted

A competitor's points are its best results of the season, in one discipline and category, added together across all age groups. The points come from the results of the competitions in the season. If your federation's points never expire, results from earlier seasons count too: see [Points that never expire](#points-that-never-expire).

- **Results that count** decides how many of the competitor's best results are added up. With 3, only the three highest count. Leave it empty to count every result. The same number is used for the entry rules of a competition level and for the season ranking (see [Entry rules and the season ranking](/federation/season-ranking/)).
- **Disqualified and cancelled entries** do not count, and neither do entries at practice events.
- **Results a competition holds back** count once the competition is **closed**. Close each competition when it is over: from then on its points count and the classes lock, and a coach cannot learn a placement early from a class that has closed.
- **Points follow the competitor** when its lineup changes. If your federation wants a duo with a new partner to start again from 0, set **Team points when a dancer changes** to **Reset on partner change**, on the **Duo** categories only. Set on a group, the same rule would reset it whenever any dancer changes.

## Set the limits

1. Go to **Structure**, choose the division and open the rules of the division, a discipline or a category. A rule on a category replaces the same rule on the discipline or division.
2. Under **Class closes at points**, type the number of points for each class level. A competitor that has this many points in the season can no longer enter that class level. A level left empty has no limit.
3. Under **Results that count**, type how many of a competitor's best results count. Leave it empty to count them all.
4. Save the rules.

![Class closes at points and Results that count in the rule editor](/assets/images/class-point-limits/class-closes-at-points.png)

Filling in any level on a category, discipline or division replaces the limits set on a broader level, as a whole. If every level is empty, the broader setting applies. A category cannot opt out of a division's limits except by setting its own.

## Points that never expire

By default a competitor's points start again at 0 when a new season begins. Some rulebooks let points add up for as long as the competitor dances: a competitor stays in a class until it has earned enough points to leave it, however many seasons that takes. Choose **Never** under **Points expire** for that.

1. Go to **Structure**, choose the division and open the rules of the division, a discipline or a category.
2. Under **Points expire**, choose **Never**. **At the end of the season (default)** keeps the usual season count.
3. Save the rules.

![Points expire set to Never in the rule editor](/assets/images/class-point-limits/points-expire.png)

With **Never**:

- **Class closes at points** counts every result the competitor has danced, from every season, not only the current one. The promotion threshold always adds up everything earned in the class, whatever you choose here.
- **The entry rules of a competition level still count one season.** **Points needed to enter** and **Competitions danced before entering** (see [Who may enter an event](/federation/season-ranking/#who-may-enter-an-event)) look at this season only.
- **Season points** still lists this season's results, and says under the limits that they count all seasons. See [Season points](#season-points).
- **A dancer or club registering** sees "This team has 32 points, counting all seasons. From 30 points, it can no longer enter this class."

**Starting again at 0 after a promotion.** Points are counted per discipline and category, not per class level. So a competitor that moves up keeps the points it earned in the class below, and with points that never expire it could reach the next limit straight away. If your rulebook says a promoted competitor starts again at 0 in its new class, list the class levels under **Class levels with their own points** in the division's rules (see [How results count in the ranking](/federation/season-ranking/#how-results-count-in-the-ranking)). Each of those levels then counts only the results danced in it.

## What dancers and event staff see

- **A dancer or a club registering** sees the class locked, with a **Closed** tag, the reason and a **Why is this locked?** link: "This team has 18 points this season. From 18 points, it can no longer enter Rising Talent." The **Add** button is off. The competitor's points this season show next to the competitor picker, and a note under the list says that entries made before the competitor reached the limit stay. When the division publishes its [season ranking](/federation/season-ranking/#the-public-season-ranking), a **See the season ranking** link opens it. See [A class closed by your season points](/dancer/registration-for-event/#a-class-closed-by-your-season-points).
- **Going up is always open.** A competitor that is closed out of one class level can still enter the next one up.
- **A class move** is refused in the same way when the competitor is moving into a class it has no longer the right to enter.
- **Event staff** are warned instead of stopped. They may still add or move the competitor.
- **In the Vote4Dance app** each dancer sees every competitor's points under **Ranking and progression** on their public profile: the points, a bar to the next limit, and the results behind the total. Each competitor's place in the class results is followed by the points it earned, such as **+7**. See [Your season points in the app](/dancer/season-points/).
- **When a competitor reaches a limit**, its dancers and their parents get a message on their phone once the competition's results are published, and the club's coaches get one message for all the club's competitors that moved up. Each person can switch these messages off in their notification settings; the federation cannot switch them off.
- **Who sees a competitor's points in the app:** the competitor's dancers, their parents, their club's coaches and managers, and the federation. Anyone else only sees them when the division publishes its [season ranking](/federation/season-ranking/), and then only from published results.
- **Entries already made** stay. If a competitor's points rise after it has registered, the entry is not removed. It shows on **Season points** under **Entries to check**, so someone can decide what to do.

![A class closed by points, with the Closed tag and the next level up still open](/assets/images/class-point-limits/class-locked.png)

A class that fails an earlier check, such as age or license, shows that reason instead of the points.

## Season points

**Season points** is the overview of every competitor's points. It is for the federation's staff.

1. Go to **Structure**, choose the division and open **Season points**.
2. Choose the **Season**. The limits shown are the ones set today, also when you look at a past season.
3. Type in **Filter by team or club** to find a competitor. **Export CSV** saves the lists as they are filtered now.
4. Each list is one discipline and category. Under the heading you see the limits ("Rising Talent closes at 18") and how many results count. Press the plus sign on a competitor to see its results: **Competition**, **Date**, **Class**, **Points** and **Status**.

When **Points expire** is **Never**, a line under the limits says "These limits count the points of all seasons, not only the points of this season shown here." The points in the list are still this season's, so a class can be closed to a competitor whose total here is below the limit.

![A list on Season points whose limits count all seasons](/assets/images/class-point-limits/season-points-all-seasons.png)

![Season points for a discipline and category, with a competitor's results open](/assets/images/class-point-limits/season-points.png)

The **Status** of a result is **Counts**, **Disqualified** or **Corrected**.

The page is up to date when you open it and after you correct a result. It does not change on its own when a round is confirmed, so open it again to see the latest.

### Entries to check

When competitors have an entry that its points should have closed, a box **Entries to check** shows at the top. Each row shows **Competition**, **Date**, **Team**, **Class**, **Points** and **Limit**. The competition opens when you press its name.

![The Entries to check box](/assets/images/class-point-limits/entries-to-check.png)

An entry is never flagged because of a result in its own competition.

## Correct a result's points

Use this when a result has the wrong points and you cannot fix it by changing the results themselves, for example after a recount. Only federation administrators can do it.

1. On **Season points**, press the plus sign on the competitor and press **Correct points** on the result.
2. Type the **Points**.
3. Under **Why are you changing it?** write the reason. It cannot contain the characters <, > or \.
4. Press **Save correction**.

![The Correct points dialog](/assets/images/class-point-limits/correct-points.png)

The corrected number stays until you remove the correction, even if the competition is closed again or [points are recalculated](/federation/progression/#recalculate-points). The result shows **Corrected**. Who changed it, and why, is saved in the [Enforcement log](/federation/members/#enforcement-log) on **Members**.

This is also how the federation changes the points of a competitor that stays in its class. No screen sets a competitor's total directly: the total is always added up from its results. A carried-in balance can be set only while you move the competitor to another class; see [Manual moves and corrections](/federation/progression/#manual-moves-and-corrections).

While a correction stands, the points on that entry cannot be changed by hand or by importing a file. To take it away, press **Correct points** again and choose **Remove correction**; the result goes back to the points the competition gave it.

## Good to know

- **The points table must be set first.** A limit locks nothing until the federation has a points table and results are confirmed. See [Promotion points](/federation/progression/).
- **Resetting a competition's results** also clears the points on its entries, as it does for placement and score.
