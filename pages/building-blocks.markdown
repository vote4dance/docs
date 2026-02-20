---
layout: page
title: Vote4Dance Building Blocks
permalink: /building-blocks/
parent: Getting Started
nav_order: 3
---

# Vote4Dance Building Blocks

Vote4Dance is a suite of apps. `Manager` is the control center, and the other apps execute specific parts of the event.

## Core apps for organizers

### Manager

Use this to configure and control the event:

- Event setup: competitions, floors, users, schedule
- Competition setup: classes, rounds, teams, judges
- Registration periods and rules
- Check-in window and organization signoff
- Result control, publishing, printing, exports

### Judging (`judging3`)

Use this for adjudicator input during active rounds.

### Speaker (`speaker-react`)

Use this for floor operation tasks such as live lineup flow, merge/rotation support, and presenting active items.

### Screens

Use this for public display endpoints and visual presentation during the event.

## Public and participant-facing blocks

### Public event and registration

Used by participants and audience for:

- Event info and schedule
- Registration workflows
- Public result visibility (based on your publish settings)

### Notifications

Push event updates to followers from Manager.

### Voting

Optional audience voting that can be enabled per event.

## Operations and support blocks

### Check-in

Supports event check-in windows, organization-level team status, and signed submissions.

### Supervisor

Operational oversight during live execution.

### Cafe

Optional order/product flow with manager-side overview and a dedicated cafe app.

### Lineup

Dedicated lineup-focused workflow for operations that need it.

## Advanced or beta blocks

### Sponsors

Sponsor offers and purchases are available as a managed flow and may be enabled in testing contexts.

## Recommended usage model

1. Configure everything in `Manager`
2. Run live judging in `Judging`
3. Run floor presentation in `Speaker` and `Screens`
4. Handle check-in, registration issues, and round control in `Manager`
