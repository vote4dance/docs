---
layout: page
title: Registration for event
permalink: /organizer/registration-for-event/
parent: Organizer
nav_order: 5
---

# Organizer registration for event

Registration is where all your setup becomes real for dancers, schools, and teams. Clear registration rules prevent most support escalations later.

## What this step is for

You will configure:

- who can register
- which classes they can enter
- when registration opens/closes
- what data is required
- how payment and eligibility checks are enforced

## Where to go

Use these pages together:

- [Registration and check-in](/manager-guide/registration-checkin/)
- [Event setup](/manager-guide/event-setup/)
- [Competition setup](/manager-guide/competition-setup/)

In Manager, open your event and navigate to **Registration**.

## Before you open registration

Do not publish registration until all are true:

1. classes/divisions are final
2. license requirements are configured
3. registration fields are configured
4. payment model is tested (if charging)
5. check-in workflow is assigned to staff

## Step-by-step

### Step 1: Configure registration windows

In **Registration settings**, set:

| Field | Example |
|---|---|
| Opens at | 2026-05-01 09:00 |
| Closes at | 2026-06-01 23:59 |
| Late registration | Enabled until 2026-06-05 |

Publish these dates externally before opening.

### Step 2: Define who can register

Choose eligibility mode:

- Public open registration
- Federation-only participants
- Invite-only participants

If federation licenses are required, ensure blocked users receive a clear message.

### Step 3: Configure required fields

Typical required data:

- dancer/team name
- birth year or age group
- organization
- license ID/status
- contact email

Avoid collecting optional data as mandatory unless legally required.

### Step 4: Configure class availability

For each class, verify:

- class is visible in registration form
- age/team-size constraints are correct
- required license mapping is correct

If class is hidden or misconfigured, participants will register into wrong alternatives.

### Step 5: Configure payment behavior

If charging:

1. Verify Stripe/payment setup is active
2. Set fees by class or entry type
3. Decide payment timing (immediate vs later)
4. Test one full payment flow

If not charging, explicitly show **No payment required**.

### Step 6: Test one real registration

Run a realistic end-to-end test:

1. Create test participant
2. Complete registration form
3. Submit and pay (if needed)
4. Verify entry appears in Manager
5. Verify class assignment and eligibility flags

Do not open publicly until this passes.

### Step 7: Open registration and monitor daily

After opening:

1. Monitor blocked/pending entries daily
2. Resolve missing data quickly
3. Communicate deadlines 7 days and 2 days before close

## Common blockers and fixes

### "Participants cannot see expected class"

Fix:

1. Check class visibility in registration settings
2. Check eligibility filters (age/team size/license)
3. Re-test with known participant profile

### "Registrations are pending due to license"

Fix:

1. Verify federation license mapping
2. Share exact resolution link/path with participant
3. Recheck entry after license activation

### "Payment succeeds but entry not visible"

Fix:

1. Refresh registration list with status filters
2. Check payment webhook delay
3. Reconcile payment ID against registration ID

### "Late entries create manual chaos"

Fix:

1. Define clear late-entry policy before close
2. Assign one operator for late-entry decisions
3. Track every manual change in audit notes

## What success looks like

Participants register without guesswork, support tickets are low, and entries are clean for check-in and round execution.

## Next step

Continue to [Creating and getting a ranking](/organizer/creating-and-getting-a-ranking/) if your event feeds federation ranking outcomes.
