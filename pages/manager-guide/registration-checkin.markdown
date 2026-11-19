---
layout: page
title: Registration and check-in
permalink: /manager-guide/registration-checkin/
parent: Registration and sales
nav_order: 2
help:
  manager.comp.registration: the-registration-page
---

# Registration and check-in

For organizers and their helpers: the people who open registration, approve what comes in, turn it into participants, hand out start numbers and check the organizations (clubs) in on the day.

The path from an online registration to a dancer on the floor:

1. [Open a registration period](/manager-guide/registration-periods/): its dates, the payment, the prices and the classes.
2. [Entries come in](/manager-guide/entries-and-participants/#entries-coming-in) on the **Registrations** tab. Approve the ones that should dance.
3. [Import the approved entries](/manager-guide/entries-and-participants/#updateimport-participants). The import makes a participant of each one.
4. [Assign and print start numbers](/manager-guide/start-numbers/), before the participants go into rounds.
5. [Add the participants to their first rounds and plan the schedule](/manager-guide/entries-and-participants/#after-the-import).
6. [Check the organizations in](/manager-guide/organization-check-in/) on the day, and apply their answers before the first round.

An **entry**, or **registration**, is what a dancer or club submits. A **participant** is a row on the **Participants** page in Manager, made from an approved entry by the import. Rounds, start numbers, heats and results are built on participants, never on entries.

The guide is on five pages:

| Page | What is on it |
|---|---|
| **Registration and check-in** (this page) | The whole path, and the Registration page with its six tabs. |
| [Registration periods](/manager-guide/registration-periods/) | Creating a period, what each choice means, choosing the classes, registration rules and requested information, team names, and changing, reordering or deleting a period. |
| [Entries and participants](/manager-guide/entries-and-participants/) | The registration statuses, approving, rejecting or cancelling an entry, an entry paid twice after cancelling, which club a dancer represents, organizations that sign their dancers' entries, importing the approved entries as participants and what to do after the import, team images, and the **Data transfer** tab. |
| [Start numbers](/manager-guide/start-numbers/) | Assigning start numbers to a class or to the whole competition, the options, and printing them. |
| [Organization check-in](/manager-guide/organization-check-in/) | What organization check-in changes, the check-in window, checking an organization in yourself, applying the check-in and undoing it, the **Arrived today** column and dancer admission. |

Emails, the check-in QR code and how to test them are on [Emails and the check-in QR code](/manager-guide/emails/). Scanning at the entrance, arrivals and tickets are on [At the door](/manager-guide/the-door/). What to prepare and test before you open registration is on [Setting up registration for your event](/organizer/registration-for-event/).

## The Registration page

`Manager → Competition → Registration` has six tabs. In Scrutineer (Beta), the new version of the Manager app, some of them have another name.

| Tab | Name in Scrutineer (Beta) | What it is for |
|---|---|---|
| **Registrations** | **Sign-ups** | Every entry in the competition, with its status, payment and the **Imported** check. Here you approve, reject, email and import. |
| **Participants** | **Sign-ups by entry** | The entries counted per class and status. It is **not** the participant list: that is `Competition → Participants`. |
| **Organizations** | **Organizations** | The entries grouped by who pays them, with what is still owed and the payment reminders. |
| **Finances** | **Payments** | Expected, paid and outstanding totals per currency and period, and who still owes what. |
| **Registration period** | **Registration periods** | The registration windows: dates, payment, acceptance, prices, rules, form and classes. |
| **Data transfer** | **Import & export** | CSV import of participants, result downloads, and the reset and delete tools. Not an export to another system. |

While the competition has no registration period, the page opens on **Registration period**. After that it opens on **Registrations**.

**On the Registrations tab:**

- Click a column header such as **Participant name** to sort. The name column sorts by the team name, or by the dancers' names when the entry has no team name.
- Type in **Filter by name** above the table to find an entry by its team name or any dancer's name. It combines with the class, status and payment filters in the column headers.
- When the entries carry clubs, an **Organization** column shows the club each entry represents (see [Which club a dancer represents](/manager-guide/entries-and-participants/#which-club-a-dancer-represents)). Sort on it, or use its filter to list one club's entries. Long class and club names are cut short; hover to read them in full.
- Click a row, or the **+** at its start, to open it. You see the dancers, the answers they gave, the history of the entry and, when it has a payment, the **Payment** button.
- The pen at the end of a row opens **Edit registration**.

**On the Participants tab,** each class shows its number of entries per status: **Approved**, **Signed** (only when the event uses it) and **Preliminary**. Where dancers chose a role, the brackets show the number of **Leader**, **Follower** and **No role** dancers; a couple adds one of each. In classes split into a lead class and a follow class, the class's own count is the number of leaders or followers. A **Total** line at the top sums the entries of all listed classes. Counts are entries per class, so a dancer in several classes counts in each. Use the tab to see the balance of leaders and followers in each class, and how many entries are approved or still preliminary (the waiting list). Classes whose entries are all preliminary are listed too. Open a class to list its approved, signed and preliminary entries.

**On the Organizations tab,** each payer has one row per registration period: an organization, or **Self-pay** for dancers who pay for themselves. The row shows **Dancers**, **Entries**, a **Status** such as **Paid** or **Partially paid**, and what is **Outstanding**.

- To remind payers of what they still owe, press **Send all (ready)**, or tick rows and press **Send selected**, which shows the number of ticked rows. Then choose **Email the organization**, **Email each dancer** or **Email both**. A message says how many emails were sent and how many rows were skipped. The payers pay with **Pay now** on their registration list. **Last sent (organization)** and **Last sent (dancer)** show when a row was last reminded.
- A red tag such as **1 cancelled (paid 300 SEK)** means entries were cancelled after they had been paid, which you may need to refund. Hover it to see which ones. Entries cancelled before anyone paid are not shown, since they change nothing the payer owes.
- The dancer counts on this tab are per payer. For the number of different dancers per organization, see [Dressing rooms](/manager-guide/statistics/#dressing-rooms) in Statistics.

**On the Finances tab,** the totals are **Expected total**, **Marked paid** and **Outstanding**, followed by a table per registration period and one **By payer**. The tab says "These figures are estimates": the amounts are worked out from each period's price list and the entries registered now. Only the refunded amount is exact.
