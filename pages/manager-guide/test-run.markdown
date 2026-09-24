---
layout: page
title: Test run and venue rehearsal
permalink: /manager-guide/test-run/
parent: Manager Guide
nav_order: 3.8
---

# Test run and venue rehearsal

Yes — you can simulate a complete competition before the real one, with your own computer,
the venue's projector and the tablets your functionaries will actually use. This is the single
best thing a first-time organizer can do, and nothing in it touches your real event data.

This page is the script for it: what to test at your desk, what to test at the venue, and
what "it works" looks like.

## What you can prove, and where

| Test | At your desk | At the venue |
|---|---|---|
| Event, classes and rounds are set up correctly | ✓ | |
| A full round: **Start judging** → marking → **Close round** → **Confirm round** → **Publish results online** | ✓ | ✓ |
| The judges' view, and each judge setting their PIN | ✓ | ✓ |
| Screens content and view order | ✓ | ✓ |
| Speaker flow and **Show on Screen** | ✓ | ✓ |
| Check-in, QR scanning, start numbers | ✓ | ✓ |
| Printing heat lists, judging sheets, diplomas | ✓ | ✓ (on the venue's printer) |
| Projector picture: cable, resolution, cropping, readability from the back row | | ✓ |
| The venue's Wi-Fi with all devices at once | | ✓ |
| Coverage on the floor, at the judges' seats and at the desk | | ✓ |
| Power, cable runs, table placement, sightlines | | ✓ |
| How long setup actually takes | | ✓ |

Do the desk rehearsal first. Arrive at the venue knowing the software, so the visit is about
the hall.

## Step 1: Create a practice event

Do not rehearse in your real event. Create a separate event for testing:

1. In Manager, create a new event.
2. On **How do you want to start?**, choose **Training competition with default settings**
   ("Best for your first event"). No federation rules, licenses or rankings get in the way.
3. If you take the longer path instead, set **Event mode** to `Practice event`. Practice
   events are not billed and are excluded from federation reporting, so nothing you do here
   shows up anywhere real.

The new event already contains a **Main floor**, one screen, default cafe products and a
schedule for the day with **Doors open** and **Competition start**. Classes, rounds and
judges you add yourself — which is part of what you are rehearsing.

**For test dancers, use Generate random competitors.** On `Manager → Competition → Participants`
there is a **Generate random competitors** action that exists only for practice events. That
is how you fill a round with enough entries to see real heats, lineups and results.

Name the event so nobody mistakes it for the real thing, for example
"TEST – Altira Cup (rehearsal, do not register)", and keep it non-public.

**One thing to expect at the venue:** a practice event shows a warning in every app,
including on the projector — *"Practice events have limitations! Only for practice and should
not be used for live competitions."* That is normal and only appears in practice mode. Tell
the venue's technician in advance so nobody thinks something is broken.

**Alternative:** you can also rehearse one round inside your real event with random test
teams, then clear them. That proves your real classes, panels and printouts. Do it only
before real registrations are imported, and use `Competition → Registration → Data transfer` carefully —
reset and delete are destructive.

## Step 2: Desk rehearsal (45–60 minutes, at home)

With just your own computer, and a phone or tablet beside it:

1. Open Manager and take one round through the whole lifecycle:
   **Not started** → **In progress** → **Closed** → **Confirmed** → **Published**.
2. Open the **Judging app's demo** to see exactly what the judges see, and mark a round
   yourself. The demo builds heats from the real round, so the heat and team counts match
   what you have set up. The same demo link goes out in the judges' invitation email, so your
   judges can practise the marking interface at home before the competition.
3. Open **Screens** in a second browser window and step through lineup, heat, live placement,
   result and prize ceremony as you run the round — one view at a time, which is all a screen
   device shows.
4. Open **Speaker** on your phone and use **Show on Screen** to drive the screen window.
5. Print a heat list, a judging sheet and a diploma to PDF.
6. Open **Problems** in Manager and read every failed test.

If this hour goes well, the rest is logistics.

## Step 3: Prepare the venue visit

**Book it properly.** Ask for the hall, the projector and the venue's technician for two to
three hours, with the sound and light tech present for the part that concerns them (they will
mostly be waiting — Vote4Dance does not drive sound or light, see
[Screens, projectors and venue technology](/manager-guide/screens/)).

**Send the venue the questions** from
[What to ask the venue technician](/manager-guide/screens/#what-to-ask-the-venue-technician)
in advance, so cables and network access exist when you arrive.

**Set up before you go:**

1. In the practice event, create the **stations** you will use — one per shared device: screen,
   check-in, lineup, speaker, cafe. See [Users, apps and stations](/manager-guide/users-and-stations/).
2. Nothing to print: you join a device by opening the station in Manager and letting the
   device's camera scan the QR **straight off your screen**. (The join link and the
   six-character code work too, if a camera will not cooperate.)
3. Add the functionaries who are coming as **users** with the apps they need.
4. Invite the judges who are coming, so their accounts are `Active` before you arrive.
   Each judge sets their own PIN on their own device the first time they open the Judging
   app — there is no event code for you to hand out — and you can reset a forgotten PIN from
   the judge's row in `Manager → Competition → Judges`.
5. Charge every tablet and bring chargers.

**Bring:**

- Your Manager computer, charged, with Google Chrome
- The computer that will drive the projector (ideally the one you will use on the day)
- HDMI cable plus USB-C / Mini-DisplayPort adapters
- A power strip and a long extension cable
- The tablets for judges, check-in, lineup and speaker
- An Ethernet cable and a USB-Ethernet adapter, in case there is a wired port
- A phone with a hotspot as a backup internet path
- Printed heat lists from the desk rehearsal, as the paper fallback

## Step 4: The venue rehearsal, step by step

Roughly two hours. Do it in this order — each step depends on the one before.

### A. Network first (15 min)

1. Connect the Manager computer to the venue Wi-Fi, or to the wired port.
2. Open Manager and confirm it loads and stays logged in.
3. Walk the hall with a tablet: the floor, the judges' seats, the desk, the check-in position.
   Watch for dead spots.
4. Confirm the Wi-Fi does not throw up a login page and does not drop the connection after a
   few minutes.

If the network fails here, stop and solve it with the venue. Nothing downstream works without it.

### B. Projector (20–30 min)

1. Connect your display computer to the venue's input and get a picture.
2. Set the output to a 16:9 resolution — 1920 × 1080 is a safe choice for a modern projector.
3. Join the device to the **Screens** station — open the station in Manager on your laptop and
   scan its QR from the screen — then press **Show** on the card for this screen. The floor and what it shows come from `Manager → Event → Screens`.
4. Go fullscreen, and use the **browser zoom hotkey (Ctrl +/-)** to fit the picture — nothing
   cut off at the edges.
5. **Walk to the back row and read it.** Start numbers and names must be legible from the
   furthest seat the audience will use. Browser zoom is your tool here. Also check it from
   the judges' seats and from the desk.
6. Disable sleep and screensaver on that computer.
7. Note what you did: which input, which resolution, which zoom level. You will want it on
   the day.

### C. Devices and people (15 min)

1. Judges' tablets: open the Judging app and let each judge set or enter their own PIN,
   then leave the tablets on the judges' table.
2. Lineup tablet (*insläpp/infösare*): join the Lineup station at the floor entrance.
3. Speaker tablet: join the Speaker station where the MC will stand.
4. Check-in tablet: join the Check-in station at the desk and test scanning a QR code.
5. In Manager, check the connectivity of judges and screens — every device should be visible.

### D. Run a full round for real (30 min)

Use the bootstrap practice classes and random teams, and run it as if the hall were full:

1. Press **Start judging**.
2. Lineup calls the heat; watch the lineup and heat displays on the projector.
3. The judges mark on their tablets. Watch the judges' completion status in Manager.
4. The speaker uses **Show on Screen** to drive the hall.
5. **Close round**, then **Confirm round**, then **Publish results online**.
6. Watch the result appear on the projector, then run the **prize ceremony view** with the
   spotlight — this is the moment worth rehearsing, because it is the one the audience
   remembers.
7. Print a heat list and a diploma, on the venue's printer if you are using it.

Then do it once more, faster, with the people who will hold those positions on the day. The
second run is the one that builds confidence.

### E. Write down the setup (10 min)

Before you leave, note: projector input, resolution, screen zoom, where each device sat, which
network each used, and how long the setup took. That note is your event-morning script.

## What "it works" looks like

| App | Verified when |
|---|---|
| **Manager** | Rounds move through all five statuses without validation blocks, and judge and screen connectivity is visible. |
| **Judging** | Every judge can set and enter their PIN, and their marks land in Manager. |
| **Screens** | The projector shows the right floor, fills the picture, is readable from the back row, and follows the round without being touched. |
| **Speaker** | **Show on Screen** changes the projector within a second or two. |
| **Lineup** | Calling a heat changes what the floor and the screens show. |
| **Check-in** | A QR code scans, a dancer is found, a start number is assigned and printed. |
| **Network** | All devices online at once, for the whole rehearsal, with no re-login. |

## After the rehearsal

1. Keep the practice event. It stays useful for training new functionaries, and the judges'
   demo link keeps working for judges who want another go.
2. Clear any test participants you created in the **real** event, and check **Problems** there.
3. Turn your notes into a one-page run sheet for the morning: order of setup, who does what,
   and the venue contact's phone number.
4. Fix anything the rehearsal exposed while you still have weeks, not hours.

## Event morning with limited time

If the rehearsal went well, the morning is short. This sequence takes about 45 minutes:

1. Power and network for the desk computer; open Manager and check **Problems** (5 min).
2. Display computer to the projector; Screens station, the right screen card, fullscreen,
   browser zoom as noted (10 min).
3. Judges' tablets out, each judge enters their own PIN (5 min).
4. Lineup, speaker, check-in and cafe devices join their stations (5 min).
5. Check-in opens; confirm club check-in status is being applied (10 min).
6. First rounds: confirm schedule, floor and teams are in place (5 min).
7. One dry heat on the floor before doors open, if you can (5 min).

Then follow [Live operations](/manager-guide/live-operations/).

## Things rehearsals usually catch

- Wi-Fi with a login page or a timeout that logs devices out mid-round.
- A projector that crops the edges, or a screen zoom that leaves the start numbers unreadable
  from the back.
- A display computer that goes to sleep during a long prize ceremony.
- HDMI cable runs that need an extender.
- Judges who were never invited, never activated their account, or were never added to the
  panel for a class.
- Functionaries who were given Manager access but not the app they actually need — a very
  common one, see [Users, apps and stations](/manager-guide/users-and-stations/).
- A round where **Start judging** is refused because of a missing schedule item or panel.
- Too few power outlets at the desk.

## Related pages

- [Planning your first competition](/manager-guide/first-competition/)
- [Screens, projectors and venue technology](/manager-guide/screens/)
- [Users, apps and stations](/manager-guide/users-and-stations/)
- [Technical requirements](/requirements/)
- [Live operations](/manager-guide/live-operations/)
