---
layout: page
title: Getting a license model in place
permalink: /federation/getting-a-license/
parent: Federation
nav_order: 2
---

# Federation getting a license model in place

For the federation, this step is not about buying one personal license. It's about **defining how licenses will work for everyone else** — your dancers, schools, and officials.

## What this step is for

You'll:
- Decide whether licenses are required at all for your federation
- Define what license items and categories you offer (if needed)
- Decide, per item, who applies: the dancer, the club, or you
- Set up payment (if required) via Stripe
- Map licenses to competition classes
- Test the complete workflow before going live with competitors

## Who does this step

Different parts need different [staff roles](/federation/staff-roles/): **Owner** to connect
Stripe, **Administrator** to add licence items and map them to classes, **Manager** to approve
clubs and to issue, approve, suspend or revoke a licence.

## Important: Do you actually need licenses?

**Before starting this step, decide:**

| Question | Answer | Path |
|---|---|---|
| Do your dancers need formal approval/vetting before competing? | Yes → License model | No → Skip this |
| Do you need to collect payment or fees centrally? | Yes → License model | No → Skip |
| Do you need to track who's eligible for each competition? | Yes → License model | No → Skip |

**If you answered NO to all:**
- You don't need formal licenses
- Dancers can register without approval
- Skip to next federation setup steps

**If you answered YES to any:**
- Continue with licensing setup below

## There is no federation-wide "model"

It is tempting to think of self-service versus organization-managed as a choice you make once.
Vote4Dance does not work that way: **each licence item carries its own settings**, so one
federation can offer a dancer licence the dancer buys herself, a coach licence only the club can
apply for, and a judge licence only you issue — at the same time.

The settings that decide the route, per item:

| Setting | Effect |
|---|---|
| **Organization mode** | `Not allowed` — no club on the licence. `Optional` — either route. `Required` — the item needs a club, and that club must be an approved issuer. |
| Self-application | Whether a member, or a non-member, may apply for the item themselves. An item that forbids it tells the applicant "This license can't be applied for directly. Apply through your organization." |
| **Competition scope** | `Full season`, or `Single competition` (the applicant then supplies a competition). |
| **Kind** | `standard`, or `external` for licences verified against another federation's system — the applicant enters their MIN / WSCID / lidnummer, and external licences are lifetime, with your federation owning validity. |
| **Maximum uses per season** | Caps how many times the item can be applied for. Once reached, applicants see "This license item is no longer available — it has reached its maximum number of applications." |

Every licence records which route it came through as **Applied via: Self, Club or Federation
admin**, so you can always see how it arrived.

## Setting it up

### Step 1: Connect Stripe

Payments go to the federation's own Stripe account, and nothing priced can be paid until it is
connected. Connecting Stripe requires the **Owner** role — see
[staff roles](/federation/staff-roles/).

Until it is connected, applicants are told "This federation hasn't set up online payments yet.
Contact the federation to complete your license."

### Step 2: Define the licence items

`Admin → Federation → Licenses → License items`, which is where you "define the license products
the federation offers". Adding or editing items requires the **Administrator** role.

Each item has:

| Field | What it decides |
|---|---|
| **Name** | What applicants see. |
| **Code** | Your short identifier. |
| **Category** | `Dancer`, `Judge`, `Coach`, `Organizer`, `Scrutineer`, `Supervisor`, `Music` or `Other`. |
| **Kind** | `standard`, or `external` for licences verified against another federation's system. External items are lifetime: neither scope nor season applies, and the federation owns validity. |
| **Division** and **Discipline** | Which part of your structure the item belongs to. |
| **Competition scope** | `Full season` or `Single competition`. |
| **Organization mode** | `Required`, `Optional` or `Not allowed` — see above. |
| **Price** and **Currency** | Leave the price at zero for a free licence. |
| **Maximum uses per season** | Optional cap. |
| **Status** | Whether the item is available at all. |
| **Note** | Internal. |

### Step 3: Decide which classes accept which items

Defining items is not enough on its own. Open the relevant
`Division → Discipline → Class → License rules` and map the products a class accepts. This is
what makes a licence count at registration, and it needs the **Administrator** role.

### Step 4: Decide which clubs may issue

For items with organization mode `Required`, the club must be an **approved issuer**. Grant that
under `Admin → Federation → Organizations`, with the **Manager** role. A club that is itself
still pending federation approval blocks every licence it holds.

### Step 5: Review the applications

Applications arrive in **Needs your approval**, with a banner counting them. Each one shows four
checks, and you can only approve when they pass:

| Check | Fails when |
|---|---|
| **Club has approved this license** | The club has not approved it yet: "A manager or coach there has to approve it." |
| **Club approved by the federation** | The club itself is still pending — the application is *Blocked*. |
| **Payment received** | Payment is outstanding. |
| **Within the license window** | The window has not opened, or has closed. |

All four passing shows "All four checks pass · ready to approve". The queue tags each row
**Ready**, **Waiting** or **Blocked**, and blocked applications are shown rather than hidden.

You can approve in bulk — "Approve all (*n*)", or a selection — and licences held by clubs the
federation has not approved are skipped rather than forced through, with a count of what was
left alone. Payment status can also be set in bulk.

Statuses a licence moves through: **Draft**, **Pending**, **Active**, **Expired**, **Suspended**,
**Cancelled**, with payment status tracked separately. Issuing, approving, suspending and
revoking need the **Manager** role.

Full detail, field by field: [Federation admin](/federation-licenses/federation-admin/).

### Step 6: Test the whole thing before you announce it

Test with real accounts on the test site, in the routes you actually offer.

**Self-application**

1. Sign in as a test dancer with a date of birth on the account
2. `Account → Licenses`, select the federation, and check the item you expect is listed — if it
   is not, the item's organization mode or self-application settings are keeping it out
3. Apply, pay if priced, and check the licence appears with the status you expect
4. Approve it from federation admin and confirm it turns **Active**

**Club application**

1. Sign in as a test club admin whose club is connected to your federation and approved by it
2. `Organization → License Applications`, select a member, apply
3. Confirm it lands in the club's **Needs your action** when club approval is required, and in
   your **Needs your approval** afterwards
4. Check the four checks show what you expect, then approve

**The blocked case, which is worth seeing once**

Leave a test club *unapproved* and apply for one of its members. The application should appear in
your queue tagged **Blocked**, with "Approve the club first" — and a bulk approve should skip it
rather than issue it. Knowing what this looks like saves confusion in the first real season.

### Step 7: Tell your community

Document for the people who have to use it:

- Which licences your federation requires, per category
- For each one, who applies: the dancer, the club, or you
- The price and currency
- Links to the applying pages: [dancers](/dancer/getting-a-license/), [clubs](/school-club/getting-a-license/)
- That approval is a person reviewing an application, not an automatic timer, and what holds an
  application up — the four checks are worth stating plainly

## Troubleshooting

### "I added licence items but applicants do not see them"

Work down the item's own settings: is its **Status** available, does its **Organization mode**
allow the route the applicant is using, does it allow self-application, has it hit **Maximum uses
per season**, and is the applicant looking at the right federation? The self-service page shows
only what that person may apply for, and says "No licenses available for self-application" when
that set is empty.

Also check step 3: an item nobody has mapped to a class under `Division → Discipline → Class →
License rules` will not count where it matters.

### "Payment will not go through"

Stripe must be connected to the federation (Owner role). Applicants are also blocked by an
invalid price, an invalid currency or an invalid application fee on the item — each has its own
message telling them to contact the federation, so if applicants report those, the item is
misconfigured rather than the payment broken.

### "An application is stuck Pending"

Open it and read the four checks. In practice it is almost always the club: either the club has
not approved the request, or the club itself is not approved by the federation. Both are named on
the application.

### "I need to change an item after people have applied"

Existing licences keep the terms they were issued under. Take care with anything that changes
eligibility mid-season, and remember that an **active** licence's organization cannot be edited
at all: cancel it and issue a new one, which is what the **Change organization** flow does — the
new club represents the dancer from that day, valid through the same end date. See
[Club transfers](/federation/club-transfers/#moving-a-dancers-licence-to-a-new-club).

## When you're ready

Your licensing model is ready to go live when:
- ✓ All license items are configured
- ✓ Payment (Stripe) is connected (if charging)
- ✓ Approval workflow is set (auto or manual)
- ✓ End-to-end test completed successfully
- ✓ Dancers/schools know which license item to apply for
- ✓ You've communicated the process to your community

**Next:** Promote the license info to your competitors and open registration
