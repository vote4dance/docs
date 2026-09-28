---
layout: page
title: Competitions
permalink: /federation/competitions/
parent: Federation
nav_order: 7.5
help:
  federation.competition: ""
---

# Competitions

This page is for **federation staff**. The Competitions screen lists every competition that is
run under your federation: what is being danced today, what is coming up, what has finished, and
what a finished competition has still not given you, such as published results.

Open it from the bar at the top of the federation console: `Federation → Competitions`. The address
is `/federation/<federation id>/competition`.

The screen is read-only. The organizer owns every competition on it, so all changes are made in
Manager by the organizer.

## Who can open it

You need the **Manager**, **Administrator** or **Owner** role in the federation, or be a system
administrator. A **Viewer** does not see **Competitions** in the bar, and opening the address shows
an information box instead of the list. See [Federation staff roles](/federation/staff-roles/).

## How a competition becomes yours

A competition belongs to your federation when its organizer has chosen your federation for the
event. Nothing else is needed, and there is no step on your side.

- **When the event is created.** In Manager, the organizer answers **How do you want to start?**
  with **Competition for a specific federation** and then picks your federation under **Select a
  federation**. The other choice, **Training competition with default settings**, does not link the
  event to your federation.
- **Later.** The organizer can change the federation on the event's details page in Manager at any
  time. The event then moves to the new federation's list at once.
- **Competition level.** When a federation is picked and the event is not a practice event, the
  organizer can also choose a **Competition level**. Only levels that belong to the chosen
  federation are accepted; saving with another federation's level fails.

The federation list in that form shows every federation in Vote4Dance. There is no application,
sanctioning or approval step, and you cannot accept, reject, link or unlink an event from this
screen. See [Not in this version](#not-in-this-version).

For the organizer's side of this, see [Event setup](/manager-guide/event-setup/).

### What is left out

- **Practice events.** An event whose **Event mode** is **Practice event** is never listed, and it
  is not counted in any number on this screen.
- **Single days of a multi-day event.** A multi-day event is one row. Its entries, classes, judges
  and organizations are counted across all its days.

## Ranges

Three counters sit above the list, and the tabs below them split the calendar the same way. Each
tab shows how many competitions it holds.

| Tab | Counter | What it holds |
|---|---|---|
| **Running** | **Running now** | Hidden or published events whose dates include today. |
| **Upcoming** | **Upcoming** | Hidden or published events that start after today. |
| **Completed** | **Completed** | Events the organizer has closed or archived, and hidden or published events whose last day has passed. |
| **All** | none | Every event linked to your federation, apart from practice events. |

"Today" is the date in the event's own time zone. Hidden events are included on purpose, so you can
see an event while it is still being built and there is still time to correct it.

**Running** and **Upcoming** are sorted by start date, earliest first. **Completed** and **All** are
sorted newest first.

The tab is kept in the address as `?competitions=running`, `upcoming`, `past` or `all`, so you can
bookmark or share one range.

## The list

| Column | What it shows |
|---|---|
| **Competition** | The event name, with its reference number and venue underneath. |
| **Dates** | The first and last day. A one-day event shows one date. |
| **Organiser** | The organizer named on the event, or the name of the person who created it if none is set. The event's contact email is shown underneath. |
| **State** | Where the event is in its own life. See [State](#state). While an event is **Live**, the line underneath says **Check-in open** or **Check-in closed**. |
| **Entries** | Entries that are not cancelled, with the number of organizations they come from underneath. |
| **Classes** | Classes on the event, with how many have finished underneath. A class has finished when it has rounds and none of them is still open or being danced. A class without rounds never counts as finished. |
| **Federation** | What the event still owes the federation. See [Federation standing](#federation-standing). |

Click a column heading to sort by it. The list shows 25 rows per page; you can change that at the
bottom of the table.

### Details of one competition

Click the arrow at the start of a row to see more about that event:

| Detail | What it is |
|---|---|
| **Reference number** | The event's reference number, if the organizer set one. |
| **Venue** | The event's location. |
| **Contact** | The event's contact email. |
| **Check-in window** | When check-in opens and closes. |
| **Judges** | Judges on the event, across all its days. |
| **Organizations** | Distinct organizations with entries, counted once across all days. |
| **Results** | **Not published** when the organizer has turned results off. Both other results settings, publish now and hold until the event is closed, show **Published**; the **Federation** column tells you whether results can actually be seen. |
| **Live placement** | **Enabled** or **Disabled**. |

## State

| State | When it shows |
|---|---|
| **Not published** | The event is hidden. This wins over every other state, so a hidden event that is running today shows **Not published**, not **Live**. |
| **Live** | Today falls within the event's dates. |
| **Finished** | The organizer has closed the event, or its last day has passed. A closed event whose dates include today still shows **Live**. |
| **Published** | The event is published and has not started. |
| **Archived** | The organizer has archived the event. |

## Federation standing

The **Federation** column is the reason this screen exists: it tells you whether a finished event
has given the federation what it should.

| Standing | Meaning |
|---|---|
| **-** | The event has not finished yet, so nothing is due. |
| **Results unpublished** | The event has finished, but nobody can see its results. Either the organizer has turned results off, or results are set to wait until the event is closed and it has not been closed yet. |
| **Scored** | The event has finished, its results are visible, and entries carry a score. The line underneath shows how many entries are scored. |
| **Not scored** | The event has finished and its results are visible, but no entry carries a score. |

"Scored" means that an entry has a score or points value on it. It does not prove that federation
promotion points were awarded. Promotion points run when the organizer closes the event; see
[Promotion points](/federation/progression/).

## Needs attention

Tick **Needs attention** to see only the events you should follow up:

- finished events with the standing **Results unpublished** or **Not scored**, and
- hidden events that have no classes yet.

## Finding a competition

| Filter | What it does |
|---|---|
| Search box | Matches the event name, reference number, venue or organizer. |
| **Any state** | Shows only events in one [state](#state). |
| **Needs attention** | See [Needs attention](#needs-attention). |

The filters apply to the open tab only. They are reset when you switch tab or leave the page.

### Large federations

Each tab loads at most 200 events. If a range holds more, a notice says **Showing the first … of …**
and the search and filters only look at those 200. Use a narrower tab, such as **Upcoming** instead
of **All**.

## Exporting

**Download CSV** saves every row of the open tab that matches your filters, not only the current
table page, to a
file named `competitions-<tab>-<date>.csv`. The file has one row per event with these columns:
competition, reference number, dates, venue, organizer, state, entries, organizations, classes,
classes finished, judges and federation standing. The button is greyed out when the list is empty.

## Rankings and rules

The same link between an event and your federation is what your rankings and rules use.

- **Rankings.** A ranking reads the classes of events that are linked to your federation and are
  published, closed or archived, when the class is linked to one of the ranking's federation
  classes and the event date falls in the ranking's time window. An event that shows
  **Not published** here does not count towards a ranking yet. See
  [Federation rankings](/federation-rankings/).
- **Rules.** Your federation's rules, classes and licence checks apply to an event once it is
  linked to your federation. The rules for a tier of events, such as whether a championship awards
  promotion points, are set on its **Competition level**. See
  [Federation rules](/federation-rules/) and [Promotion points](/federation/progression/).

## Not in this version

- No sanctioning, application or approval of events. Any organizer can link an event to any
  federation, and you cannot remove it.
- No editing. Nothing about an event can be changed from this screen, and the event name does not
  link to the event.
- No date filter. Use the tabs, the search box and the sort order.
- Practice events cannot be listed.

## Related pages

- [Event setup](/manager-guide/event-setup/): how organizers create an event and pick a federation
- [Post-event and exports](/manager-guide/post-event/): closing an event and publishing results
- [Federation statistics](/federation/statistics/): season totals for your competitions
- [Promotion points](/federation/progression/)
- [Federation rankings](/federation-rankings/)
- [Federation rules](/federation-rules/)
- [Federation staff roles](/federation/staff-roles/)
