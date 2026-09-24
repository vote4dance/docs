---
layout: page
title: Getting a license
permalink: /dancer/getting-a-license/
parent: Dancer
nav_order: 2
---

# Dancer getting a license

Many federations require dancers to have a valid license before registering for events or earning rankings. This step walks you through understanding which license you need and how to get it.

**Not all federations require licenses.** Some competitions are open to anyone without licensing. Ask your federation or the event organizer whether you need one.

## What this step is for

You'll:
- Identify which license your federation requires
- Understand who applies (you or your school/club)
- Complete the application and payment
- Verify your license is active before registering for events

## Who applies for the licence

This is not a federation-wide setting — it is decided **per licence item**, by that item's
organization mode and by whether it allows self-application:

| Route | When it applies | Where it is done |
|---|---|---|
| **You apply yourself** | The item allows self-application. You are usually the payer too. | `Account → Licenses`, see [Dancer self-service](/federation-licenses/dancer-self-service/) |
| **Your club applies for you** | The item requires an organization, or forbids self-application. The club is often the payer. | The club's **License Applications** page, see [Organization admin](/federation-licenses/organization-admin/) |
| **The federation issues it** | The federation adds it directly, for example for officials. | Federation admin, see [Federation admin](/federation-licenses/federation-admin/) |

Every licence records which of these it came through, as **Applied via: Self, Club or Federation
admin**.

**If you don't know which applies to you:** open `Account → Licenses`, pick the federation, and
see what the list offers. What you can apply for yourself is exactly what is shown.

## Before you start

Answer these first. If you cannot, ask your federation or your coach before touching anything.

| Question | Why it matters |
|---|---|
| **Which federation?** | Licences belong to a federation, and you pick it first. |
| **Which licence item?** | The federation defines the products ("licence items"); you apply for one of them. |
| **Which season year?** | Most licences are per season. Officials' and music licences can be lifetime instead. |
| **Season or single competition?** | A licence item covers either a **full season** or a **single competition**. |
| **Do I apply, or my club?** | Each licence item is set to require an organization, allow one, or forbid one. That decides who can apply. |
| **Is my date of birth on my account?** | Applying is blocked without it: "A date of birth is required before applying for a license." |
| **Does the item need a federation ID?** | Some items require your external federation ID, verified beforehand. |

## Step-by-step: Get your license

### Step 1: Find the licence item

**If you apply yourself:**

1. Sign in and open `Account → Licenses`
2. Under **Apply for a license**, select your **federation**
3. The page lists the items you can apply for *yourself*. It shows only those: an item is left
   out when the federation wants your club to apply, or when it needs a membership or an
   approved issuer you do not have. If the list is empty you get "No licenses available for
   self-application" — which is the answer, not an error.
4. Pick the item that matches you

**If your club applies for you:**

1. Tell your club they should apply
2. They do it from the organization's **License Applications** page, picking you under **Member**
3. Your date of birth must be on your account first, or you are shown as "No birthdate" and
   they cannot apply for you
4. Skip to *Waiting for approval* below — they handle applying and, usually, paying

### Step 2: Fill in the application

| Field | What to do |
|---|---|
| **Federation** | The federation you are applying in. |
| **License item** | The item you picked. |
| **Season year** | The season. Left blank only for lifetime licences, which are for officials, music and DJs — not dancers. |
| **Competition ID** | Only for an item scoped to a single competition. Leave blank for a season licence. |
| **Organization** | Only when the item requires or allows it. Required items say so, and need an approved issuer membership. A club still awaiting approval shows "awaiting approval" and cannot be used yet. |
| **Federation ID** | Only when the item requires your external federation ID. It must already be verified, and the date of birth on the federation's record must match your account. |
| **Note** | Optional. |

Then press **Apply for license**.

Full field-by-field detail, including what the page hides and why:
[Dancer self-service](/federation-licenses/dancer-self-service/).

### Step 3: Pay, if you are the payer

Each licence has a **payer type**. If it is *self* and the payment status is *unpaid*, your row
shows a **Pay** button, which takes you through Stripe checkout to the federation's own Stripe
account. If the payer is your organization, there is no button for you — the club pays from its
own page.

Two things stop payment before it starts: a federation that has not connected Stripe ("This
federation hasn't set up online payments yet"), and a licence that is not approved yet
("Payment will be available once this license has been approved").

If your season fee already covers the item, the row says "Covered by your season fee for this
license group" instead of asking for money.

### Step 4: Wait for approval

A licence can sit waiting on any of **four checks**, and this is the part worth understanding,
because it explains nearly every "why is my licence still not active":

| Check | What it means |
|---|---|
| **Club has approved this license** | A club-held application needs a manager or coach at the club to approve it. |
| **Club approved by the federation** | If your club is itself still pending federation approval, no licence it holds can be issued. |
| **Payment received** | Approval opens once payment lands. |
| **Within the license window** | The licence's validity window must be open. |

When all four pass, the federation sees "All four checks pass · ready to approve". The federation
still has to approve it — that is a person, not a timer, so there is no fixed waiting time.

### Step 5: Check the status

`Account → Licenses` lists your licences with their status and payment status. A licence is one
of:

| Status | Meaning |
|---|---|
| **Draft** | Created but not submitted for approval. |
| **Pending** | Submitted, waiting on one of the four checks or on the federation. |
| **Active** | Valid. This is what lets you register and earn rankings. |
| **Expired** | The validity window has passed — see [Renew license](/dancer/renew-license/). |
| **Suspended** | Held by the federation. Contact them. |
| **Cancelled** | Withdrawn or replaced. |

Payment status is separate: a licence can be **paid** and still **pending**.

Do not apply twice because a licence is slow. If the application is wrong and unpaid, a pending
one can be deleted ("Delete this license? You can apply again with the corrected ID") — only
pending applications can be deleted.

## Who applies, in practice

The licence item decides this, through its **organization mode**:

| Organization mode | What it means for you |
|---|---|
| **Not allowed** | You apply yourself, with no club attached. |
| **Optional** | Either route works; the federation's own rules say which it prefers. |
| **Required** | The item needs a club, and an approved issuer membership. If the item also forbids self-application you are told "This license can't be applied for directly. Apply through your organization." |

## What to do if things go wrong

### "My licence is still Pending"

Work through the four checks above, in that order: is the club's own approval in, is the club
approved by the federation, is the payment settled, is the validity window open. Whatever is
outstanding is named on the licence itself. If all four pass, it is waiting on a person at the
federation.

### "I paid but it is still not active"

Payment and approval are separate. A paid licence stays **Pending** until the federation
approves it. Do not apply again; refresh, and if it stays paid-but-pending, contact the
federation.

### "I applied for the wrong item"

If it is still **Pending** and unpaid, delete it and apply again. If it is **Active**, contact
the federation — an active licence's organization can only be changed by cancelling and
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

## When you're ready

Once your license is **Active**, you can:
- Register for events (next step)
- Compete in competitions
- Earn rankings
- Transfer to teams (if applicable)

## Next step

Continue to [Applying for a school/club](/dancer/applying-for-a-school-club/) if your federation pathway depends on organization membership.
