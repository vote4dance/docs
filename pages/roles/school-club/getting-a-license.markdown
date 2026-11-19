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
progress**, and the **Members without a licence**. Below them, the licenses are split into tabs. The
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

- The club exists in Vote4Dance and you are its **Manager** or **Administrator**
- The club has applied to the federation. See [Joining a federation](/school-club/joining-a-federation/)
- **The federation has approved the club.** Without this nothing else works: while the club is
  pending, no license naming it can be issued. The federation sees it as "*club* is still pending
  federation approval, so no license it holds can be issued."
- For license items that require a club, the federation has also allowed the club to issue
  licenses. See [Issuing is a separate permission](/school-club/joining-a-federation/#issuing-is-a-separate-permission)

## Before you start

| What you need | Why |
|---|---|
| **Which federation** | License items belong to a federation; you pick it first on the page. |
| **Which member** | You apply for one member at a time, chosen from your member list. |
| **The member's birth date** | On *their* account. Without it they show as "No birthdate" and you cannot apply for them. |
| **Which license item** | The license the federation offers. Which items you can choose depends on the federation's rules for each item. |
| **The season year** | Unless the item asks for a federation ID or covers a single competition instead. |
| **Who pays** | The item decides whether the payer is the member or the club. |

## Applying for a member

1. Open `Organization → Administration → Licenses`
2. Select the **federation**
3. Select the **Member**. If they have no birth date on their account you are warned here and
   cannot go on. Ask them to add it under **My account** → **Settings**.
4. Select the **License item**
5. Set the **Season year**. For an item that asks for the member's number in the federation's own
   register, a **Federation ID** field takes its place. For an item that covers a single
   competition, a **Competition ID** field is added.
6. Add a **Note** if there is something the federation should know
7. Press **Apply for license**

Repeat for each member. A club with twenty dancers makes twenty applications: you cannot apply
for several members at once. To find who still needs one, click **Members without a licence**: it opens
[Members](/school-club/club-admin/#members), where the **No licence this season** card lists them.

## Approving what members applied for themselves

When a member applies for an item that requires club approval, it lands in **Needs your action**
marked *Awaiting your approval*, with **Approve** and **Decline** on the row. Declining asks you
to confirm: "Decline license application for *name*?"

To handle several at once, tick them and press **Approve** or **Decline** above the list. You get
one message when they are done, and one saying how many could not be changed and why.

**Approve** only appears when your federation asks clubs to approve licenses. Without that, there
is nothing for the club to approve, and the application waits under **In progress**.

Your approval is one of four checks the federation sees on the license, so an
application nobody approves at the club stays where it is. The federation is told: "*club* hasn't
approved this request yet. A manager or administrator there has to approve it." Coaches cannot
approve licenses.

## Paying

Licenses the club has to pay for show as **Payment due**. Press **Pay** on the row and pay by
card. The money goes to the **federation**.

Two things to expect:

- **You cannot pay before approval.** The row says "Payment will be available once this license
  has been approved."
- **A license the member pays has no button for you.** Who pays, the member or the club, is
  set on the license. You do not choose it when you pay.

## Following the license to Active

Each federation chooses whether it approves licenses itself. Where it does not, a license becomes
**Active** by itself once it is paid, and once your club has approved it if the federation asks
clubs to approve. Where the federation approves licenses itself, it sees four checks on each
license:

| Check, as the federation sees it | Meaning |
|---|---|
| **Organization has approved this license** | Your approval, above. |
| **Organization approved by the federation** | The club itself must be approved by the federation. |
| **Payment received** | The license is paid. Until then the federation sees "Approval opens once payment lands". |
| **Within the license window** | The period the license is valid for has started and has not ended. |

When all four pass, the federation sees "All four checks pass · ready to approve", and a
person at the federation approves it. There is no fixed waiting time.

Statuses you will see: **Draft**, **Pending**, **Active**, **Expired**, **Suspended**,
**Cancelled**. Payment status is separate, so a license can be paid and still pending.

## What members see

There is nothing for them to do. The license shows on their own **My account** → **Licenses**
with its status. They do not have to accept it or connect it to their account: the license is
theirs personally from the start.

If a member cannot see a license you applied for, check that you applied for the right member.

## Troubleshooting

### "Nothing happens when I submit"

The form does not go through when the member has no birth date, the season year is missing, or a
competition ID or federation ID is missing where the item asks for one. Read the message under
each field and try again.

### "The member number is not recognised"

The member number is the number you type in the **Federation ID** field: the member's number in the federation's own register. The messages call it the member number. For a federation that checks these numbers against its member register, press **Verify** next to the number. The message under the result says why it was not accepted:

- **Not found**: the number isn't in your club's member list in the register. Check the number, and that the member belongs to your club and not to another one.
- **Not active**: the member is in the register, but the membership is not active there. Ask the federation to check the membership status.
- **Birthdate does not match federation record**: the birth date in the register differs from the one on the member's account. If the member's date is correct, do not change it; ask the federation to correct the register.
- **Verification failed**: the register could not be reached. Try again in a few minutes.

The federation can look up the same number on its side and see exactly what the register holds.

### "It was declined and I do not know why"

An application is declined by the federation or, where clubs approve, by your own club. The
federation writes a note on the license. Ask them for the reason and correct it before you apply
again. Do not send the same application twice.

### "It has been pending for a long time"

Go through the four checks in order: your club's approval, the federation's approval of the club,
the payment, the license window. The **What's needed** column on **Needs your action** names what
waits for your club. If nothing waits for you, the license waits for the federation.

### "A member's license needs to move to our club"

An active license's organization cannot be edited. The federation changes it by reissuing:
"Organization cannot be changed on an active license. Cancel this license and issue a new one."
The federation can do this from its side, and the new club represents the dancer from that day.
What the federation does, and what else a club change involves, is on
[Club transfers](/federation/club-transfers/).

### "We have new dancers mid-season"

Apply for each of them the same way. The other members' licenses do not change, and there is no
number of licenses to raise: every license belongs to one person.

## When you're ready

Once a member's license is **Active**, that member can register for events, compete and earn
rankings. It is per person, so check them one by one before a competition rather than assuming
the club is covered.

## A new season

A license is not renewed. **You apply again for the new season**, for each member, and each new
application needs the club's approval and the payment again. What that means for the dancer,
and what a dancer with an expired license is told at registration, is on
[Renewing for a new season](/dancer/getting-a-license/#renewing-for-a-new-season). The club's
part is below.

### When to start

Count back from the first registration deadline of the new season, not a fixed number of
days: each application can need the club's approval, a payment, and a person at the federation.
Check that the licenses you need are **Active**, not only applied for, before registration opens.

### Applying for the new season

1. **Make a list** of the members who will compete next season, and which license item each
   needs.
2. **Check with the federation** whether its license items, prices or rules have changed for the
   new season.
3. **Apply for each member**, one at a time, on `Organization → Administration → Licenses`: pick
   the member, the item and the **new season year**. Members who apply themselves do it on their
   own `Account → Licenses`, and you approve them under **Needs your action**.
4. **Pay** the ones the club pays for. **Pay** is enabled once the license is approved.
5. **Follow them to Active.** A license can wait for the club's approval, the federation's
   approval of the club, the payment, or the license window. See
   [Following the license to Active](#following-the-license-to-active).

A license is identified by the member, the item and the season. There are no application numbers,
so keep your own list of who is still waiting.

### If the new season goes wrong

| Problem | Fix |
|---|---|
| You applied for the wrong season | A pending application can be removed with the delete button on its row. Then apply again. |
| Paid, but still Pending | Payment and approval are separate. The federation still has to approve it. Do not apply again. |
| You cannot apply for a member | They have no birth date on their account, or are no longer a member of the club. |
| You started too late | Apply first for the members with the nearest competitions, and tell the others when to expect theirs. |
