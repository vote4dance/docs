---
layout: page
title: Event setup
permalink: /manager-guide/event-setup/
parent: Manager Guide
nav_order: 1
---

# Event setup

This page maps to event-level sections in Manager.

## 1. Overview

Use `Overview` to control event visibility and publishing state.

Key actions:

- Edit long description and event image
- Move status through private/public/closed
- Publish all results when event is closed

Important constraints:

- Public status requires an event image
- Public production events require billing setup

## 2. Competitions

Use `Competitions` to create child competitions when needed.

Use child competitions when:

- You run multi-division programs under one event
- You need separate class/judge/team sets per sub-competition

## 3. Floors

Use `Floor` to define arenas or floor groups used by rounds.

- Create main floors
- Create child floors when you need sub-zones
- Keep naming clear for schedule and judging context

## 4. Users and permissions

Use `Users` to assign event staff.

Common levels:

- Read-only/support roles
- Manager/operator roles
- Administrator roles

Keep at least two administrators to avoid lockout risk.

## 5. Schedule

Use `Schedule` to build event-day structure.

Core actions:

- Create day pages and day items
- Drag and reorder schedule items
- Attach rounds to schedule blocks
- Publish or unpublish the schedule
- Print schedule output

## 6. Validation

Use `Validator` to catch setup issues before live operation.

It surfaces non-passing checks across rounds, teams, and classes. Resolve all critical items before event day.

## 7. Audience and public tools

Event-level audience controls:

- `Notifications`: create and publish follower updates
- `Screens`: manage display endpoints and media
- `Voting`: enable/disable audience voting
- `Live`: control public live/result visibility behavior
- `Sponsors`: sponsor setup and sales if enabled for your environment. See [Sponsors guide](/manager-guide/sponsors/).

## Event setup done checklist

1. Event image and status are correct
2. Competitions/floors/users are complete
3. Schedule pages are built and published state is intentional
4. Validator has no blocking errors
5. Public-facing modules are configured as intended
