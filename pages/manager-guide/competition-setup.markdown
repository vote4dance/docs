---
layout: page
title: Competition setup
permalink: /manager-guide/competition-setup/
parent: Manager Guide
nav_order: 2
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
4. Open **Competitions** section

You will usually see tabs or menu items for:

- Classes
- Rounds
- Teams
- Judges
- Data

## Recommended build order

Use this order to avoid broken links between sections:

1. Create classes
2. Create round trees
3. Add/import teams
4. Assign start numbers and class entries
5. Add judges and build panels
6. Rehearse one full round
7. Move rounds from Open to Ready

## Step 1: Create classes

Go to **Competitions -> Classes**.

Create every class participants can enter.

Common fields:

| Field | What it means | Example |
|---|---|---|
| Class Name | Public display name | Junior Solo - Contemporary |
| Class Code | Short internal ID | JS-CONT |
| Discipline | Category style | Contemporary |
| Age Group | Allowed age range | U13-U15 |
| Team Size | Number of dancers | Solo |
| Status | Active or hidden | Active |

Tips:

- Keep names human-readable for registrations and printouts
- Use stable codes for exports/integrations
- Prefer federation naming if federation-governed

If your system has **Round guide**, use it after classes are finalized.

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
	Round 3: Final (6 through)
```

## Step 3: Add or import teams

Go to **Competitions -> Teams**.

You can:

- Add teams manually
- Import via CSV
- Create random test teams for rehearsals

Typical team fields:

| Field | Example |
|---|---|
| Team Name | Aurora Dance Team |
| Club/School | Lincoln High School |
| Participants | 8 |
| License status | Active |
| Contact | coach@lincolndance.org |

If importing CSV:

1. Click **Import CSV**
2. Map columns carefully
3. Run preview validation
4. Apply import

Do not bulk delete teams once judging is underway.

## Step 4: Assign start numbers and class entries

Still in **Teams**:

1. Use **Assign Start Numbers** (manual or auto)
2. Register each team into the correct class
3. Verify no team is missing a class assignment

Quick validation:

- Every active team has at least one class
- No duplicate start numbers in same competition scope
- Team size and class eligibility align with class rules

## Step 5: Add judges and build panels

Go to **Competitions -> Judges**.

Process:

1. Add judge profiles
2. Assign judge letters (A, B, C...)
3. Create panels (Panel 1, Panel 2)
4. Add judges to panels with role/type
5. Assign default panel to each class

Example panel:

```
Panel 1
- Judge A: Technique
- Judge B: Artistry
- Judge C: Execution
```

Once results exist, panel/class changes may be locked.

## Step 6: Run one rehearsal round

Before event day, execute one full dry run:

1. Pick a test class
2. Open the first round
3. Move round to **Ready**
4. Simulate judging input
5. Close, confirm, and publish test results
6. Verify printouts (heat list, judging sheet, results)

If anything fails, fix before opening real rounds.

## Round lifecycle you should enforce

Use this exact sequence:

1. **Open**: Setup stage, editable
2. **Ready**: Locked enough to run
3. **Closed**: Input ended
4. **Confirmed**: Results validated
5. **Published**: Results visible externally

Do not skip statuses unless your federation explicitly allows it.

## Data tools

Go to **Competitions -> Data** only when needed.

Use cases:

- Import/update class/team data by CSV
- Export archived result data
- Reset test-only competitions

High risk actions:

- Reset and delete are destructive
- Never reset active competition data without backup

## Troubleshooting

### "Rounds cannot be set to Ready"

Usually caused by missing judges, missing schedule block, or unassigned teams.

Fix:

1. Open round validation
2. Resolve all blocking errors
3. Retry status change

### "Teams are not appearing in a class"

1. Check team is active
2. Confirm class registration was saved
3. Confirm eligibility filters (age, size, federation)

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

- All classes exist with validated names/codes
- All rounds exist with timing and status plan
- Teams are loaded, numbered, and assigned
- Judges and panels are assigned for every active class
- One full rehearsal round completed successfully
- Blocking validation issues resolved

## Next step

Continue to [Rounds](/manager-guide/rounds/) for live execution and operations.
