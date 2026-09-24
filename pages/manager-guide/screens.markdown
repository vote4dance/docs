---
layout: page
title: Screens, projectors and venue technology
permalink: /manager-guide/screens/
parent: Manager Guide
nav_order: 1.4
---

# Screens, projectors and venue technology

Everything the audience and the floor see — lineups, heats, live results, the prize
ceremony, the schedule, sponsors — comes out of the **Screens** app. This page covers how
a projector or TV gets its picture, who controls what it shows, and what to agree with the
venue's technician before the day.

## What Vote4Dance drives, and what it does not

| The venue's equipment | Does Vote4Dance drive it? |
|---|---|
| Projector, LED wall, TVs | **Yes** — through a computer or tablet running the Screens app, connected like any other picture source. |
| Sound system and microphones | No. Your DJ and the speaker use the venue's sound. Vote4Dance shows the running order; it does not play music or route audio. |
| Stage lighting | No. |
| Streaming / camera mixer | No, but a screen output can be fed into a mixer like any other HDMI source, and the blank/green-screen views exist for exactly that. |

So the only cable that matters for Vote4Dance is the one from your display computer to the
venue's picture input.

## How a screen gets its picture

A "screen" in Vote4Dance is **a browser showing the Screens app, in fullscreen, on a device
that is plugged into the display**. There is no separate box and nothing to install.

1. Decide which device drives each display. A laptop or a small computer with an HDMI output
   is the reliable choice for the main projector. A tablet can drive a TV, but a computer is
   easier to keep awake and fullscreen.
2. Connect the device to the venue's input (usually HDMI; bring a USB-C or Mini-DisplayPort
   adapter if your laptop has no HDMI port).
3. Give the device access to the Screens app — either sign in as a user who has **Screens**
   ticked, or let the device join a **Screens station** by scanning its QR code. A station is
   the better choice for a machine that stays in the hall all weekend: no personal login, and
   you can revoke it afterwards. See [Users, apps and stations](/manager-guide/users-and-stations/).
   Several devices can join the same station, which is how you get the same picture on several
   TVs.
4. Open the Screens app, pick the floor and the screen view, and put the browser in **fullscreen**.
5. Use the screen's **zoom** setting to fit the picture to the projector so nothing important
   sits under the edge.

**One screen device shows one screen view at a time, on one display.** For two projectors
showing different things, use two devices — or, on a computer with two picture outputs, two
separate browser windows, one dragged onto each display and each put in fullscreen. A single
window cannot feed two projectors with different content.

Manager shows the connectivity of the connected screens (and the judges), so the desk can
see whether a screen is still alive.

## The screen views you can show

The Screens app has a set of views you switch between, one at a time per device. The most
used ones:

| View | Shows |
|---|---|
| **Lineup** | Who is on the floor next, per heat, with start numbers. |
| **Heat** | The running heat. Shows names when the field is small, and can show dancer pictures. |
| **Live placement** | Marks arriving during a round, as moving rows. |
| **Results** | The result of a round, with podium and through-to-next-round marking. |
| **Results (last)** | The most recently published results, for the hall between rounds. |
| **Prize ceremony / podium** | Top-3 or full placements with a spotlight overlay, with a settable spotlight duration. |
| **Schedule** | The schedule with estimated times. **Schedule (no heats)** gives one card per block with its rounds — good for a foyer TV. |
| **Judges** | The panel, one judge at a time or pinned. |
| **Voting** | Audience voting, if enabled for the event. |
| **Sponsors** | Sponsor material between rounds. |
| **Blank / green screen** | For streaming overlays or when the hall should show nothing. |

Screens fade between views, and an animated video background can be used.

## Who controls what is shown

| Who | What they can do |
|---|---|
| **Screens** (the screen device itself) | Nothing. It is display only; it shows what it is pointed at. |
| **Speaker** | The floor console. Has **Show on Screen** buttons — a team, a judge, a schedule item, the result reveal for the prize ceremony. This is the app your MC drives the hall from. |
| **Supervisor** | Chooses the floor and controls the screens, without being able to change the setup. |
| **Manager** | The screen configuration itself: which views exist, their order, durations and settings. |

Agree before the day who has the screens: normally the speaker, with the desk as backup.

## Projector practicalities

These are the things that actually go wrong in a hall:

- **Aspect ratio.** Screens are designed for 16:9. If the projector is 16:10 or 4:3, expect
  black bars, and check that nothing is cut off at the edges.
- **Overscan and edge cropping.** Some projectors cut a few percent of the picture. Use the
  screen's zoom setting to pull the content in rather than fighting the projector.
- **Resolution.** 1920 × 1080 is the safe choice. If the projector reports something odd,
  set the computer's output to 1080p manually.
- **Sleep, screensaver and updates.** Disable sleep, screensaver and automatic updates on
  the display computer, and keep it on mains power. A screen that goes dark mid-final is
  almost always a power-saving setting.
- **Fullscreen and the mouse pointer.** Use the browser's fullscreen mode and move the
  pointer off the display, or it sits in the middle of the projection all day.
- **Cable length.** HDMI over 10–15 metres often needs an active cable or an extender. This
  is the venue's problem to solve, but you need to raise it early.
- **Test with the real cable, in the real seat.** A picture that works on your desk can fail
  on a 20-metre run through a stage box.

## Network

Every screen, tablet and judge device is a live client talking to the Vote4Dance cloud.

- Reliable internet for the whole event is a requirement, not a nice-to-have.
- Wi-Fi must not have a captive portal, a browser login or a forced timeout — those kill
  screens and judge devices mid-round.
- Wire the main display computer if the venue has an Ethernet port. It is the one device
  that must never blink.
- Have a backup path: a second router, or a phone hotspot you have actually tested.
- Count your devices and make sure the venue's access point can carry them.

Full list: [Technical requirements](/requirements/).

## What to ask the venue technician

Send this list to the venue before your visit. It is written to be forwarded as it is.

**Picture**

1. Which input does the projector take, and where is the socket we plug into (stage, desk, booth)?
2. Is it HDMI? What length is the cable run, and is an extender in place?
3. Which resolution and aspect ratio does the projector run at?
4. Can we see the picture from the scrutineering desk as well, or only from the floor?
5. Are there other screens (foyer TV, stage monitor) we can feed, and from where?
6. Can we leave our computer connected and powered in one place all day?

**Internet**

7. Is there Wi-Fi in the hall, and does it cover the floor, the desk and the judges' positions?
8. Does the Wi-Fi require a login or a portal page, and does it time out?
9. Is there a wired network port near the display computer?
10. Roughly how many devices can the network carry at once?

**Power and space**

11. Power at the desk, at the display computer and at the check-in desk?
12. Table space and chairs for the desk and the judges?
13. Can the judges' tablets be charged during the day?

**People and access**

14. When can we get in to set up, and who from the venue is present?
15. Who is our contact during the event if the picture or network fails?

## Troubleshooting

### The projector shows nothing

1. Check the projector is on the right input.
2. Check the computer is actually mirroring/extending to it (display settings).
3. Swap the cable before you doubt the app.

### The screen shows the wrong competition or floor

The Screens app picks a floor. Select the right one; if the device is a station, check it is
the station you intended.

### Edges are cut off, or content looks too small

Use the screen's zoom setting to fit the picture, and confirm the output is 16:9 at 1080p.

### The screen froze or went dark

Reload the page. If it went dark, power saving is the usual cause. Check the screen's
connectivity in Manager to see whether the device dropped off the network.

### Results are not appearing

Results only reach the screens once the round is **Published**. Check the round status in
Manager and the `Live` publish settings.

## Related pages

- [Users, apps and stations](/manager-guide/users-and-stations/) — access per app and shared devices
- [Test run and venue rehearsal](/manager-guide/test-run/) — prove the whole chain at the venue
- [Technical requirements](/requirements/) — devices, network, browser
- [Live operations](/manager-guide/live-operations/) — the event-day runbook
