---
layout: page
title: Floors
permalink: /manager-guide/floors/
parent: Manager Guide
nav_order: 1.35
help:
  manager.event.floor: ""
---

# Floors

A floor is a place where rounds are danced. You set up the floors of an event under `Manager → Event → Floor`. Each round is then placed on a floor. The Speaker, the Supervisor and each screen can be set to follow one floor, so staff at one floor are not shown another floor's rounds.

Most events need only one floor. A new event already has one called **Main floor**, and that is enough if everything happens on one dance floor.

## What a floor is

Floors belong to the event, not to a single competition. If the event has several competitions, all of them use the same floors.

There are two levels:

| Level | What it is for | Example |
|---|---|---|
| **Floor** | A dance floor or hall. | `Main floor`, `Hall 2` |
| **Floor Section** | A part of a floor that runs its own heats alongside the other sections. A section belongs to one floor. | `Stage left`, `Stage right` |

Each floor and each section has two fields:

| Field | What it does |
|---|---|
| **Floor name** | Shown in the floor lists in Manager, Speaker, Supervisor and Screens, and in the **Floor** column of the schedule. |
| **Letter code** | A short code such as `A` or `B`. It is added after the **Round number** wherever the round number is shown: on the public schedule, the screens and the judges' round list. For example, round `3` on the section with code `A` shows as `3A`. The code also replaces the name in the schedule's **Floor** column. The hint on the field reads "Leavy empty on main floor", so leave it empty on the main floor and give the sections a code. |

## Create a floor

1. Open `Manager → Event → Floor`.
2. Click **Create floor**. A new floor called **Main floor** is added straight away, with no letter code.
3. Click the pencil on the new card, change the name, and click **Save changes**.

The floor name is required. Nothing on this screen checks for duplicate names, so give every floor its own name.

## Create a section

1. On the floor's card, click **Create floor section**. A section with no name is added to the card straight away.
2. Click the pencil on the section's row and type the **Floor name** and **Letter code**.

A section saves as you type. There is no **Save changes** button for a section. Click the pencil again to close the fields.

A section cannot have its own sections.

## Rename a floor

Click the pencil on the card (for a floor) or on the row (for a section), change the name or the letter code, and save. The new name shows everywhere straight away, including on rounds that already use the floor. You do not need to update the rounds.

## Delete a floor

Click the bin on the card or row and confirm. A floor can only be deleted when:

- it has no sections. Delete the sections first.
- no round is placed on it. Move those rounds to another floor first, in the round's settings.

If one of these is not met, the delete is refused. See [Troubleshooting](#troubleshooting).

## Order

The floors are listed in the order you created them. You cannot reorder them. The same order is used everywhere floors are listed: the **Floor** field on a round, the screen settings and the floor filters in Speaker and Supervisor.

The order matters in one place. The **Round guide** places new rounds on the first floor in the list unless you choose another. To make another floor come first, you have to create the floors again in the order you want.

## Rounds

Each round has a **Floor** field in its settings, next to **Schedule item** and **Round number**. The list has every floor and every section of the event, shown by name, so give sections names that make sense on their own.

- The **Round guide** fills in the **Floor** field for you with the first floor in the list.
- A round does not need a floor. A round with no floor shows on every floor filter in Speaker, Supervisor and Screens.
- If no round in a list has a floor, the schedule's **Floor** column is hidden.

## Screens

Each screen under `Manager → Event → Screens` has a **Floor** setting: **All floors** or one floor. The floor list shows every floor and section by name.

The floor setting affects these **Show** options: **Heat**, **Lineup**, **Schedule (no heats)**, **Round number** and **Results (last 6)**. They only show rounds on the screen's floor and rounds that have no floor. **Result** and **Judge presentation** are not filtered by floor.

With **Schedule (no heats)**, each floor has its own current round. When two floors are running at the same time, both current rounds are shown.

See [Screens, projectors and venue technology](/manager-guide/screens/) for the rest of the screen settings.

## Speaker and Supervisor

The start page of the Speaker app and of the Supervisor app has a **Select floor to filter** choice: **All floors**, or one floor or section. The choice is kept in the app's address, so a bookmark opens on the same floor.

| App | What the floor filter changes |
|---|---|
| **Speaker** | The **Lineup** and **Results** lists, and the dots on those menu items that show when something is waiting. |
| **Supervisor** | The **Lineup** and **Results** lists. |

What the filter includes:

| You choose | You see rounds on |
|---|---|
| **All floors** | Every floor. |
| A floor | That floor and all its sections. |
| A section | That section and its floor, but not the other sections. |

Rounds with no floor are always included.

Give each floor's MC their own Speaker set to that floor. Your chief scrutineer can keep Supervisor on **All floors**.

## Several floors at once

Floors let you run rounds side by side. Three things take account of this:

**Estimated start times.** Rounds are timed within each schedule item:

- Rounds in the same schedule item that have the same **Round number** are timed as running at the same time. The next round starts after the longest of them has finished.
- Rounds with no round number usually run one after another. There is one exception: when rounds of the same class follow each other on different sections of a floor, they are timed as running at the same time.

So to run two floors in parallel, give the parallel rounds the same **Round number** and put them on different floors or sections. The letter codes then tell dancers and the audience which round is where: `3A` and `3B`.

**Schedule conflicts.** A dancer in two rounds that overlap in time is a conflict, unless both rounds are on the same floor. Rounds on the same floor cannot actually happen at the same time. Two rounds of the same class never count as a conflict. Open the report with **Open conflicts page** at the top of `Manager → Event → Schedule`. Overlapping rounds are also reported on [Problems](/manager-guide/validator/#schedule-conflicts).

**People and devices.** Each floor needs its own Lineup, Speaker and screens. Set each Speaker and screen to its own floor. See [Users, apps and stations](/manager-guide/users-and-stations/).

## Who can change floors

You need the Manager app for the event. Floors can be created, changed and deleted only while the event is not closed or archived. After that, the buttons are greyed out and the server refuses changes.

Reading the floor list needs no login, so Speaker, Supervisor, Screens and the public pages can all show floor names.

## Troubleshooting

The delete errors come from the server as short codes:

### "floor-has-children"

The floor still has sections. Delete its sections first, then delete the floor.

### "floor-has-rounds"

At least one round is still placed on this floor or section, in any competition of the event. Open those rounds, choose another **Floor**, and delete again. The schedule's **Floor** column helps you find them.

### A screen or Speaker shows rounds from another floor

Check two things. The round may have no floor, and rounds with no floor show on every floor. Or the screen or Speaker may be set to a floor, which also includes all its sections. Set it to the section instead.

## Not in this version

- Reordering floors or sections.
- Moving a section to another floor, or turning a section into a floor.
- Removing the floor from a single round. You can choose another floor, but not clear the field.

## Related pages

- [Screens, projectors and venue technology](/manager-guide/screens/): the screen **Floor** setting
- [Users, apps and stations](/manager-guide/users-and-stations/): who gets Speaker, Supervisor and Lineup
- [Competition setup](/manager-guide/competition-setup/): building rounds
- [Problems](/manager-guide/validator/): checks your setup, including schedule conflicts
- [Planning your first competition](/manager-guide/first-competition/)
