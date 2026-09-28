---
layout: page
title: Registration and check-in
permalink: /manager-guide/registration-checkin/
parent: Manager Guide
nav_order: 3
help:
  manager.comp.registration: the-registration-page
  manager.comp.registration.periods: registration-periods
  manager.comp.registration.data: data-transfer
  manager.comp.checkin: check-in
---

# Registration and check-in

This page covers the whole path from an online registration to a participant on the floor: the registration tabs, what each status means, how approved registrations become participants, and what to do next.

Emails, the check-in QR code and how to test them are on [Emails and the check-in QR code](/manager-guide/emails/). Scanning at the entrance, arrivals and tickets are on [At the door](/manager-guide/the-door/).

## The Registration page

`Manager → Competition → Registration` has six tabs:

| Tab | What it is for |
|---|---|
| `Registrations` | Every registration in the competition, with status, payment and the **Imported** check. This is where you approve, reject, email and import. |
| `Participants` | The approved registrations grouped by class. A read-only view of what will be imported. It is **not** the participant list itself — that lives under `Competition → Participants`. |
| `Organizations` | Registrations grouped per club, with the club's payment invitations. |
| `Finances` | Expected, paid and outstanding totals per currency and period, and who still owes what. |
| `Registration period` | The registration windows: dates, payment mode, acceptance mode, prices, rules and form. |
| `Data transfer` | CSV import of participants, result downloads, and the reset and delete tools. Not an export to another system. |

### Registration periods

For each period define:

- Name and start/end timestamps
- Payment mode: free, manual/invoice, or online (Stripe)
- Acceptance mode: manual or direct
- Currency and price ladder
- Rule/form configuration
- Allowed classes

You can reorder periods to control display order.

## Registration statuses

| Status | Meaning | How a registration gets there |
|---|---|---|
| **Preliminary** | Registered, not yet accepted. Not counted as a participant. | Automatic when the period uses **manual** acceptance, invoice payment, or when a functionary enters the registration. |
| **Signed** | Optional intermediate step for your own bookkeeping. Never set automatically, and no email is sent for it. | Manually, from the status dropdown. |
| **Approved** | Accepted. This is the only status the import uses. | Automatic when the online payment is completed, or when the period uses **direct** acceptance. Otherwise manually. |
| **Rejected** | Declined by the organizer. | Manually. |
| **Cancelled** | Withdrawn by the dancer or club, or set by the organizer. The row is kept. | The dancer/club cancels from their account, or manually. |
| **Deleted** | Removed. Unpaid rows disappear; paid rows are kept and marked deleted. | Manually. |

Two things that regularly cause confusion:

- **The list opens filtered on Preliminary.** Change the status filter to see approved, cancelled or all registrations. The filter is a viewing aid only.
- **Names in orange** are not an error. The row shows a **team name or custom name** instead of the dancers' names. Hover the name to see the dancers behind it. Every other row shows the dancers' names in the normal colour.

To change a status, use the dropdown on the row. If you have ticked rows with the checkboxes, the change applies to all ticked rows. "Send email on status change" at the bottom controls whether the dancers are emailed about the change (see [Emails](/manager-guide/emails/)).

Online payments in progress are hidden until they are paid. A registration whose checkout is abandoned is removed automatically.

## From registrations to participants

Registrations and participants are two different lists. A registration is what the dancer or club submitted. A participant is a row in the competition's lineup that rounds, start numbers, heats and results are built on. Nothing moves between them until you run the import.

### Update/import participants

On the `Registrations` tab, press **Update/import participants**.

1. The button collects **every Approved registration in the competition**, regardless of the filter you have set in the table. A message tells you how many matched.
2. A preview opens with four groups: **Added**, **Changed**, **Removed** and **Warnings**. Every row is pre-ticked. Untick anything you do not want applied.
3. Press OK to apply.

What the import does:

- Creates one participant per approved registration, with the dancers' names, clubs, years of birth, federation ids and class. Start numbers are left at 0.
- Updates participants whose registration changed (a new partner, a new club, a renamed team). Only the fields the registration knows about are touched, so start numbers and check-in state survive a re-run.
- Lists as **Removed** every participant that no longer has an approved registration. That includes registrations that were cancelled or rejected after an earlier import. If you leave the row ticked, the participant is deleted from the lineup.

You can run it as often as you like. The normal rhythm is once when the period closes, and once more after late approvals or cancellations.

The **Imported** check in the registrations list means "the registration and the lineup agree": an approved registration has its participant, or a cancelled one has none. An approved registration without the check, or a cancelled one with a participant still in place, is the signal to run the import again. Once a registration is imported, dancers can no longer edit it themselves; a manager edits it instead.

Things to know:

- Run the import on the **competition**, not on the parent event. A multi-day event with child competitions imports per competition.
- Do not mix CSV-imported participants and registration import in the same competition. Participants that did not come from a registration are shown as Removed by the registration import.
- The import does not send any email.

### After the import

The next steps, in the order the system expects them:

1. `Competition → Participants` — check the lineup per class. Add or correct participants by hand if needed.
2. **Assign start numbers** (button on the Participants page, or per class in the class footer). Choose the first number, whether a dancer keeps the same number across classes, and whether the order is randomised. This has to happen **before** participants are added to rounds; afterwards the button refuses.
3. **Print start numbers** from the same page.
4. `Classes` → open the class and its rounds → **Add participants** puts the class's participants into the first round. The button only appears when the class has participants that are not yet in the round.
5. `Event → Schedule` plans the rounds on days, floors and times (see [Schedule and conflicts](/manager-guide/schedule/)). The schedule structure can be built before the import, but participant counts, heat counts and estimated end times only fill in once the participants exist and are in rounds.
6. Check-in, then live rounds. See [Live operations](/manager-guide/live-operations/).

## Data transfer

The `Data transfer` tab (also `Competition → Data`) contains:

- **Import registrations** — upload a CSV of participants. The same preview as above; the file can be re-uploaded to update. Use this for events without online registration, not together with registration import.
- **Download results** — result CSV files.
- **Reset results** — removes results and empties the rounds, keeps participants, rounds and judges. Only available while the competition is private.
- **Delete registrations** — deletes all participants. Keeps rounds and judges. Do not use once online check-in has started.

## Team image upload

Team images can be uploaded from both manager and functionary workflows.

Where to upload:

- `Manager -> Competition -> Registration -> Edit registration -> Image`
- `Manager -> Competition -> Participants -> Edit participant -> Image`
- `Name registration (functionary app) -> Edit registration -> Image`

Accepted files and limits:

- Formats: `JPG`, `JPEG`, `PNG`, `HEIC`, `HEIF`
- Max size: `25 MB`
- One image per team (replace or remove as needed)

## Functionary photo booth workflow

Recommended event-day flow for a registration desk "photo booth":

1. Prepare a small booth area with stable lighting, fixed camera distance, and a clean background.
2. Use a green screen if you want easy background removal after capture.
3. Open the registration app from event overview (`Name registration`) and edit the team registration.
4. In the `Image` field, press `Upload` and select a photo (on mobile/tablet, camera capture may be available in the file picker).
5. Save the registration update.

Recommended image style for screens and match presentations:

- Best result: upload a `PNG` with transparent background.
- If you use green screen photos, remove the background before upload and export transparent PNG.
- Keep the subject centered with head and upper body clearly visible.

## Check-in

There are three check-in mechanisms, and they are independent:

- **Club check-in** (`Manager → Competition → Checkin`): each club confirms its whole roster for the day and signs. The manager opens a check-in window, follows the cancellation report, and applies the check-in to the competition. This is what decides who dances.
- **The Vote4Dance ID**: every dancer has a personal QR code, in the app, on their account page and in the approval email. Check-in desk staff scan it in the Check-in app to find the dancer, hand out the start number, see payment status and mark them **Arrived**. See [At the door](/manager-guide/the-door/).
- **Tickets**: what the audience shows. Sold from the event's Tickets page or at the desk — see [Shop](/manager-guide/shop/). Dancers do not need one unless the organizer says so.

### The Arrived column

Once anybody has been marked arrived at the desk, the registrations list gains an **Arrived** column: `n/m` of the registration's members arrived today, with a filter for everyone, some or nobody. It is a live view of the entrance, not a check-in — an unconfirmed club is still cancelled when check-ins are applied, however many of its dancers walked through the door.

### Club check-in controls

- Configure the check-in open/close window
- Track organization-level check-in status
- Mark team attendance/cancellation reasons
- Capture signed check-in submissions
- Apply/unapply check-in to competition state

### Recommended check-in sequence

1. Open the check-in window in settings
2. Let organizations mark teams and sign
3. Monitor the cancellation report
4. Apply check-in once submissions are complete
5. Unapply only if corrections are required

**What applying does, and why the timing matters:** teams the club has **not** confirmed are
**cancelled** when check-ins are applied. Do not apply while clubs are still working, and chase
the clubs that have not signed before you do — otherwise you cancel dancers who are standing in
the hall. Dancers marked **Arrived** at the desk are not protected by it either; arrival and
club check-in are different things.

### Dancer admission

Whether a registration also lets a dancer *through the door* is a separate setting — every day
of the event, only on the days they dance, or only with a ticket. It lives on the Shop page and
is explained on [At the door](/manager-guide/the-door/).

## Registration and check-in done checklist

1. Registration periods and rules are published correctly
2. Every registration that should dance is **Approved**; the rest are rejected or cancelled
3. **Update/import participants** has been run and every approved registration shows the Imported check
4. Start numbers are assigned and printed
5. Participants are added to the first rounds and the schedule is planned
6. The check-in window is active at the right time
7. Signed check-ins are applied before live rounds
