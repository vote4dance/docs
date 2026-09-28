---
layout: page
title: Competition setup
permalink: /manager-guide/competition-setup/
parent: Manager Guide
nav_order: 2
help:
  manager.event.competitions: ""
  manager.comp.classes: step-1-create-classes
  manager.comp.classes.round: step-2-build-rounds-from-classes
  manager.comp.teams: step-3-add-participants
  manager.comp.data: data-transfer
---

# Competition setup

This page is your execution workflow after Event setup. You will configure classes, rounds, teams, judges, and publishing readiness in the order that prevents rework.

## Before you start

Confirm these prerequisites:

- You can open Manager and access your event
- Event basics are complete (name, date, venue, visibility)
- Federation rules are known (license requirements, class structure)
- You have at least one backup admin in the event

If not, complete [Event setup](/manager-guide/event-setup/) first.

## Where to go

1. Sign in to Vote4Dance
2. Open **Manager**
3. Select your event

Manager's sidebar is grouped the way the work is:

| Group | Contains |
|---|---|
| **Event overview** | The event's start page, and **Problems** (the automatic tests over your setup) while any test fails. See [Problems](/manager-guide/validator/). |
| **Event** | Competitions, Floor, Users, Stations, Café, Schedule |
| **Competition** | Registration, Classes, Participants, Judges, Checkin, Statistics |
| **Audience** | Notifications, Screens, Sponsors, Live results, Shop |

This page works in the **Competition** group. Rounds live inside a class.

## Recommended build order

Use this order to avoid broken links between sections:

1. Create classes
2. Create round trees
3. Add participants
4. Assign start numbers and class entries
5. Add judges and build panels
6. Rehearse one full round
7. Take rounds from Not started to In progress

## Step 1: Create classes

Go to **Competitions -> Classes**.

Create every class participants can enter.

A class has these fields:

| Field | What it means |
|---|---|
| **Division** | The federation's division the class belongs to. |
| **Discipline** | The dance discipline within that division. |
| **Federation Class** | The federation's class this maps to — this is what carries the age and level rules, so you do not enter ages on the class yourself. |
| **Class title** | The name people read: on the public page, in registration and on printouts. |
| **Class short letter** | The short form used where space is tight, such as on screens and lists. |
| **Class role** | Only for leader/follower classes: `Leader` or `Follower`. Each such class needs exactly one partner class, and **Problems** checks that. |

Group classes and merged classes add their own fields (class group, merge target).

Tips:

- Keep the class title human-readable for registrations and printouts
- Prefer federation naming if the competition is federation-governed
- Pick the Federation Class carefully; the rules follow from it

If your system has **Round guide**, use it after classes are finalized. For battle disciplines, the Round Guide generates the complete skeleton (placing round, bracket layers, B‑final) automatically — see [Battle bracket setup](/battle-bracket/) for the seeding steps that follow.

## Step 2: Build rounds from classes

Go to **Competitions -> Rounds** or open a class and click **Create Round**.

For each class, define:

| Setting group | Key settings | Example |
|---|---|---|
| Basic | Round label, method, through count | Quarterfinal, 24 through |
| Heat setup | Heat count and timing | 4 heats, 90 seconds each |
| Schedule | Day, floor, time block | Day 1, Floor A, 10:00 |
| Results | Qualifier and placement behavior | Top 12 to semifinal |

Typical round tree:

```
Class: Junior Solo - Contemporary
	Round 1: Quarterfinal (24 through)
	Round 2: Semifinal (12 through)
	Round 3: Final (0 through)
```

## Step 3: Add participants

Go to **Competition → Participants**. (The page is called Participants in Manager; "teams" is
the older internal word, and one participant row can be a single dancer, a couple or a group.)

Participants get there three ways:

- **Imported from approved registrations** — the normal route. See [Registration and check-in](/manager-guide/registration-checkin/).
- **Added by hand**, for entries that never went through registration.
- **Generate random competitors** — a practice-event-only action that fills a round with test
  entries, for rehearsals. See [Test run and venue rehearsal](/manager-guide/test-run/).

CSV import lives on `Competition → Registration → Data transfer`, together with the reset and
delete tools.

Do not bulk delete participants once judging is underway.

## Step 4: Assign start numbers and class entries

Still in **Participants**:

1. Assign start numbers (manually or automatically)
2. Check every participant is entered in the right class
3. Verify nobody is missing a class assignment

Then open [**Problems**](/manager-guide/validator/), which checks exactly this for you: start-number conflicts, invalid
start numbers, the same person ID used with two different names, and participants without a
placement who have a class set to start in. For DSF competitions it also checks conflicting
license numbers.

## Step 5: Add judges and build panels

Go to **Competition → Judges**. The full reference is [Judges](/manager-guide/judges/).

Process:

1. Invite each judge by email, or link an existing account. **Invite new judge** checks for
   existing accounts first, so you do not create a duplicate person.
2. Assign judge letters (A, B, C…)
3. Create judge panels
4. Add judges to the panels
5. Assign a panel to each class — a round can override it with its own panel

Each judge's row shows `Not invited`, `Invited` or `Active`, and lets you resend the invitation
in any of the app's languages, or **Reset PIN** if a judge has forgotten theirs. Judges set
their own PIN on their own device; there is no event-wide code. A judge's PIN is shared by all
competitions in the event, so **Reset PIN** clears it event-wide. **Reset PIN** is disabled
until the judge has set a PIN.

A panel locks once a round that uses it has started, and a panel with classes assigned cannot
be deleted. A judge who already has marks cannot be removed.

## Step 6: Run one rehearsal round

Before event day, execute one full dry run. This is the desk version; for the full rehearsal
at the venue with projector and tablets, see
[Test run and venue rehearsal](/manager-guide/test-run/).

1. Pick a test class
2. Open the first round
3. Press **Start judging** (the round goes to **In progress**)
4. Simulate judging input
5. Close, confirm, and publish test results
6. Verify printouts (heat list, judging sheet, results)

If anything fails, fix before opening real rounds.

## Round lifecycle you should enforce

Use this exact sequence:

1. **Not started**: setup stage, round settings editable
2. **In progress**: judges can mark (button: **Start judging**)
3. **Closed**: judge input ended (button: **Close round**)
4. **Confirmed**: results reviewed, approved for presentation (button: **Confirm round**)
5. **Published**: results visible externally (button: **Publish results online**)

**Previous status** steps a round back.

Do not skip statuses unless your federation explicitly allows it.

## Data transfer

`Competition → Registration → Data transfer`, only when needed.

Use cases:

- CSV import of participants
- Result downloads
- Reset and delete tools for test data

High risk actions:

- Reset and delete are destructive
- Never reset active competition data without a backup

## Troubleshooting

### "Start judging is refused"

Usually caused by missing judges, a missing schedule item, or unassigned participants. With no
panel, Manager says "Assign a judging panel to this class or round before starting judging."

Fix:

1. Open round validation
2. Resolve all blocking errors
3. Retry status change

### "Participants are not appearing in a class"

1. Confirm the registration is **Approved** and was imported
2. Confirm the class entry was saved
3. Confirm eligibility (the Federation Class's age and level rules, licenses)

### "Judge assignment is locked"

This often happens after results started.

1. Check round status
2. If Closed/Confirmed, use approved correction workflow
3. Log reason for any panel change

### "CSV import created wrong mappings"

1. Stop further imports
2. Export current state for audit
3. Correct mapping template
4. Re-import only corrected rows

## Competition setup done checklist

- All classes exist with a title, short letter and the right Federation Class
- All rounds exist with a schedule item, floor and advancement plan
- Participants are loaded, numbered and entered in classes
- Judges are `Active`, and every active class has a panel
- One full rehearsal round completed successfully
- **Problems** shows no failed tests

## Next step

Continue to [Test run and venue rehearsal](/manager-guide/test-run/) to prove the setup with
real devices, then to [Live operations](/manager-guide/live-operations/) for the event-day
runbook.
