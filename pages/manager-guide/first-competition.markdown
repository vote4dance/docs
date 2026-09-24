---
layout: page
title: Planning your first competition
permalink: /manager-guide/first-competition/
parent: Manager Guide
nav_order: 0.5
---

# Planning your first competition

This page answers the question most first-time organizers ask first: **what is actually
required of us as organizer, and what do we have to enter into Vote4Dance ourselves?**

Read it once from top to bottom. Every step links to the page with the details.

## Short answers

| Question | Answer |
|---|---|
| **Do we create the competition ourselves in Vote4Dance?** | Yes. You create the event and the competition in [Manager](/understanding-vote4dance/manager-intro/) yourself, and you keep control of it the whole way. Nobody does it for you. |
| **Do we need permission first?** | Only if the competition runs under a federation. Then the federation must have approved your club and confirmed the competition before you open registration. An independent competition needs no approval. |
| **Who enters the dancers?** | The dancers and their clubs, through registration on the public event page. You approve the registrations and import them. You can also enter and add walk-ins yourself at the desk. |
| **What does Vote4Dance handle on the day?** | Start numbers, check-in, heats and lineup, judge marks, results, screens, speaker, diplomas and exports. |
| **What does Vote4Dance *not* handle?** | Music, microphones and lighting. Those stay with your DJ and the venue's technician. See [Screens, projectors and venue technology](/manager-guide/screens/). |
| **Can we test everything before the day?** | Yes, and you should. See [Test run and venue rehearsal](/manager-guide/test-run/). |

## Who does what

| Who | Responsibility |
|---|---|
| **You (organizer)** | Creates the event and the competition, sets classes, rounds, schedule, judges, registration and prices, staffs the functionary positions, runs the day. |
| **Federation** (if any) | Approves the club and the competition, owns the rules: licenses, age and class rules, ranking points. See [Federation](/federation/). |
| **Clubs and dancers** | Register themselves, pay, hold valid licenses, confirm their roster at check-in. |
| **Judges** | Open the Judging app on their own device and mark. They need nothing else from you but a device, the judge PIN and Wi-Fi. |
| **Venue** | Projector, sound, light, power and internet. Your Vote4Dance display computer plugs into their projector — nothing more. |

## Before you open Manager: decide these

You can enter all of this later, but the setup goes much faster if you have decided it first.

1. **Dates and times** — competition day(s), doors open, first round, prize ceremony.
2. **Venue** — name and address as the audience should see it, plus how many floors you run in parallel.
3. **Classes** — which classes dancers can enter: discipline, age group, level/class, team size.
4. **Round structure per class** — is it a final only, or qualification → semifinal → final, and how many go through each time.
5. **Judges** — who judges, how many per panel, which classes each panel takes.
6. **Registration** — when it opens and closes, what it costs, and whether payment is online (Stripe), invoice or free.
7. **Functionaries** — who sits at the desk, who runs the screens, who is the speaker, who lets dancers on to the floor.
8. **Devices** — count them: one computer for Manager, one computer per projector/TV, one tablet per judge, one tablet or phone each for check-in, lineup and speaker. See [Technical requirements](/requirements/).
9. **Awards** — medals/diplomas per class, and whether you print diplomas on site.

## What must be entered in Vote4Dance

This is the minimum. Everything else is optional polish.

| # | What | Where | Why it must be there |
|---|---|---|---|
| 1 | Event (name, dates, location, description) | `Manager → Events → Create event` | Holds everything else. See [Event setup](/manager-guide/event-setup/). |
| 2 | Federation or standalone/practice choice | Event creation | Decides which rules and license checks apply. Choose this correctly at creation; it shapes everything after it. |
| 3 | Event image | `Manager → Event → Overview` | The event **cannot be made public without it**. 1600 × 900 JPG/PNG, not HEIC. See [Event image](/manager-guide/event-image/). |
| 4 | Floors | `Manager → Event → Floors` | Every round runs on a floor. One floor is enough for most competitions. |
| 5 | Competition and classes | `Manager → Competition → Classes` | What dancers register into. See [Competition setup](/manager-guide/competition-setup/). |
| 6 | Rounds per class | `Manager → Competition → Rounds` | What you actually run on the day. Use the Round Guide to generate them. |
| 7 | Schedule blocks | `Manager → Event → Schedule` | Gives rounds a time and an order, and feeds the public schedule, the speaker and the screens. |
| 8 | Judges and panels | `Manager → Competition → Judges` | A round cannot go to `Ready` without judges. |
| 9 | Judge PIN | Event settings | Judges unlock the Judging app with it. Decide it early and share it on the day, not before. |
| 10 | Registration period | `Manager → Competition → Registration → Registration period` | Without an open period nobody can register. See [Registration and check-in](/manager-guide/registration-checkin/). |
| 11 | Users and stations | `Manager → Event → Users` and `→ Stations` | Each functionary gets exactly the apps they need; shared devices join as stations. See [Users, apps and stations](/manager-guide/users-and-stations/). |
| 12 | Screen configuration | `Manager → Event → Screens` | What the projector shows and in which order. See [Screens, projectors and venue technology](/manager-guide/screens/). |
| 13 | Event status and visibility | `Manager → Event → Overview` | Nothing is public until you set it. |

Before the day, run the **Validator** in Manager and resolve everything it flags as blocking.

## Timeline

| When | Do this |
|---|---|
| **8–10 weeks before** | Create the event. Confirm federation approval if applicable. Upload the event image. Decide classes. |
| **6–8 weeks before** | Build classes, rounds and the schedule. Set prices and the registration period. Make the event public and announce it. |
| **4 weeks before** | Book functionaries and judges. Count the devices you need and borrow what is missing. Send the [venue questions](/manager-guide/screens/#what-to-ask-the-venue-technician) to the venue's technician. |
| **2–3 weeks before** | Add judges and panels. Do a desk rehearsal on your own computer with a practice event. See [Test run and venue rehearsal](/manager-guide/test-run/). |
| **1–2 weeks before** | Book the venue rehearsal: projector, Wi-Fi and the real devices. Registration closes. |
| **Registration closed** | Approve registrations, import participants, assign start numbers, check licenses. |
| **2–3 days before** | Final schedule. Print heat lists and judging sheets as backup. Charge every tablet. Create the stations and print their QR codes. |
| **Day before / morning** | Set up screens and devices, run one live round with test data if you still can, run the Validator, then set the event to its live status. |
| **On the day** | Follow [Live operations](/manager-guide/live-operations/). |
| **After** | Confirm and publish all rounds, then [Post-event and exports](/manager-guide/post-event/). |

## Functionaries and which app each one gets

Vote4Dance gives access per app, so decide who gets what before the day.

| Position | App | Device |
|---|---|---|
| Organizer / scrutineering desk (*sekretariat*) | Manager | Computer with Google Chrome |
| Chief scrutineer / observer | Supervisor | Computer or tablet |
| Speaker / MC | Speaker | Tablet |
| Screen operator | Screens | Computer connected to the projector |
| Floor entrance (*insläpp/infösare*) | Lineup | Tablet or phone |
| Check-in desk (*anmälan*) | Check-in | Tablet or phone with a camera for QR scanning |
| Cafe | Cafe | Tablet or phone |
| Judges | Judging | One tablet per judge |

Full detail, including the naming traps: [Users, apps and stations](/manager-guide/users-and-stations/).

## Next steps

1. [Event setup](/manager-guide/event-setup/) — create the event
2. [Competition setup](/manager-guide/competition-setup/) — classes, rounds, judges
3. [Registration and check-in](/manager-guide/registration-checkin/)
4. [Test run and venue rehearsal](/manager-guide/test-run/) — prove it works before the day
5. [Live operations](/manager-guide/live-operations/) — the event-day runbook
