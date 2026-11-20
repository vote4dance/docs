---
layout: page
title: Running an event under a federation
description: Choose the federation for your event, and see which of its classes, license checks and rules then apply.
permalink: /organizer/joining-a-federation/
parent: Federations and seasons
nav_order: 1
redirect_from:
  - /organizer/getting-a-license/
---

# Running an event under a federation

You do not apply for anything in Vote4Dance to run an event under a federation. **You choose the
federation for the event**, and its classes, license checks and rules then apply.

Your federation may still have its own requirements outside Vote4Dance, such as sanctioning the
date or expecting your club to be a member. Ask them before you announce the event.

## How to choose the federation

**When you create the event.** The **Create event** form asks **What kind of event?** and has the
field **Use classes from** for the federation:

| Kind of event | What you choose in **Use classes from** |
|---|---|
| **Practice event** | The federation is optional. Leave **No federation (I make my own classes)**, or pick a federation to try out its classes. No points are given. Good for a first event or a test. |
| **Live competition** | You must pick the federation. Its rules, classes and license checks apply, and the event appears on the federation's Competitions list. |

The form belongs to Scrutineer (Beta), the new version of Manager. For the whole form, see
[Create a new event](/manager-guide/event-setup/#step-1-create-a-new-event).

**To change it later.** On **Event overview**, press **Edit event**. The federation is on the
**Federation** step, under **Select a federation**. Go to **Finalize** and press **Save changes**.
In Scrutineer (Beta) the field is **Federation**, under **Classes from** on **Event details**. See
[Event details page](/manager-guide/event-setup/#step-3-event-details-page).

The event moves to the new federation's list at once. **Do it before you build classes and open
registration**: classes map to the federation's classes, so changing federation afterwards means
redoing them.

## What the federation decides for your event

| What | How it reaches your event |
|---|---|
| **Age and level rules** | Each of your classes maps to a **Federation Class**, which carries its age and level rules. You do not enter ages yourself. |
| **License requirements** | Checked automatically when dancers register. See [Licenses at your event](#licenses-at-your-event). |
| **Registration rules** | For example who may register a competitor, whether custom team names are allowed, and dance-role requirements. |
| **Promotion points and rankings** | Processed when you **close** the competition. See [Results, points and rankings](/organizer/creating-and-getting-a-ranking/). |

## Licenses at your event

**You do not need a license of your own to use Manager.** Manager access is given per event, in
`Manager → Event → Users`, and no license is checked for it. What you need to know is how
licenses affect the dancers who register, and, for some federations, your officials.

### Dancers' licenses are checked at registration

If a class requires a license, a dancer without an **Active** license cannot register for it. The
class list shows the dancer why, before checkout.

- You do not check licenses by hand. Registration does it.
- Pending and expired licenses do not count. A dancer who is blocked has to sort it out with
  their club or federation, not with you. Point them to
  [Getting a license](/dancer/getting-a-license/).
- An event with no federation checks no licenses.
- For DSF competitions, [Problems](/manager-guide/validator/) in Manager also checks for
  conflicting license numbers among your participants.

Tell your dancers early that they need an **Active** license, not a pending one, before
registration closes.

### Licenses for your officials

Some federations require licenses for officials, such as judges and scrutineers. These are issued
by the federation or applied for by the official, not by you. Ask the federation which of your
officials need one. See [Licenses for officials](/scrutineer/#licenses-for-officials).

## Before you open registration

1. The event has the right federation.
2. Every class maps to the right **Federation Class**. See
   [Competition setup](/manager-guide/competition-setup/#step-1-create-classes).
3. [Problems](/manager-guide/validator/) in Manager shows nothing you have not dealt with.
4. You have asked the federation which classes require a dancer license this season, whether
   your officials need licenses, and whether it needs anything else from you or your club.

## Common problems

| Problem | Fix |
|---|---|
| The event was created as a practice event with no federation, but it should count for a federation | On **Event overview**, press **Edit event**. Choose the federation on the **Federation** step, and set **Event mode** to **Live competition** on the **Event** step: a practice event gives no points. Then check every class's Federation Class. See [Event details page](/manager-guide/event-setup/#step-3-event-details-page). |
| A class dancers expect is missing | The federation may not have that Federation Class, or it is inactive. Ask the federation. |
| Dancers are blocked by a rule you did not expect | The rule comes from the federation. Check the class's Federation Class, and ask the federation if it is wrong. |
