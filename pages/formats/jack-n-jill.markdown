---
layout: page
title: Jack'n'Jill
permalink: /jack-n-jill/
parent: Special formats
nav_order: 1
---

# Jack'n'Jill setup

Use this guide for formats where prelims are judged by role and finals are judged as couples.

## Prerequisites

- Event and competition already created
- Classes page accessible
- You understand standard round lifecycle

## 1. Create class triplet per category

Create Jack'n'Jill classes as:

1. Leader class
2. Follower class
3. Final couple class

Even final-only workflows should keep this structure.

![Initial classes](/assets/images/jack-n-jill/class-initial.png)

## 2. Run Round guide

For each class:

- Set federation class correctly
- Confirm prelims do not include final rounds

![Round guide](/assets/images/jack-n-jill/round-guide.png)

Example setup:

![Class setup](/assets/images/jack-n-jill/class-setup.png)

Recommended prelim settings:

- Priority: `Alternates`
- Judging type: `Yes + Alternates`

## 3. Build schedule and assign round numbers

After schedule placement, use `Assign round numbers` so leader and follower tracks align.

![Assign beat](/assets/images/jack-n-jill/assign-beat.png)

## 4. Configure registration

Add both leader and follower classes in registration periods.

For WSDC-style workflows, configure external ID support.

![External ID](/assets/images/jack-n-jill/registration-external-id.png)

## 5. Judges and run-time execution

- Use one coherent judge panel across leader, follower, and final classes
- If chief judge is not ranking in prelims, use `Chief-Out`
- After prelims, merge/rotate to couples in Speaker

![Merge teams](/assets/images/jack-n-jill/merge-teams.png)
