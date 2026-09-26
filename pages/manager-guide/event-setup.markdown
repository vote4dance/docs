---
layout: page
title: Event setup
permalink: /manager-guide/event-setup/
parent: Manager Guide
nav_order: 1
help:
  manager.new: step-1-create-a-new-event
  manager.event: ""
  manager.event.edit: step-3-event-details-page
---

# Event setup

Before you can run any competition, you need to create and configure the Event in Manager. This page guides you through setting up the foundational event details.

## Important: Prerequisites

Before starting event setup, confirm:
- ✓ You have an Organizer account signed in to Vote4Dance
- ✓ You have Manager access (you can see the Manager link in the menu)
- ✓ Your organization is already created and approved (if required by your federation)

If any of these is missing, see [Organizer account creation](/organizer/account-creation/) first.

## What this step is for

You'll create the basic Event record that will hold all your competition data:
- Event name, location, date
- Visibility (public or private)
- Basic event settings
- Upload event branding (logo, images)

This is mostly one-time setup. After this, you'll configure competitions, rounds, and judging.

## Where to go

1. Sign in to Vote4Dance
2. Look for **Manager** in the navigation menu (top or sidebar)
3. Click **Manager**
4. You should see an **Events** page or a "Create Event" button

## Step-by-step: Create your event

### Step 1: Create a new event

In Manager, create a new event. The form is a short wizard.

**First question: How do you want to start?**

| Choice | When to pick it |
|---|---|
| **Training competition with default settings** | "Best for your first event." Skips the questions you do not need yet and sets the event up with defaults. This is the right choice for a first-time organizer and for anything you are only testing. |
| **Competition for a specific federation** | "Use this if you already know which federation setup and classes you need." You then pick the federation, and its rules, classes and license checks apply. There is no approval step: picking the federation is what puts the event on the federation's [Competitions](/federation/competitions/) list. |

**Then the event details:**

| Field | What it is |
|---|---|
| **What is the name of your event** | The name the audience sees. Note that *an event can contain several competitions*. |
| **Competition organizer** | The organizing club or company, as it should be shown. |
| **Event duration** | `Single day` or `Multiple days`, then the date or date range. |
| **Country** | Used for formats and public presentation. |
| **Contact email** | Optional, shown publicly. |
| **Short description** | Maximum 150 characters. |
| **Event mode** | `Practice event` or `Live competition`. Practice mode keeps the lightweight setup; live competition enables reusable competition profiles and billing. |
| **Competition level** | Optional, and only for a federation event that is not a practice event: a reusable level from that federation. |
| **Location** | The venue. There is a **Verify on Google Maps** link next to it — use it, because this is what people navigate by. |
| **Timezone** | Drives every time shown in schedules, on screens and in the app. |
| **Billing information** | Only for live competitions; not asked for practice events. |

The quick "training competition" path hides the organizer, duration, description, mode and
billing questions and fills them in for you. You can change all of them afterwards on the
event's details page.

**What gets created with it.** A new event does not arrive empty. You get a floor called
**Main floor** (see [Floors](/manager-guide/floors/)), one screen, a set of default cafe products, and a starting schedule for the
day with **Doors open** and **Competition start** blocks. Classes, rounds, judges and teams
are yours to add — see [Competition setup](/manager-guide/competition-setup/).

### Step 2: Event status

An event has four statuses, and **Change status** moves it between them:

| Status | What it means | Action that gets you there |
|---|---|---|
| **Hidden** | The event exists but nobody outside your team can see it. This is where it starts and where you build it. | **Revert to hidden** |
| **Published** | The event is public: it can be found, and registration can open. | **Publish competition** |
| **Closed** | The competition is over. For a federation event, closing is what triggers promotion-point processing — see [Post-event and exports](/manager-guide/post-event/). | **End competition** |
| **Archived** | Put away for good. | **Archive competition** |

Two guards stop you publishing too early, and both are worth knowing before you promise a
date:

- "Competition needs an image before it can be published." — upload the event image, see
  [Event image](/manager-guide/event-image/).
- "Competition needs billing information before it can be published." — only for live
  competitions; practice events are never billed.

Registration is **not** a status. Whether people can register is decided by the registration
periods you set up, independently of the event being published — see
[Registration and check-in](/manager-guide/registration-checkin/).

**Timeline example:**

```
Today:              Hidden (you are building)
8 weeks before:     Published, registration period opens
Competition day:    Published (rounds run, results publish per round)
After the event:    Closed (ends the competition, triggers promotion points)
Much later:         Archived
```

### Step 3: Event details page

You'll see several sections on your Event page:

**Overview**
- Event name, dates, location
- Status and visibility
- Edit button to change any of these

**Competitions**
- An event holds one or more competitions. Classes, participants, judges and rounds all belong
  to a competition, not to the event.

**Public info**
- The short description (max 150 characters) shown on the public event page

**Location**
- The venue, with a **Verify on Google Maps** link — use it, this is what people navigate by

### Step 4: Upload the event image

Your event needs one picture. It is used on the public event page, on the event
cards, in the mobile app and in the emails sent to judges and sponsors — and an
event cannot be made public without it.

1. Go to the event **Overview** section
2. Click the image box and choose **Upload**
3. Select the image from your computer

**What image to use:** a landscape **1600 × 900 JPG or PNG** with the important
part in the middle. Do not upload HEIC photos straight from an iPhone — they
cannot be processed.

See [Event image](/manager-guide/event-image/) for the full guidance, including
what gets cropped on each screen and how to convert an iPhone photo.

## Common sections in event setup

### Overview

The event's own details: name, organizer, dates, country, contact email, short description,
event mode, location, timezone and — for live competitions — billing information. This is also
where the event image and the status live.

### Classes

Classes belong to a competition, not to the event, and each one maps to a **Federation Class**
that carries its age and level rules.

**You'll set up classes in [Competition setup](/manager-guide/competition-setup/).**

### Rounds and judging panels

Rounds live inside a class, and each round is placed on a **schedule item** and, if you use them, a [**floor**](/manager-guide/floors/).
That is what gives the public schedule, the speaker and the screens their times. See
[Schedule and conflicts](/manager-guide/schedule/) and [Floors](/manager-guide/floors/).

**You'll set up rounds in [Competition setup](/manager-guide/competition-setup/).**

### Registration & Payment Settings

Fees are not set on the event. They belong to the **registration period**, which also decides
the payment mode (free, invoice, or online through Stripe), the currency and the price ladder.
See [Registration and check-in](/manager-guide/registration-checkin/).

## What you can print

Manager prints from the round and participant pages:

- Start numbers
- Heat lists
- Judging sheets
- Results
- Diplomas — see [Customizing diplomas](/manager-guide/diploma-customization/)
- The schedule
- Dressing-room lists — see [Statistics](/manager-guide/statistics/)
- The registration QR poster ("Scan to register")

## Verifying your event is set up correctly

After creating the event:

1. **The event is listed** in Manager, and opens to its details page
2. **Dates, location and timezone are correct** — the timezone drives every time shown to
   everyone, so check it even for a local event
3. **The event image is uploaded** — without it the event cannot be published
4. **Status is Hidden** while you build, and **Published** when it should be public
5. **Problems shows no failed tests**

## Next steps

After event setup:

1. **[Competition setup](/manager-guide/competition-setup/)** — Define classes, rounds, teams, judges and panels
2. **[Users, apps and stations](/manager-guide/users-and-stations/)** — Give each functionary the app they need
3. **[Registration and check-in](/manager-guide/registration-checkin/)** — Open registration for dancers
4. **[Test run and venue rehearsal](/manager-guide/test-run/)** — Prove the setup before the day
5. **[Live operations](/manager-guide/live-operations/)** — Run the competition

## Troubleshooting

### "I don't see a Create Event button"

1. Verify you're in Manager (click Manager link)
2. Look for **Events** page or section
3. Button might be labeled **+ New Event** or **Create Event**
4. If still not visible, you might not have organizer permissions (see [Organizer setup](/organizer/account-creation/))

### "I created the event but it's not showing up"

1. Refresh the page (Ctrl+R or Cmd+R)
2. Go to Manager → Events → find your event in the list
3. If it's not in the list, try creating it again (previous create might have had an error)

### "I need to change the event name"

1. Go to the event in Manager
2. Look for **Edit** button next to the event name
3. Change the name
4. Click **Save**

### "I set the wrong date"

1. Go to event details
2. Find **Overview** or **Event Details** section
3. Click **Edit**
4. Change the dates
5. Click **Save**

### "Can I delete an event?"

It depends on your federation's rules:
- If no dancers have registered: Usually yes, click **Delete** (if shown)
- If dancers have registered: Usually no — the event is locked. Contact federation admin if you really need to delete it.

## Other event modules

The event page has further sections you may want to configure:

- `Users` and `Stations`: who works the competition and which app each of them gets, plus the shared devices. See [Users, apps and stations](/manager-guide/users-and-stations/).
- `Screens`: which views the projectors and TVs show, and in which order. See [Screens, projectors and venue technology](/manager-guide/screens/).
- `Voting`: enable/disable audience voting.
- `Live`: control public live/result visibility behaviour.
- `Sponsors`: sponsor setup and sales if enabled for your environment. See [Sponsors guide](/manager-guide/sponsors/).

## Event setup done checklist

1. Event name, dates and location are correct
2. Event image is uploaded and the status/visibility is what you intend
3. Competitions, floors and users are complete
4. Schedule pages are built and the published state is intentional
5. **Problems** shows no failed tests
6. Public-facing modules are configured as intended
7. No error messages on the event page

## When you're ready

Next: [Competition setup](/manager-guide/competition-setup/) — define classes, rounds and judges.
