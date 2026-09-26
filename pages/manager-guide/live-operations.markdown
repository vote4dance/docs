---
layout: page
title: Live operations
permalink: /manager-guide/live-operations/
parent: Manager Guide
nav_order: 4
help:
  manager.comp.live: ""
  manager.comp.live.judges-not-finishing: judges-not-finishing   # the round page's "Stuck?" links
  manager.comp.live.wrong-teams-in-round: wrong-teams-in-round
  manager.comp.live.schedule-drift: schedule-drift
---

# Live operations

This is the recommended event-day runbook for managers and scrutineers.

This page assumes the setup is done and tested. If you have not yet rehearsed with the real
devices in the real hall, do that first: [Test run and venue
rehearsal](/manager-guide/test-run/).

## Pre-open checks (30-60 minutes before)

1. Open Manager and confirm [**Problems**](/manager-guide/validator/) has no failed tests
2. Confirm judges can access the judging app and enter their own PIN
3. Confirm Speaker and Screens are loading event data, and that the projector picture fills
   the display (see [Screens, projectors and venue technology](/manager-guide/screens/))
4. Confirm every station device is connected, and check their battery level
5. Confirm check-in status has been applied
6. Confirm first rounds have schedule/floor/beat assignments

## Running rounds

For each round:

1. Verify teams are loaded and heat distribution is correct
2. Press **Start judging** — the round goes to **In progress**
3. Monitor judge completion
4. Press **Close round** when judging is complete
5. **Confirm round**, then set the advancement targets — Manager warns you if you confirm
   without any ("No targets have been set from the round result") and if placements conflict
6. **Publish results online** when it should be public

## Live controls you will use most

- Round status controls: **Not started** → **In progress** (`Start judging`) → **Closed** (`Close round`) → **Confirmed** (`Confirm round`) → **Published** (`Publish results online`), plus **Previous status** to step back
- Send-through and not-through targets
- Priority assignment for alternates/group logic
- Round toolbar utilities (sort/randomize/reverse/heat count)
- Print actions (heat list, judging sheet, result, diploma)

## Audience-facing coordination

During live execution:

- Use `Notifications` for official updates (see [Notifications](/manager-guide/notifications/))
- Use `Screens` for display output
- Use `Speaker` for floor-facing presentation flow
- Validate what is public via `Live` publish settings

## Handling common issues

### Judges not finishing

- Confirm the round is **In progress**
- Check judge assignments and panel settings. If **Start judging** refuses, Manager says
  "Assign a judging panel to this class or round before starting judging."
- Confirm network and device state

### Wrong teams in round

- Use round add/copy/clear tools in open or ready state
- Re-run send-through after correction

### Schedule drift

- Update beat/time planning in schedule and round settings (see [Schedule and conflicts](/manager-guide/schedule/))
- Re-check screen/speaker timeline alignment

## End-of-day stabilization

1. Confirm all intended rounds are published
2. Run final notifications
3. Print/export required outputs
4. Prepare post-event close actions
