---
layout: page
title: Licenses for your members
permalink: /school-club/getting-a-license/
parent: School/Club
nav_order: 5
redirect_from:
  - /school-club/renew-license/
---

# Licenses for your members

Your club applies for licenses **on behalf of its members, one member at a time**. There is no
club-wide license that covers everybody: every license in Vote4Dance belongs to one person, and
the club's part is applying for them, approving what they apply for themselves, and paying when
the club is the payer.

## Where it is done

`Organization → Administration → Licenses`, headed **License Applications**. You need the club's
**Manager** or **Administrator** role. The page needs your club to be connected to a federation
first — without that it just says "Connect this organization to a federation first."

Summary cards at the top count what **Needs your action**, what is **Active**, what is **In
progress**, and the **Members without a license**. Below them, the licenses are split into tabs. The
list opens on **Needs your action** when something waits for your club, and on **Active** otherwise.
When your federation does not ask clubs to approve licenses and nothing waits for you, the **Needs
your action** card and tab are left out.

| Tab | What is in it |
|---|---|
| **Needs your action** | Applications waiting for your club to approve or pay, from every season. "Nothing requires your action right now" when you are clear. |
| **Active** | Licenses that are valid for the season you picked |
| **In progress** | Applications that need nothing from your club: the federation still has to approve them or the dancer still has to pay. Dancers who apply for their own license land here when your federation does not ask clubs to approve. |
| **Expired or cancelled** | Licenses that have expired, were suspended or were cancelled |
| **All** | Every license for the season |

Each row in **Needs your action** says which it is: **Awaiting your approval** or **Payment due**.
Pick the season at the top of the list, or **All seasons**.

## Before your club can hold licenses at all

- ✓ The club exists in Vote4Dance and you have admin access to it
- ✓ The club is connected to the federation
- ✓ **The federation has approved the club.** This one blocks everything: while the club is
  pending, no license it holds can be issued. The federation sees it as "*club* is still pending
  federation approval, so no license it holds can be issued."
- ✓ For items that need it, the club is an **approved issuer** for that federation

## Before you start

| What you need | Why |
|---|---|
| **Which federation** | License items belong to a federation; you pick it first on the page. |
| **Which member** | You apply for one member at a time, chosen from your member list. |
| **The member's date of birth** | On *their* account. Without it they show as "No birthdate" and you cannot apply for them. |
| **Which license item** | The federation's product. Which items appear depends on the federation and the item's rules. |
| **The season year** | Unless the item is tied to a federation ID or a single competition instead. |
| **Who pays** | The item decides whether the payer is the member or the club. |

## Applying for a member

1. Open `Organization → Administration → Licenses`
2. Select the **federation**
3. Select the **Member**. If they have no date of birth on their account you are warned here and
   cannot continue — ask them to add it in their account settings.
4. Select the **License item**
5. Set the **Season year**. The field is replaced by a **Federation ID** field for items that
   need an external federation ID, and a **Competition ID** field appears for items scoped to a
   single competition.
6. Add a **Note** if the situation needs explaining
7. Press **Apply for license**

Repeat per member. A club with twenty dancers submits twenty applications — there is no bulk
apply on the club side. To find who still needs one, click **Members without a licence**: it opens
[Members](/school-club/club-admin/#members), where the **No licence this season** card lists them.

## Approving what members applied for themselves

When a member applies for an item that requires club approval, it lands in **Needs your action**
marked *Awaiting your approval*, with **Approve** and **Decline** on the row. Declining asks you
to confirm: "Decline license application for *name*?"

To handle several at once, tick them and press **Approve** or **Decline** above the list. You get
one message when they are done, and one saying how many could not be changed and why.

**Approve** only appears when your federation asks clubs to approve licenses. Without that, there
is nothing for the club to approve, and the application waits under **In progress**.

Your approval is one of four checks the federation sees before it can issue the license, so an
application nobody approves at the club simply sits there. The federation's own view says it
plainly: "*club* hasn't approved this request yet. A manager or administrator there has to
approve it." Coaches cannot approve licenses.

## Paying

Rows the club owes money on show as *Payment due*. Payment goes through Stripe to the
**federation's** account, not yours.

Two things to expect:

- **You cannot pay before approval.** The row says "Payment will be available once this license
  has been approved."
- **A member-paid item has no button for you.** Whether the payer is the member or the club is
  set on the license, not chosen at checkout.

## Following the license to Active

After the club's part is done, the license still needs the federation. It can be held up by any
of four checks:

| Check | Meaning |
|---|---|
| **Club has approved this license** | Your approval, above. |
| **Club approved by the federation** | The club itself must be an approved organization. |
| **Payment received** | "Approval opens once payment lands." |
| **Within the license window** | The item's validity window must be open. |

When all four pass, the federation sees "All four checks pass · ready to approve" — and then a
person at the federation approves it. There is no fixed turnaround.

Statuses you will see: **Draft**, **Pending**, **Active**, **Expired**, **Suspended**,
**Cancelled**. Payment status is separate, so a license can be paid and still pending.

## What members see

Nothing for them to do: an approved license appears on their own `Account → Licenses` with its
status. They do not "receive" or "link" anything, because the license was issued to them
personally from the start.

If a member cannot see a license you applied for, check that it is **Active** rather than
Pending, and that you applied for the right member.

## Troubleshooting

### "Nothing happens when I submit"

The form blocks on a missing member date of birth, a missing season year, and a missing
competition or federation ID where the item requires one. Check the field messages before
retrying.

### "The member number is not recognised"

For a federation that checks member numbers against its member register, press **Verify** next to the number. The message under the result says why it was not accepted:

- **Not found**: the number isn't in your club's member list in the register. Check the number, and that the member belongs to your club and not to another one.
- **Not active**: the member is in the register, but the membership is not active there. Ask the federation to check the membership status.
- **Birthdate does not match federation record**: the date of birth in the register differs from the one on the member's account. If the member's date is correct, do not change it; ask the federation to correct the register.
- **Verification failed**: the register could not be reached. Try again in a few minutes.

The federation can look up the same number on its side and see exactly what the register holds.

### "It was declined and I do not know why"

Declines come from the federation or, for club-approval steps, from your own club. The federation
records a note on the license; ask them for the reason and fix it before reapplying rather than
submitting the same application twice.

### "It has been pending for a long time"

Work the four checks in order — your club's approval, the club's own federation approval, the
payment, the validity window. Whatever is outstanding is named on the license. If all four pass,
it is waiting on a person at the federation.

### "A member's license needs to move to our club"

An active license's organization cannot be edited. The federation changes it by reissuing:
"Organization cannot be changed on an active license. Cancel this license and issue a new one."
The federation can do this from its side, and the new club represents the dancer from that day.
What the federation does, and what else a club change involves, is on
[Club transfers](/federation/club-transfers/).

### "We have new dancers mid-season"

Apply for each of them the same way. Nothing about an existing member's license changes, and
there is no seat count to increase, because licenses were never club-wide.

## When you're ready

Once a member's license is **Active**, that member can register for events, compete and earn
rankings. It is per person, so check them one by one before a competition rather than assuming
the club is covered.

## A new season

There is no renew button. **You apply again for the new season**, for each member. The old license
stays in history and turns **Expired** when its validity window closes. The new one is a fresh
application that goes through the same route and the same four checks as the first.

A dancer who registers with a license that has run out is told: "A required federation license has
expired or is for a different season — renew it for this season."

Two things to plan for:

- **Nothing carries over.** Approval from last season does not shorten this season's approval, and
  a club approval or a payment is needed again.
- **Get the season year right.** A license for the wrong season is as useless as an expired one,
  and it is the most common mistake when a new season starts.

### When to start

Work backwards from the first registration deadline of the new season, not from a fixed number of
days: each application needs the club's approval, a payment, and then a person at the federation.
Check that the licenses you need are **Active**, not only submitted, before registration opens.

### Applying for the new season

1. **Make a list** of the members who will compete next season, and which license item each
   needs.
2. **Check with the federation** whether its license items, prices or rules have changed for the
   new season.
3. **Apply for each member**, one at a time, on `Organization → Administration → Licenses`: pick
   the member, the item and the **new season year**. Members who apply themselves do it on their
   own `Account → Licenses`, and you approve them under **Needs your action**.
4. **Pay** the ones the club pays for. **Pay** is enabled once the license is approved.
5. **Follow them to Active.** A license can wait on the club's approval, the club's own federation
   approval, the payment, or the validity window. Whatever is missing is named on the license.

A license is identified by the member, the item and the season. There are no application numbers,
so keep your own list of who is still waiting.

### If the new season goes wrong

| Problem | Fix |
|---|---|
| You applied for the wrong season | A pending application can be removed with the delete button on its row. Then apply again. |
| Paid, but still Pending | Payment and approval are separate. The federation still has to approve it. Do not apply again. |
| You cannot apply for a member | They have no birth date on their account, or are no longer a member of the club. |
| You started too late | Apply first for the members with the nearest competitions, and tell the others when to expect theirs. |
