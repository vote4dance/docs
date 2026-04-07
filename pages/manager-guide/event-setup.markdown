---
layout: page
title: Event setup
permalink: /manager-guide/event-setup/
parent: Manager Guide
nav_order: 1
---

# Event setup

Before you can run any competition, you need to create and configure the Event in Manager. This page guides you through setting up the foundational event details.

## Important: Prerequisites

Before starting event setup, confirm:
- ✓ You have an Organizer account signed in to Vote4Dance
- ✓ You have Manager access (you can see the Manager link in the menu)
- ✓ Your organization is already created and approved (if required by your federation)
- ✓ Your federation has confirmed your event is permitted

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

**If you're starting from scratch:**

1. In Manager, look for **+ Create Event** button or **New Event**
2. Click it
3. You'll see a form:

| Field | Explanation | Example |
|---|---|---|
| **Event Name** | The competition name that appears to audiences | "Northeast Regional Championship 2026" |
| **Event Code** | Short identifier (auto-generated, can edit) | "NRC2026" |
| **Organization** | Which school/federation runs this (pre-filled) | "Northeast Dance Federation" |
| **Start Date** | First day of competition | "03/15/2026" |
| **End Date** | Last day of competition | "03/15/2026" |
| **Location** | City/venue | "Boston Convention Center, Boston MA" |
| **Event Type** | Solo, duet, team, group, etc. | "Solo, Duet, Trio, Group" |

Fill in each field with your event details.

### Step 2: Event status and visibility

After creating the event, you'll see a **Status** section:

| Status | What It Means | When to Use |
|---|---|---|
| **Draft** | Event exists but not public | Use this while you're setting up |
| **Accepting Registrations** | Dancers and teams can register | Use when registration opens |
| **Judging** | Registrations closed, competition is running | Use when judging starts |
| **Completed** | Competition is over | Use after closing |

**How to change status:**

1. In Manager, go to your Event
2. Look for **Status** dropdown (usually top of the page)
3. Select the next status
4. Click **Save** or **Update**

**Timeline example:**
```
Today (March 1):        Status = Draft (you're building)
March 5 (Registration):  Status = Accepting Registrations
March 14 (Judging day): Status = Judging
March 16 (Done):        Status = Completed
```

**Visibility settings:**

When you create an event, decide:
- **Public** = Dancers can find it and register themselves (you publish a link)
- **Private** = Only people you explicitly invite can see it
- **Federation Only** = Only members of your federation can see it

(Location of visibility settings varies; look for "Visibility" or "Public/Private" toggle.)

### Step 3: Event details page

You'll see several sections on your Event page:

**Overview**
- Event name, dates, location
- Status and visibility
- Edit button to change any of these

**Classes** (or Divisions)
- Where you'll define solo, duet, group, etc.
- More details below in Competition Setup

**Rounds**
- Where you schedule which classes judge in which time slots
- More details below in Rounds section

**Public Info**
- Short description visible to dance participants
- Example: "Join us for the 8th annual Northeast Regional Championship. Ages 10-18 welcome."
- Edit this to make dancers interested in your event

**Venue Details**
- Address, parking info, etc.
- Dancers will see this if event is public

### Step 4: Upload event branding (optional)

You can add a logo or banner image:

1. Look for **Event Image** or **Logo Upload** section
2. Click **Upload Image** or **+ Add Image**
3. Select image from your computer (JPG or PNG)
4. Click **Save**
5. The image will appear on public event pages

**What image to use:**
- Event logo or competition branding (300x300 pixels works well)
- Tournament logo
- Hosting organization logo

## Common sections in Event Setup

### Overview

**What you set here:**
- Event name and code
- Start/end dates
- Location and venue details
- Brief description
- Public/private visibility

**Example Overview:**
```
Event Name: Northeast Regional Championship 2026
Event Code: NRC2026
Start: March 15, 2026
End: March 15, 2026
Location: Boston Convention Center, Boston, MA
Description: Regional championship for U10-U18 dancers.
Visibility: Public
```

### Classes (or Divisions or Categories)

Different competition categories. Examples:
- Solo (individual dancers)
- Duet (2 dancers)
- Trio (3 dancers)
- Group (4+ dancers)

**You'll set up classes in [Competition Setup](/manager-guide/competition-setup/).**

### Rounds and Judging Panels

On what days/times do specific classes judge?

Example:
```
Round 1: Saturday 9:00 AM - Group classes (Jazz, Contemporary)
Round 2: Saturday 2:00 PM - Solo classes (Jazz, Contemporary, Ballet)
Round 3: Sunday 9:00 AM - Finalistas
```

**You'll set up rounds in [Manager Guide - Rounds](/manager-guide/rounds/) or Competition Setup.**

### Registration & Payment Settings

If you want competitors to pay registration fees:

1. Look for **Payment Settings** or **Registration Fees**
2. Set the fee per dancer/team
3. Choose payment method (on-site, Stripe, etc.)
4. Dancers will see this during registration

## What each button does

| Button | What It Does | When to Use |
|---|---|---|
| **Save** | Saves all changes on current page | After any edit |
| **Publish** | Makes event publicly visible | When ready for dancers to register |
| **Close Registration** | Stops new registrations | When you have enough entries |
| **Start Judging** | Locks event, begins rounds | When first round is ready |
| **Print/Export** | Downloads participant list | For judges or staff |

## Verifying your event is set up correctly

After creating the event:

1. **Event name visible**
   - Go to Manager → Events
   - You should see your event listed
   - Click it to see the full details page

2. **Dates are correct**
   - Go to event details
   - Confirm start date = March 15, end date = March 15 (or your dates)

3. **Location shows up**
   - Confirmed on event details page
   - Public attendees will see this

4. **Status is Draft (if still building) or Accepting Registrations (if open)**
   - See Status dropdown at top of event page

5. **No error messages**
   - If you see red errors, fix the offending fields before continuing

## Next steps

After event setup:

1. **[Competition Setup](/manager-guide/competition-setup/)** — Define classes/divisions and scoring rules
2. **[Rounds](/manager-guide/rounds/)** — Schedule judging times and assign judges
3. **[Registration](/manager-guide/registration/)** — Open registration for dancers
4. **[Live Judging](/manager-guide/live-judging/)** — Run the competition

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

## When you're ready

Your event is ready to move to Competition Setup when:
- ✓ Event name and dates are correct
- ✓ Location is set
- ✓ Status is Draft (if still building) or public visibility is confirmed
- ✓ No error messages

Next: [Competition Setup](/manager-guide/competition-setup/) — Define classes and divisions
- `Voting`: enable/disable audience voting
- `Live`: control public live/result visibility behavior
- `Sponsors`: sponsor setup and sales if enabled for your environment. See [Sponsors guide](/manager-guide/sponsors/).

## Event setup done checklist

1. Event image and status are correct
2. Competitions/floors/users are complete
3. Schedule pages are built and published state is intentional
4. Validator has no blocking errors
5. Public-facing modules are configured as intended
