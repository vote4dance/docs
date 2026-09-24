---
layout: page
title: Emails and the check-in QR code
permalink: /manager-guide/emails/
parent: Manager Guide
nav_order: 3.5
---

# Emails and the check-in QR code

Vote4Dance sends a small, fixed set of emails around registration. There is no email template editor and no per-competition sender: every email goes out from `noreply@vote4dance.com`, in the dancer's language (Swedish or English), with the competition name as the heading.

## Emails a dancer receives automatically

| When | Who gets it | What it contains |
|---|---|---|
| A registration is created and lands on **Preliminary** or **Approved** | Every dancer on the registered team | Confirmation with the registration code and the status. If the status is Approved, the dancer's **personal check-in QR code** is included. |
| An online payment is completed | Every dancer on the team | The same confirmation, now as Approved, **with the QR code**. |
| A manager changes the status to Approved, Rejected or Cancelled | Every dancer on the team | The new status. Approved includes the QR code. Sent only if **Send email on status change** is ticked. |
| A manager sends payment invitations | The club, or the dancers, that pay later | Link to pay the outstanding registrations. |
| A dancer or club cancels their own registration | Nobody | No email is sent for a self-cancellation. |

Not sent: nothing goes out for **Signed**, nothing is sent when you run **Update/import participants**, and there is no reminder before the event. A team with no linked user accounts (a name-only entry) gets no email at all.

Stripe sends its own payment receipt, and an invoice to the club when a club pays.

## Send email on status change

The checkbox at the bottom of `Registration → Registrations`. It is ticked by default every time you open the page and it is not saved per competition. Untick it while you tidy up statuses in bulk and do not want dancers notified about every step; tick it again before the final approval so the QR codes go out.

## Email participants

The **Email participants** button on the same tab sends a free-text message to the dancers of the **ticked rows**. It is greyed out until at least one row is ticked. Tick the header checkbox to select every row in the current filter.

- You write a subject and a message. The email uses the standard Vote4Dance layout with the competition name as heading.
- Recipients are hidden from each other (BCC). Replies are not delivered anywhere, so put a contact address in the message if you want answers.
- The QR code is **not** attached to this email. Use it for practical information; use the status email for the QR code.
- Each send is logged on the registration.

## The check-in QR code

Every dancer with a user account has one personal QR code. It is the same for every competition and never expires, so a dancer who has kept an older approval email can still use it.

How it reaches the dancer:

- It is embedded in the **Approved** status email, with the caption "Scan the code for faster checkin". A couple receives two emails, each with that dancer's own code.
- The dancer can also open it themselves, as their **Vote4Dance ID**: on the website under `Account → Vote4Dance ID`, and in the app on the **Profile** tab. The card shows their photo, birth date, nationality and club around the same check-in QR code, with the hint "Show your Vote4Dance ID at the desk to identify yourself and check in." A dancer who has lost the email does not need anything from you — point them at their own account.
- The photo on the card is what the desk compares with the face in front of them, so it is worth asking dancers to add one. Manager can tell you how many registered dancers have no photo yet.

What happens when it is scanned:

- The code is meant to be scanned by **check-in desk staff**, using the phone camera on a device that is signed in to the Check-in app (as a user with the Check-in app, or as a Check-in station, see [Users, apps and stations](/manager-guide/users-and-stations/)).
- The desk sees the dancer's registrations for the event, their status and payment, and can assign and print the start number from there.
- A dancer scanning their own code lands on a login page. The code identifies a person to the desk; it is not an admission ticket.

The QR code does not replace [club check-in](/manager-guide/registration-checkin/#check-in). The club still confirms its roster; the QR code speeds up the desk.

Do not confuse it with the other QR codes in the product: the **registration poster** QR on the Registration page ("Scan to register", it opens the public registration form), the **station** QR that connects a shared device, and **ticket** QR codes, which are per ticket and are redeemed rather than identifying a person.

## How to test the emails

The test environment sends real emails the same way as the live site, so you can test end-to-end with your own address:

1. Create a test dancer with an email address you can read, and register them for a competition on the test site.
2. Open `Manager → Competition → Registration → Registrations`, change the filter to show the registration, and make sure **Send email on status change** is ticked.
3. Set the status to **Approved**. The email with the QR code arrives within a minute.
4. To test the desk side, open the Check-in app on the test site and scan the code with the phone camera, or open the link the code contains. The same lookup box also takes a ticket code, or a name or email typed by hand.
5. To check the dancer's own route, sign in as the test dancer and open `Account → Vote4Dance ID`.

If no email arrives, check the dancer's account has an email address, and look in spam. Emails come from `noreply@vote4dance.com`.
