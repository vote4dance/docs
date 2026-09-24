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
| **Judges** | Open the Judging app on their own device and mark. They need an invitation from you, a device and Wi-Fi; the PIN they set themselves. |
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
| 2 | How you start, and the event mode | Event creation | The first question is **How do you want to start?** — `Training competition with default settings` ("Best for your first event") or `Competition for a specific federation`. Further in, **Event mode** is `Practice event` or `Live competition`; live competitions enable reusable competition profiles and billing. Both shape everything after them. |
| 3 | Event image | `Manager → Event → Overview` | The event **cannot be made public without it**. 1600 × 900 JPG/PNG, not HEIC. See [Event image](/manager-guide/event-image/). |
| 4 | Floor | `Manager → Event → Floor` | Every round runs on a floor. A new event already has a **Main floor**, which is enough for most competitions. |
| 5 | Competition and classes | `Manager → Event → Competitions`, then `Competition → Classes` | What dancers register into. Each class maps to a Federation Class, which carries its age and level rules. See [Competition setup](/manager-guide/competition-setup/). |
| 6 | Rounds per class | Inside each class, under `Manager → Competition → Classes` | What you actually run on the day. Use the **Round guide** to generate them rather than building each one by hand. |
| 7 | Schedule | `Manager → Event → Schedule` | Each round sits on a schedule item, which gives it a time and an order and feeds the public schedule, the speaker and the screens. A dated day header is also what the dressing-room and admission-per-day features need. |
| 8 | Judges and panels | `Manager → Competition → Judges` | Without a panel, **Start judging** is refused: "Assign a judging panel to this class or round before starting judging." |
| 9 | Judge invitations | `Manager → Competition → Judges` | Judges are invited by email and show as `Not invited`, `Invited` or `Active`. Each judge sets their own PIN on their own device the first time they open the Judging app — there is no event-wide code for you to hand out, and you can reset a forgotten PIN from the judge's row. |
| 10 | Registration period | `Manager → Competition → Registration → Registration period` | Without an open period nobody can register. See [Registration and check-in](/manager-guide/registration-checkin/). |
| 11 | Users and stations | `Manager → Event → Users` and `→ Stations` | Each functionary gets exactly the apps they need; shared devices join as stations. See [Users, apps and stations](/manager-guide/users-and-stations/). |
| 12 | Screens | `Manager → Event → Screens` | One screen per projector or TV, each with a label, a floor and what it shows. One device drives one screen, so count your displays. See [Screens, projectors and venue technology](/manager-guide/screens/). |
| 13 | Event status | `Manager → Event → Overview` | An event starts **Hidden**. **Publish competition** makes it public — which needs the event image, and billing information for a live competition. See [Event setup](/manager-guide/event-setup/). |

Before the day, open **Problems** in Manager and resolve everything it flags. Problems runs a
set of automatic tests over your setup — start-number and license conflicts, rounds without
judges, participants scheduled in two overlapping rounds, advancement that does not add up —
and re-runs them whenever you change something.

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
| **Day before / morning** | Set up screens and devices, run one live round with test data if you still can, clear **Problems**, then set the event to its live status. |
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
