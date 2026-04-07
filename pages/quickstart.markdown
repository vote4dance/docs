---
layout: page
title: Quickstart
permalink: /quickstart/
parent: Getting Started
nav_order: 1
---

# Quickstart

This flow gets a new event organizer from zero to a runnable event.

**Before you start:** If you haven't already, read [Understanding Vote4Dance](/understanding-vote4dance/) to understand the system and confirm you're an event organizer.

## 1. Create an event in Manager

[Manager](/understanding-vote4dance/manager-intro/) is the control panel for event organizers. Go there and create a new event, completing these 4 setup steps:

### Federation
Select whether this event is part of a [federation](/understanding-vote4dance/system-model/):
- **Has a federation** → Choose the federation that oversees this event (will apply federation policies like license requirements)
- **Independent event** → Choose "standalone" or "test" based on your setup

**Not sure?** Go to [Understanding Vote4Dance](/understanding-vote4dance/system-model/) to understand federations.

### Event details
- Event name (e.g., "Spring Regional Championship")
- Basic description

### Location and timezone
- Where the event is happening
- Timezone for schedules and results

### Billing or practice setup
- **Practice**: For testing and learning. Use bootstrap to auto-generate defaults
- **Billing**: For real events (federation may require payment processing)

If you're learning or testing, choose the practice setup and enable bootstrap.

## 2. Understand bootstrap (for practice events)

**Bootstrap** is an automated setup tool that creates baseline objects:

- A main floor
- A judging panel
- Default schedule structure
- Default screen configuration
- Practice classes, generated rounds, and random teams

Use bootstrap to learn workflows quickly. After your dry run, you can reset and configure a real event from scratch.

## 3. Build your event structure (fine-tune after bootstrap)

If you used bootstrap, you'll see pre-configured items. Otherwise, create:

In the [Manager Guide](/manager-guide/):
1. **Event setup**: Verify competitions, floors, user access, schedule
2. **Competition setup**: Define classes, rounds, teams, judges
3. **Registration and check-in setup**: Enable registration periods, check-in windows

## 4. Dry run before event day

Run a full test with your team:

1. Set one round to `Ready`
2. Have someone test the [Judging app](/building-blocks/) and enter sample scores
3. Close, confirm, and publish results in Manager
4. Verify that [Screens](/building-blocks/), [Speaker](/building-blocks/), and check-in work as expected

## 5. Live operations sequence

For each round during the actual event, follow this lifecycle:

1. `Open` — Ready for dancers to enter and judges to prepare
2. `Ready` — Locked in, judges can start scoring
3. `Closed` — No more judge input accepted
4. `Confirmed` — Results reviewed and correct
5. `Published` — Results are live (on screens, public results, rankings)

Repeat for each round.

## 6. After the event

From the [Post-event and exports](/manager-guide/post-event/) section, run:
- Result exports
- Ranking updates
- Award generation
- Data archival

---

## Need Help?

- **What's Manager?** → [Introduction to Manager](/understanding-vote4dance/manager-intro/)
- **What's a Federation?** → [System Model](/understanding-vote4dance/system-model/)
- **Detailed event configuration** → [Manager Guide](/manager-guide/)
- **Technical setup** → [Technical requirements](/requirements/)
