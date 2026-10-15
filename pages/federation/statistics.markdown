---
layout: page
title: Federation statistics
permalink: /federation/statistics/
parent: Federation
nav_order: 8
help:
  federation.statistics: ""
  federation.statistics.licences: licenses
  federation.statistics.participation: participation
  federation.statistics.competitions: competitions
  federation.statistics.clubs: organizations
---

# Federation statistics

This page is for **federation staff**. The Statistics screen shows how your federation's season
stands: licences, members, who is competing, how the competition calendar is going, and which
organizations carry it. It only shows numbers; nothing can be changed from it.

Open it with **Statistics** at the right end of the bar at the top of the federation console:
`Federation → Statistics`. The address is `/federation/<federation id>/statistics`.

The screen has five tabs: **Overview**, **Licenses**, **Participation**, **Competitions** and
**Organizations**. The tab is kept in the address as `?stats=overview`, `licences`,
`participation`, `competitions` or `clubs`, so you can bookmark or share one tab.

## Who can open it

You need the **Manager**, **Administrator** or **Owner** role in the federation, or be a system
administrator. A **Viewer** does not see **Statistics** in the bar, and the address shows an empty
page. See [Federation staff roles](/federation/staff-roles/).

## The season

"This season" follows your federation's **Season start (MM-DD)** rule (see
[Before the season: set the rules](/federation/age-transfer/#before-the-season-set-the-rules)). With
a season starting 1 September, the season that started on 1 September 2026 runs until 31 August 2027,
and it is written **2026/2027**. Without a season start, the season is the calendar year. You cannot
choose another season.

| Kind of number | How the season is applied |
|---|---|
| Licences | A licence for the current season counts. A licence with no season, such as one checked against your federation's own member register, counts in every season it is valid for. Its price and the month it was issued count only once, in the season it was paid or issued. |
| Competitions, entries and competitors | The competition's date must be in the current season. For a multi-day event, each day's own date is used for the entries danced that day. |
| Members, organizations, classes and class memberships | No season. These are counts of how things stand today. |

Wherever competitions are counted, **practice events are left out**, and so are cancelled entries.
Hidden (not yet published) competitions are included.

## Overview

Eight headline numbers.

| Number | How it is counted |
|---|---|
| **Active competitors** | Competitors (couples, solos and teams) with at least one active class membership in your federation. Each competitor counts once, however many classes they are in. |
| **Licensed people** | People who hold at least one active licence for this season. A person with two licences counts once. |
| **Active licenses** | Licences for this season with the status **Active**. A person with two licences counts twice. |
| **Organizations** | Organizations approved into your federation. Organizations still waiting for approval are not counted. |
| **Members** | People who are approved members of at least one of those approved organizations. Each person counts once. |
| **Active classes** | Federation classes whose state is active. |
| **Competitions this season** | Events linked to your federation and dated this season. A multi-day event counts once. |
| **License revenue** | The sum of the price paid on this season's licences whose payment status is **Paid**. A licence with no season counts in the season it was paid. If you have taken payments in more than one currency, only the currency with the largest total is shown and the others are not added in. |

## Licenses

All the charts on this tab, except **Members by role**, count this season's licences.

| Chart | What it shows |
|---|---|
| **Licenses by status** | Licences per status: **Draft**, **Pending**, **Active**, **Expired**, **Suspended**, **Cancelled**. |
| **Licenses by category** | Licences per category: **Dancer**, **Judge**, **Coach**, **Scrutineer**, **Supervisor**, **Music**, **Organizer**, **Other**. |
| **Licenses by payment** | Licences per payment status: **Unpaid**, **Paid**, **Invoiced**, **Waived**, **Refunded**. |
| **Licenses issued per month** | This season's licences by the month the licence record was created. A licence with no season shows only in the season it was created. |
| **Members by role** | Members of your approved organizations per role in their organization: **Member**, **Coach**, **Manager**, **Administrator**. A person with different roles in two organizations counts once in each role. |

For what the statuses mean, see [Federation licenses](/federation-licenses/).

## Participation

| Chart | What it shows |
|---|---|
| **Competitors by division** | Competitors with an active class membership, per division of the class. A competitor with classes in two divisions counts in both. |
| **Competitors by discipline** | The same, per discipline. |

Both charts show today's class memberships, not a season. A competitor only appears here once they
have a class membership; see [Promotion points](/federation/progression/) for when that happens.

## Competitions

This tab has two parts: whether the sport is growing, and whether the calendar is being run
properly.

### Competitors

These numbers identify a person by the person number on their competition entries, for up to three
dancers per entry. Entries without person numbers are not counted. This part loads separately and
can take a moment on a large federation.

| Number | How it is counted |
|---|---|
| **Competed this season** | People with at least one entry at one of your competitions this season. The line underneath gives the same number for last season. |
| **New competitors** | People who competed this season and never in any earlier season. All seasons are checked, so someone returning after a long break is not new. |
| **Lapsed** | People who competed last season but not this season. |
| **Came back** | Of the people who competed last season, the share who have competed this season. Shows **—** when nobody competed last season. |
| **How often they compete** | People who competed this season, split by how many events they entered: **One competition only**, **2 to 4 competitions**, **5 or more**. A multi-day event counts as one. |
| **Organizations losing competitors** | Up to 10 organizations with fewer competitors this season than last season, biggest drop first. The number is the change, for example -4. The organization is the club name written on the entries, so a club entered under two spellings counts as two. |

Because the current season is still running, **Lapsed** and **Came back** move during the season as
people enter their first competition of the season. Early in a season, before its first competition,
everyone from last season shows as **Lapsed**.

### The calendar

| Number | How it is counted |
|---|---|
| **Competitions run** | The same as **Competitions this season** on [Overview](#overview). The line underneath says how many have finished. An event has finished when its last day has passed or the organizer has closed or archived it. |
| **Entries** | Entries on your competitions this season, on every day of multi-day events. Registrations for competitions that have not opened their start lists yet are not counted. |
| **Results settled** | Of the finished events, the share whose results can be seen. Results can be seen when the organizer publishes them, or when they are held until the end and the event has been closed or archived. Shows **—** when nothing has finished yet. |
| **Outstanding** | Finished events whose results still cannot be seen. The card has a red border when this is above zero. |

| Chart or list | What it shows |
|---|---|
| **Entries per season** | Entries per season, for this season and the five before it. A season that spans two years is labelled with both, for example **2025/2026**. |
| **Competitions per month** | This season's events by the month they start. |
| **Finished, results not visible** | Up to 10 of the outstanding events, the longest waiting first. The tag is the number of days since the event's last day. |
| **Classes that did not fill** | Classes at this season's competitions that have already been danced and drew one entry or none. Classes at competitions still to come are left out, because they have no entries yet. The tag in the heading is the total, and the text gives it against the classes danced so far, for example "41 of 232 classes danced this season drew one entry or none". Up to 12 class names are listed alphabetically, then **+… more** for the rest. Each day of a multi-day event has its own classes, so a class run on two days counts twice. Until the season's first competition has finished, the card says **No class has been danced yet this season**. |
| **Organisers running the most competitions** | Up to 10 organizers with the most events this season, using the organizer name written on the event. Events with no organizer name are left out. |

For the event-by-event view behind these numbers, see [Competitions](/federation/competitions/).

## Organizations

| List | What it shows |
|---|---|
| **Top organizations by licensed members** | Up to 10 organizations with the most people holding an active licence for this season, using the organization named on the licence. |
| **Active classes without competitors** | Active federation classes that nobody has an active class membership in. The tag shows how many there are. |

## Filters and exports

There are no filters on this screen: no season picker, no date range and no division filter. There is
also no export. For a list of competitions you can download, use **Download CSV** on
[Competitions](/federation/competitions/#exporting).

## When the numbers update

The numbers are worked out when you open the page. The **Overview**, **Licenses**, **Participation**
and **Organizations** figures refresh on their own when a licence, organization or class
membership changes while the page is open. The **Competitions** tab does not refresh on its own when a
competition or its entries change; reload the page to see the latest figures.

## Troubleshooting

| Message | What it means |
|---|---|
| **Could not load statistics** | The headline numbers or the charts could not be loaded. The message underneath gives the reason. Reload the page. The server only answers Managers, Administrators, Owners and system administrators, so check your role if it keeps failing. |
| **Failed to load data** | Shown in place of the competitor numbers at the top of the **Competitions** tab when only that part failed. The rest of the tab still works. |
| **No data yet** | Shown on a chart or list that has nothing to count, for example the licence charts before any licence has been issued for this season. |

## Not in this version

- No choice of season or date range. Everything is the current season.
- No export of the statistics.

## Related pages

- [Competitions](/federation/competitions/)
- [Federation licenses](/federation-licenses/)
- [Promotion points](/federation/progression/)
- [Club transfers](/federation/club-transfers/)
- [Federation staff roles](/federation/staff-roles/)
