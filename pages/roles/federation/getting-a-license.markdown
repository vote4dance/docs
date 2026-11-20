---
layout: page
title: Setting up licenses
description: "Define how licenses work in your federation: whether you need them, which license items you offer, who applies, who pays and which classes accept them."
permalink: /federation/getting-a-license/
parent: Federation Licenses
nav_order: 1
---

# Setting up licenses

Here you define how licenses work for your dancers, clubs and officials: whether your federation requires them at all, which license items you offer, who applies for each one (the dancer, the club, or you), how they are paid for, and which classes accept them. Test the whole workflow before you announce it.

## Who does this step

Different parts need different [staff roles](/federation/staff-roles/):

| Task | Role |
|---|---|
| Connect Stripe | Administrator or Owner |
| Add license items and map them to classes | Administrator or Owner |
| Approve clubs, and allow them to issue licenses | Manager and up |
| Issue, approve, suspend or revoke a license | Manager and up |

## Important: Do you actually need licenses?

Decide this before you set anything up:

- Do your dancers need formal approval or vetting before competing?
- Do you need to collect payment or fees centrally?
- Do you need to track who is eligible for each competition?

If the answer to all three is no, you don't need formal licenses: dancers can register without approval, and there is nothing to set up here. If any answer is yes, set up licenses as described below.

## There is no federation-wide "model"

It is tempting to think of self-service versus organization-managed as a choice you make once.
Vote4Dance does not work that way: **each license item carries its own settings**, so one
federation can offer a dancer license dancers buy themselves, a coach license only the club can
apply for, and a judge license only you issue — at the same time.

The settings that decide the route, per item:

| Setting | Effect |
|---|---|
| **Organization mode** | `disallowed` (**Not allowed** in the list of items) — no club on the license. `optional` — either route. `required` — the item needs a club, and that club must be an approved issuer. |
| **Who applies for a license** | A federation rule, read for the item's division and discipline ([Setting federation rules](/federation-rules/editor/)). **Dancer**: only the dancer applies. A club is not offered the item, and a club that tries to apply for a member is told "This license can't be applied for on behalf of an organization." **Club**: only the club applies. A dancer is not offered the item, and one who tries is told "This license can't be applied for directly. Apply through your organization." **Dancer or club**: both may apply; this is what applies when no level sets the rule. Whatever the rule says, federation staff can still add a license by hand. |
| Self-application | Whether a member, or a non-member, may apply for the item themselves. An item that forbids it tells the applicant "This license can't be applied for directly. Apply through your organization." |
| **Competition scope** | `season` (**Full season** in the list of items), or `single_competition` (**Single competition**; the applicant then supplies a competition). |
| **Kind** | `standard`, or `external` for licenses verified against another federation's system — the applicant enters their MIN / WSCID / lidnummer, and external licenses are lifetime, with your federation owning validity. |
| **Maximum uses per season** | Caps how many times the item can be applied for. Once reached, applicants see "This license item is no longer available — it has reached its maximum number of applications." |

## Setting it up

### Step 1: Connect Stripe

Payments go to the federation's own Stripe account, and nothing priced can be paid until it is
connected. Connect it under `Federation → Settings → Federation` with **Connect Stripe**, which
needs the **Administrator** or **Owner** role. Vote4Dance keeps a 5% application fee. See
[Federation settings](/federation/settings/#stripe-payout-account).

Until it is connected, applicants are told "This federation hasn't set up online payments yet.
Contact the federation to complete your license."

### Step 2: Define the license items

`Federation → Licenses → License items`, which is where you "define the license products
the federation offers". Adding or editing items requires the **Administrator** role.

Each item has:

| Field | What it decides |
|---|---|
| **Name** | What applicants see. |
| **Code** | Your short identifier. |
| **Category** | `dancer`, `judge`, `coach`, `scrutiny`, `supervisor`, `music`, `organizer` or `other`. |
| **Kind** | `standard`, `guest`, `first_start`, `one_off`, `membership`, or `external` for licenses verified against another federation's system. External items are lifetime: neither scope nor season applies, and the federation owns validity. |
| **Division** and **Discipline** | Which part of your structure the item belongs to. |
| **Competition scope** | `season` or `single_competition`. |
| **Organization mode** | `required`, `optional` or `disallowed` — see above. |
| **Price** and **Currency** | Leave the price at zero for a free license. A free license has nothing to pay: it becomes **Active** as soon as it is applied for, unless you require club or federation approval, in which case it waits as **Pending** for that approval only. |
| **Maximum uses per season** | Optional cap. |
| **Status** | Whether the item is available at all. |
| **Note** | Internal. |

### Step 3: Decide which classes accept which items

Defining items is not enough on its own. Open the relevant
`Division → Discipline → Class → License rules` and map the products a class accepts. This is
what makes a license count at registration, and it needs the **Administrator** role.

A license that a class accepts can still be turned away at some events. For example, a
single-competition license can be refused at championships. Set that on the competition level: see
[Licenses that don't count at a level](/federation/season-ranking/#licenses-that-dont-count-at-a-level).

### Step 4: Decide which clubs may issue

For items with organization mode `required`, the club must be an **approved issuer**. Grant that
on the club's page under `Federation → Members → Organizations` with **Allow license issuing**,
which needs the **Manager** role or higher. A club that is itself
still pending federation approval blocks every license it holds.

### Step 5: Review the applications

Applications arrive in **Needs your approval**. The tab, and **Licenses** in the federation bar,
show how many are waiting. Each one shows four checks:

| Check | Fails when |
|---|---|
| **Organization has approved this license** | The club has not approved it yet: "A manager or administrator there has to approve it." |
| **Organization approved by the federation** | The club itself is still pending — the application is *Blocked*. |
| **Payment received** | Payment is outstanding. |
| **Within the license window** | The window has not opened, or has closed. |

All four passing shows "All four checks pass · ready to approve". The queue tags each row
**Ready**, **Waiting** or **Blocked**, and blocked applications are shown rather than hidden.
**Approve** is unavailable only for a **Blocked** application: a **Waiting** one can still be
approved, for example before its payment has arrived.

You can approve a selection in one go with **Approve *n***, and licenses held by clubs the
federation has not approved are skipped rather than forced through, with a count of what was
left alone. Payment status can also be set in bulk.

Statuses a license moves through: **Draft**, **Pending**, **Active**, **Expired**, **Suspended**,
**Cancelled**, with payment status tracked separately. Issuing, approving, suspending and
revoking need the **Manager** role.

The Licenses screen day to day, task by task: [Federation admin](/federation-licenses/federation-admin/).

### Step 6: Test the whole thing before you announce it

Test with test accounts, in the routes you actually offer.

**Self-application**

1. Sign in as a test dancer with a date of birth on the account
2. `Account → Licenses`, select the federation, and check the item you expect is listed — if it
   is not, the item's organization mode or self-application settings are keeping it out
3. Apply, pay if priced, and check the license appears with the status you expect
4. Approve it from federation admin and confirm it turns **Active**

**Club application**

1. Sign in as a test club admin whose club is connected to your federation and approved by it
2. `Organization → Administration → Licenses`, select a member, apply
3. Confirm it lands in the club's **Needs your action** when club approval is required, and in
   your **Needs your approval** afterwards
4. Check the four checks show what you expect, then approve

**The blocked case, which is worth seeing once**

Leave a test club *unapproved* and apply for one of its members. The application should appear in
your queue tagged **Blocked**, with "Approve the organization first" — and a bulk approve should skip it
rather than issue it. Knowing what this looks like saves confusion in the first real season.

### Step 7: Tell your community

Document for the people who have to use it:

- Which licenses your federation requires, per category
- For each one, who applies: the dancer, the club, or you
- The price and currency
- Links to the applying pages: [dancers](/dancer/getting-a-license/), [clubs](/school-club/getting-a-license/)
- That approval is a person reviewing an application, not an automatic timer, and what holds an
  application up — the four checks are worth stating plainly

## Troubleshooting

### "I added license items but applicants do not see them"

Work down the item's own settings: is its **Status** available, does its **Organization mode**
allow the route the applicant is using, does it allow self-application, has it hit **Maximum uses
per season**, and is the applicant looking at the right federation? The self-service page shows
only what that person may apply for, and says "No licenses available for self-application" when
that set is empty.

Also check step 3: an item nobody has mapped to a class under `Division → Discipline → Class →
License rules` will not count where it matters.

### "Payment will not go through"

Stripe must be connected to the federation (an Administrator or an Owner does that). Applicants are also blocked by an
invalid price, an invalid currency or an invalid application fee on the item — each has its own
message telling them to contact the federation, so if applicants report those, the item is
misconfigured rather than the payment broken.

### "An application is stuck Pending"

Open it and read the four checks. In practice it is almost always the club: either the club has
not approved the request, or the club itself is not approved by the federation. Both are named on
the application.

### "I need to change an item after people have applied"

Existing licenses keep the terms they were issued under. Take care with anything that changes
eligibility mid-season, and remember that an **active** license's organization cannot be edited
at all: cancel it and issue a new one, which is what the **Change organization** flow does — the
new club represents the dancer from that day, valid through the same end date. See
[Club transfers](/federation/club-transfers/#moving-a-dancers-license-to-a-new-club).

## When you're ready

Your licenses are ready to go live when:

- all license items are configured
- Stripe is connected, if you charge for any item
- you have tested each route you offer from application to **Active**
- dancers and clubs know which license item to apply for, and how
