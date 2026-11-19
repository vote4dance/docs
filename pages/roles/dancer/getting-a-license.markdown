---
layout: page
title: Getting a license
permalink: /dancer/getting-a-license/
parent: Dancer
nav_order: 8
redirect_from:
  - /dancer/renew-license/
  - /dancer/federation-status/
---

# Getting a license

Many federations require a valid license before you can register for their events or earn rankings. Find out below which license you need, who applies for it, and how to follow it until it is active.

**Not all federations require licenses.** Some competitions are open to anyone without licensing. Ask your federation or the event organizer whether you need one.

## Who applies for the license

This is not a federation-wide setting — it is decided **per license item**, by that item's
organization mode and by whether it allows self-application:

| Route | When it applies | Where it is done |
|---|---|---|
| **You apply yourself** | The item allows self-application. You are usually the payer too. | `Account → Licenses`, see [Dancer self-service](/federation-licenses/dancer-self-service/) |
| **Your club applies for you** | The item requires an organization, or forbids self-application. The club is often the payer. | The club's **License Applications** page, see [Organization admin](/federation-licenses/organization-admin/) |
| **The federation issues it** | The federation adds it directly, for example for officials. | Federation admin, see [Federation admin](/federation-licenses/federation-admin/) |

Every license records which of these it came through, as **Applied via: Self, Club or Federation
admin**.

**If you don't know which applies to you:** open `Account → Licenses`, pick the federation, and
see what the list offers. What you can apply for yourself is exactly what is shown.

## Your club and the federation

You do not apply to a federation yourself. Your standing with the federation comes from two
places:

1. **Your club's link.** Your club applies to the federation and is either **Pending** or
   **Approved**. Until it is approved, no license naming that club can be issued. A club that
   applied late blocks its dancers, however early they applied.
2. **Your license.** The license is what makes you eligible, and it belongs to you personally.

## Before you start

Answer these first. If you cannot, ask your federation or your coach before touching anything.

| Question | Why it matters |
|---|---|
| **Which federation?** | Licenses belong to a federation, and you pick it first. |
| **Which license item?** | The federation defines the products ("license items"); you apply for one of them. |
| **Which season year?** | Most licenses are per season. Officials' and music licenses can be lifetime instead. |
| **Season or single competition?** | A license item covers either a **full season** or a **single competition**. |
| **Do I apply, or my club?** | Each license item is set to require an organization, allow one, or forbid one. That decides who can apply. |
| **Is my date of birth on my account?** | Applying is blocked without it: "A date of birth is required before applying for a license." |
| **Does the item need a federation ID?** | Some items require your external federation ID, verified beforehand. |

## Step-by-step: Get your license

### Step 1: Find the license item

**If you apply yourself:**

1. Sign in and open `Account → Licenses`
2. Under **Apply for a license**, select your **federation**
3. The page lists the items you can apply for *yourself*. It shows only those: an item is left
   out when the federation wants your club to apply, or when it needs a membership or an
   approved issuer you do not have. If the list is empty you get "No licenses available for
   self-application" — which is the answer, not an error.
4. Pick the item that matches you

**If your club applies for you:**

1. Tell your club they should apply. The club can only apply for its members, so join it
   first: see [Joining your club](/dancer/applying-for-a-school-club/)
2. They do it from the organization's **License Applications** page, picking you under **Member**
3. Your date of birth must be on your account first, or you are shown as "No birthdate" and
   they cannot apply for you
4. Skip to *Waiting for approval* below — they handle applying and, usually, paying

### Step 2: Fill in the application

| Field | What to do |
|---|---|
| **Federation** | The federation you are applying in. |
| **License item** | The item you picked. |
| **Season year** | The season. Left blank only for lifetime licenses, which are for officials, music and DJs — not dancers. |
| **Competition ID** | Only for an item scoped to a single competition. Leave blank for a season license. |
| **Organization** | Only when the item requires or allows it. Required items say so, and need an approved issuer membership. A club still awaiting approval shows "awaiting approval" and cannot be used yet. |
| **Federation ID** | Only when the item requires your external federation ID. It must already be verified, and the date of birth on the federation's record must match your account. |
| **Note** | Optional. |

Then press **Apply for license**.

Full field-by-field detail, including what the page hides and why:
[Dancer self-service](/federation-licenses/dancer-self-service/).

### Step 3: Pay, if you are the payer

Each license has a **payer type**. If it is *self* and the payment status is *unpaid*, your row
shows a **Pay** button, which takes you through Stripe checkout to the federation's own Stripe
account. If the payer is your organization, there is no button for you — the club pays from its
own page.

Two things stop payment before it starts: a federation that has not connected Stripe ("This
federation hasn't set up online payments yet"), and a license that is not approved yet
("Payment will be available once this license has been approved").

If your season fee already covers the item, the row says "Covered by your season fee for this
license group" instead of asking for money.

### Step 4: Wait for approval

A license can sit waiting on any of **four checks**, and this is the part worth understanding,
because it explains nearly every "why is my license still not active":

| Check | What it means |
|---|---|
| **Club has approved this license** | A club-held application needs a manager or administrator at the club to approve it. |
| **Club approved by the federation** | If your club is itself still pending federation approval, no license it holds can be issued. |
| **Payment received** | Approval opens once payment lands. |
| **Within the license window** | The license's validity window must be open. |

When all four pass, the federation sees "All four checks pass · ready to approve". The federation
still has to approve it — that is a person, not a timer, so there is no fixed waiting time.

### Step 5: Check the status

`Account → Licenses` lists your licenses with their status and payment status. A license is one
of:

| Status | Meaning |
|---|---|
| **Draft** | Created but not submitted for approval. |
| **Pending** | Submitted, waiting on one of the four checks or on the federation. |
| **Active** | Valid. This is what lets you register and earn rankings. |
| **Expired** | The validity window has passed — see [Renewing for a new season](#renewing-for-a-new-season). |
| **Suspended** | Held by the federation. Contact them. |
| **Cancelled** | Withdrawn or replaced. |

Payment status is separate: a license can be **paid** and still **pending**.

Do not apply twice because a license is slow. If the application is wrong and unpaid, a pending
one can be deleted ("Delete this license? You can apply again with the corrected ID") — only
pending applications can be deleted.

## Who applies, in practice

The license item decides this, through its **organization mode**:

| Organization mode | What it means for you |
|---|---|
| **Not allowed** | You apply yourself, with no club attached. |
| **Optional** | Either route works; the federation's own rules say which it prefers. |
| **Required** | The item needs a club, and an approved issuer membership. If the item also forbids self-application you are told "This license can't be applied for directly. Apply through your organization." |

## Your federation ID

Some federations also want a **federation ID** of their own: a MIN, WSCID or license number from
their system. You enter it on your account and press **Verify**. It ends up in one of these
states:

| State | Meaning |
|---|---|
| **Verified** | Good. This is what license items requiring an external ID need. |
| **Saved, not verified** | Stored but not checked yet. You cannot apply with it. |
| **Not found** | The federation's system does not recognise the ID. Where your club is chosen first, the number is not in that club's member list: check the number, and that you chose the club you are a member of. |
| **Birthdate does not match federation record** | The date of birth in the federation's member register differs from the one on your account. If the date on your account is correct, do not change it: ask your club or the federation to check your record in their register. |
| **Not active** | You are in the federation's member register, but your membership there is not active. Ask your club or the federation to check your membership status. |
| **Verification failed** | The federation's member register could not be reached. Try again in a few minutes. |

A few federations issue credentials per club instead of per person. There you pick your club
first. The field says so: "Select your organization above before verifying — this federation uses
per-organization credentials." If you apply without choosing a club, the application says: "Select
your club first. Member numbers are checked against each club's member list."

## What to do if things go wrong

### "My license is still Pending"

Work through the four checks above, in that order: is the club's own approval in, is the club
approved by the federation, is the payment settled, is the validity window open. Whatever is
outstanding is named on the license itself. If all four pass, it is waiting on a person at the
federation.

### "I paid but it is still not active"

Payment and approval are separate. A paid license stays **Pending** until the federation
approves it. Do not apply again; refresh, and if it stays paid-but-pending, contact the
federation.

### "I applied for the wrong item"

If it is still **Pending** and unpaid, delete it and apply again. If it is **Active**, contact
the federation — an active license's organization can only be changed by cancelling and
reissuing it.

### "The item I need is not in the list"

The list only shows what you may apply for yourself. Check the federation is the right one,
then whether the item expects your club to apply, and whether it needs a membership or an
approved issuer you do not have. If in doubt, ask the club or the federation.

### "It says my date of birth is missing"

Add it in your account settings, then apply. A club applying on your behalf hits the same block.

### "My federation ID will not verify"

The ID must be verified before you apply, the date of birth on the federation's record must
match your account, and a revoked membership cannot be used.

### "I have an account and a club, but I still cannot register"

The reason is almost always one of these. Check them in this order:

1. **The club is not approved by the federation yet.** Ask the club. They can see it on their own
   federation page.
2. **The club is approved but cannot issue licenses.** That is a separate permission the
   federation grants, and license items that require a club need it.
3. **The wrong federation is on the license.** A license belongs to one federation.
4. **Your federation ID is not Verified**, where the item requires one.
5. **Your license is Pending, not Active.** Pending does not count at registration.

## When you're ready

Once your license is **Active**, you can register for that federation's events, and your
results can count towards its rankings.

## Renewing for a new season

There is no renew button. **You apply again for the new season.** The old license stays in your
history and turns **Expired** when its validity window closes. The new one is a fresh application
that goes through the same route and the same four checks as the first.

If you register with a license that has run out, you are told: "A required federation license has
expired or is for a different season — renew it for this season."

Two things to plan for:

- **Nothing carries over.** Approval from last season does not shorten this season's approval, and
  a club approval or a payment is needed again.
- **Get the season year right.** A license for the wrong season is as useless as an expired one,
  and it is the most common mistake when a new season starts.

How to do it:

1. Check when your current license ends, on `Account → Licenses`.
2. Check that the new season has opened.
3. Apply for the new season the same way as last time: yourself
   ([Dancer self-service](/federation-licenses/dancer-self-service/)) or through your club
   ([Organization admin](/federation-licenses/organization-admin/)).
4. Check the **season year** before you submit.
5. Pay, if you are the payer.
6. Wait until the new license is **Active**. Pending does not count at registration.

**Do it before the first registration of the new season opens.** Approval is done by a person
at the federation, so there is no fixed waiting time. If you wait until registration day, there
is no time left when a check is still open.
