---
layout: page
title: Organization check-in
permalink: /manager-guide/organization-check-in/
parent: Registration and sales
nav_order: 6
help:
  manager.comp.checkin: check-in
---

# Organization check-in

For organizers and their helpers on the day of the competition. Here you open the check-in window, see which organizations (clubs) have said who dances and signed, and apply their answers, so that the participants who have withdrawn are cancelled before the first round.

You do this on `Manager → Competition → Check-in`. The steps before it, from the registration period to the start numbers, are on [Registration and check-in](/manager-guide/registration-checkin/).

## Check-in

There are three check-in mechanisms, and they are independent:

- **Organization check-in** (`Manager → Competition → Check-in`): each organization says which of its participants dance today and which have withdrawn, and signs. You then apply the signed answers to the competition. This is what cancels participants.
- **The Vote4Dance ID**: every dancer has a personal QR code, in the app, on their account page and in the approval email. Check-in desk staff scan it in the Check-in app to find the dancer, hand out the start number, see payment status and mark them **Arrived**. See [At the door](/manager-guide/the-door/).
- **Tickets**: what the audience shows. Sold from the event's Tickets page or at the desk, see [Shop](/manager-guide/shop/). Dancers do not need one unless the organizer says so.

For a paper list of every organization's dancers at the entrance, in case the network goes down, click **Print dancer lists** on the Check-in page. See [Dancer lists](/manager-guide/statistics/#dancer-lists).

## What organization check-in changes

Organization check-in works on participants, so run [Update/import participants](/manager-guide/entries-and-participants/#updateimport-participants) first. It has two halves.

**1. The organization answers and signs.** For each of its participants it chooses **Participating** or **Cancelled**, and then signs. This changes nothing in the competition yet.

**2. You press Import check-in.** For every organization that has signed, each participant it marked **Cancelled** is cancelled in the competition, with the reason the organization gave. A cancelled participant that is only in the first round of its class, and has not been judged there, is also taken out of that round.

What this means on the day:

- Participants marked **Participating** stay as they are.
- Participants of an organization that has **not signed** are not changed. They stay in the competition until the organization signs and you import again.
- **Arrived** at the desk protects nobody. A participant its organization marked **Cancelled** is cancelled when you import, however many of its dancers walked through the door. Arrival and organization check-in are different things.
- A couple with dancers from two organizations is cancelled as soon as one organization that has signed marked it **Cancelled**. If both have signed with different answers, the import stops with "Different status" and changes nothing.

Do not import while organizations are still working, and read the **Cancellations** list before you do: it shows exactly who will be cancelled.

## Organization check-in controls

The Check-in page has three parts:

- **Settings**: the check-in window, the time during which organizations can answer and sign.
- **Cancellations**: the participants that signed organizations have marked **Cancelled** and that are not applied yet, with start number, name, class, organization and status. A participant two organizations answered differently for is marked **Different status** in red.
- **Check-in**: the buttons **Import check-in**, **Reset check-in** and **Delete signatures**, and one row per organization.

The row of an organization shows:

| Column | Shows |
|---|---|
| **Status** | Empty: not signed yet. A red warning sign: signed, with cancellations that are not applied yet. A green check: signed with nothing waiting, or already applied. |
| **Organizations** | The organization. |
| **Cancelled** | How many of its participants are cancelled or marked **Cancelled**. |
| **Participants** | How many participants it has. |
| **Name**, **Time**, **Phone** | Who signed, when, and the phone number they gave. |

Click a row to see the organization's participants and their answers.

In Scrutineer (Beta), each organization is shown with its full name and its short name, for example **Föreningen Olands Bugg & Swing (OLAND)**. A club whose dancers only dance with partners from other clubs takes its name from those couples. A club with no full name in the entries is shown by its short name only. The classic Manager lists the organization by the short name on its participants. The buttons in Scrutineer (Beta) are **Apply … signed clubs to entries…**, **Undo applying** and **Delete all signatures**.

## Open the check-in window

1. Open `Manager → Competition → Check-in`.
2. Under **Settings**, press **Activate check-in** and confirm.
3. Pick the opening date and time and the closing date and time.
4. Press **Save changes**. Nothing is saved until you do.

The line under the dates says "Checkin is open" or "Checkin is closed". To move the window, press **Edit**, change the dates and press **Save changes**. **Disable check-in** removes the window.

While the window is open, each organization's team leader answers and signs in the Check-in app, under **Organization check-in**. There, **Mark all** sets every participant that is not cancelled to **Participating** at once, and **Sign** asks for a phone number. The club's own guide is [Confirm your roster on the day](/school-club/registration-for-event/#confirming-who-dances-on-the-day). Outside the window, only managers and check-in staff can answer and sign.

## Check an organization in yourself

A manager can answer and sign for an organization at any time, also when the window is closed.

1. On the Check-in page, under **Check-in**, click the organization's row.
2. For each participant, press **Participating** or **Cancelled**. **Cancelled** asks for the reason: **Sickness**, **Work/studies**, **Participants ceased**, **Private** or **Other**. Choose one and press **Ok**.
3. Press **Sign** below the participants and confirm. **Sign** is greyed out until every participant has an answer.

Once an organization has signed, its answers are locked. To change them, press **Unlock** below its participants and confirm, change the answers and sign again. **Unlock** is greyed out once the check-in has been imported.

## Apply the check-in

1. Look at the **Status** column under **Check-in**. An empty status means the organization has not signed. Chase those organizations, or [check them in yourself](#check-an-organization-in-yourself).
2. Read the **Cancellations** list. These are the participants that will be cancelled. Sort out any row marked **Different status** first: unlock one of the two organizations, correct the answer and sign again.
3. Press **Import check-in** and confirm. "Successfully imported check-in" confirms it.

**Import check-in** is greyed out when no organization has signed since the last import. When more organizations sign later, press it again: it picks up the new ones.

## Undo an applied check-in

- **Reset check-in** undoes the whole import. The participants it cancelled get back the state they had before, and every organization's signature is removed. Their answers are kept, so each organization only has to **Sign** again, and then you import again. A participant that the import took out of its first round is not put back: add it to the round again with **Add participants**.
- **Delete signatures** removes every organization's signature and leaves the cancellations as they are. It does not undo anything.

Both buttons are greyed out until a check-in has been imported.

To bring back one participant, do not reset. Open the participant on `Competition → Participants`, set **Cancelled** to **Participating** and save. Then add it to its round again if the import took it out.

## The Arrived today column

Once anybody has been marked arrived at the desk, the **Registrations** list gets an **Arrived today** column: `n/m` of the entry's dancers arrived today. Its filter has **Everyone arrived**, **Some arrived** and **Nobody arrived**. It is a live view of the entrance, not a check-in.

## Dancer admission

Whether an entry also lets a dancer *through the door* is a separate setting: every day of the event, only on the days they dance, or only with a ticket. It is on the Shop page and is explained on [At the door](/manager-guide/the-door/).

## Troubleshooting

| What you see | What it means | What to do |
|---|---|---|
| An organization cannot answer or sign, and the Check-in page says "Checkin is closed" | The check-in window is not open now. | Change the window under **Settings**, or [check the organization in yourself](#check-an-organization-in-yourself). |
| An organization cannot change its answers | It has signed. | Press **Unlock** below its participants. After an import, use **Reset check-in** first. |
| **Import check-in** is greyed out | No organization has signed since the last import. | Wait for an organization to sign, or sign for it. |
| "Different status" when you press **Import check-in** | Two organizations gave different answers for the same couple. Nothing was changed. | Find the couple in **Cancellations**, unlock one of the organizations, correct the answer, sign and import again. |
| A dancer is in the hall, marked **Arrived**, but the participant is cancelled | The organization marked the participant **Cancelled** and the check-in was imported. | Open the participant on `Competition → Participants` and set **Cancelled** to **Participating**. See [Undo an applied check-in](#undo-an-applied-check-in). |
