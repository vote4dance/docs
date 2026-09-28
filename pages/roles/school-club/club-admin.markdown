---
layout: page
title: Club admin screens
permalink: /school-club/club-admin/
parent: School/Club
nav_order: 1.5
help:
  public.organization.admin: permissions
  public.organization.member: members
  public.organization.teams: competitors
  public.organization.registrations: registration
  public.organization.federation: federation
  public.organization.licenses: licenses
---

# Club admin screens

This page is a reference for the club's admin screens: what each one lists, what you can do there, and which club role you need to do it. For the longer flows, follow the links to the task pages.

Open your club from your account, then open **Administration** in the club's sidebar. It holds **Permissions**, **Members**, **Competitors**, **Registration**, **Federation** and **Licenses**. **Administration** is only there for a club's coaches, managers and administrators. A plain member sees only **Home**.

## Roles

A club has four roles, and each one includes everything the role below it can do. You set roles on [Permissions](#permissions).

| Role | In short |
|---|---|
| **Member** | Belongs to the club, with no admin access. Coaches can put a member on a competitor. |
| **Coach** | Day-to-day work: competitors, registrations and payment. |
| **Manager** | Everything a coach does, plus membership approval and the club's licences. |
| **Administrator** | Everything a manager does, plus roles, federations and the club's own details. |

Which screens each role sees in the sidebar:

| Screen | Member | Coach | Manager | Administrator |
|---|---|---|---|---|
| [Permissions](#permissions) | No | No | Yes, read-only | Yes |
| [Members](#members) | No | Yes | Yes | Yes |
| [Competitors](#competitors) | No | Yes | Yes | Yes |
| [Registration](#registration) | No | Yes | Yes | Yes |
| [Federation](#federation) | No | No | Yes | Yes |
| [Licenses](#licenses) | No | No | Yes | Yes |

A hidden screen can still be opened by typing its address, but the server refuses anything your role does not allow. Vote4Dance system administrators can do everything on every screen.

The club's details and its website embeds are not under **Administration**. They are on the club's **Home** page, and only administrators see them: **Edit organization** opens the **Organization details** form, and the **Website embeds** card sits below it. See [Account creation](/school-club/account-creation/) and [Embed widgets](/school-club/embed-widgets/).

## Permissions

`Organization → Administration → Permissions`

This screen lists the club's approved members, each with name, email and a role selector. Next to the list, the **Guide to permissions** panel describes each role. Some lines in the panel only appear when they apply, for example the licence approval line for managers, which only shows when the club's federation asks clubs to approve licences.

| Action | How | Who |
|---|---|---|
| Add a person | Type at least three letters of a name or email in **Search members**, pick the person and press **Add**. They join straight away as an approved **Member**. There is no invitation step. | Administrator |
| Change a role | Pick a new role in the person's selector. It saves immediately. | Administrator |
| Remove a person | The delete button on the row, then confirm "Are you sure you want to delete *name*?" | Administrator |

Rules the screen follows:

- You cannot change your own role or remove yourself. To leave, use **Leave organization** on **Home**. The last administrator cannot leave ("You are the only administrator. Promote another member to administrator before leaving.").
- An administrator can change and remove anyone below **Administrator**, and can promote someone to **Administrator**. Another administrator's role cannot be changed or removed here.
- Making someone a **Coach**, **Manager** or **Administrator** also approves their membership.
- A manager sees this screen, but the selectors and delete buttons are disabled. **Add** is shown to managers too, but the server refuses it.

## Members

`Organization → Administration → Members`

This screen lists the club's approved members with **Name** and their **Permissions** role. Managers and administrators also see a **Requires your action** box above the list when people are waiting to join. The number waiting shows as a badge on **Members** in the sidebar.

People only wait here when **Member approval** is on in the club's details. With it off, anyone who presses **Join organization** becomes a member straight away.

| Action | How | Who |
|---|---|---|
| See the member list | Open the screen | Coach, Manager, Administrator |
| Approve one applicant | **Approve** on their row, then confirm | Manager, Administrator |
| Reject one applicant | **Reject** on their row, then confirm. The application is deleted, and the person can apply again. | Manager, Administrator |
| Approve everyone waiting | **Approve all**, then confirm | Manager, Administrator |

Coaches do not see the **Requires your action** box. To add someone directly or change a role, use [Permissions](#permissions). For the full joining flow, see [Applying for a school/club](/school-club/applying-for-a-school-club/).

## Competitors

`Organization → Administration → Competitors`

This screen lists the club's active competitors:

- **Club-owned competitors**, tagged **Organization team**. These are groups and formations that belong to the club.
- **Independent competitors** (solos and couples) with at least one of the club's members in them.

Each row shows the custom name if there is one, the dancers' names, and a count badge when there are more than three dancers.

| Action | How | Who |
|---|---|---|
| Create a competitor | **Create competitors** below the list | Coach, Manager, Administrator |
| Edit a competitor | **Edit competitors** on the row | Coach, Manager, Administrator |
| Delete a competitor | **Delete** in the edit window. It is disabled once the competitor has registrations. | Coach, Manager, Administrator |

In the edit window:

| Field | Notes |
|---|---|
| **Search by name or email** | Finds the club's members. If you type an email address that is not a member's, a **Create account for partner** section appears. Fill in first name, last name, country, language and, optionally, birthdate to create an account for that dancer and add them. |
| **Dance role** | **Leader**, **Follower** or **No role**, per dancer. Shown when the competitor has two or three dancers. |
| **Participant name** | **Use participant name** (the dancers' names) or **Assign custom name**. |
| **Owned by organization** | Only when creating, and only once there are more than two dancers or you choose a custom name. It is ticked by default and makes the club the owner. |

A new competitor made here needs at least two dancers before **Save changes** is enabled. Solo competitors cannot be created on this screen.

Only the owning club's approved coaches, managers and administrators can change a club-owned competitor. Editing the dancers or the name of a competitor that is already registered creates a new version, and the window warns you: "Saving changes will create a new competitor version. Open competition registrations will stay pinned to their current version — review override lists if needed."

Moving a competitor to another club is done by the federation. See [Club transfers](/federation/club-transfers/).

## Registration

`Organization → Administration → Registration`

This screen lists your club's event registrations, grouped per event. Open an event to see its entries. The list includes registrations for competitors the club owns, and for independent competitors whose dancers' licences (or, without a licence, their club membership) point at your club.

| Column | Shows |
|---|---|
| **Name** | The competitor |
| **Class** | The class entered |
| **Competition** | The competition within the event |
| **Status** | **Preliminary**, **Signed**, **Approved**, **Rejected**, **Cancelled**, **Deleted** or **Reserved** |
| **Payment** | **Yes** or **No**. Only shown when the event takes payment. |

| Action | How | Who |
|---|---|---|
| Change the lineup | **Edit lineup** on the row. You can use it while the entry's registration period is open and the entry is **Preliminary**, **Signed** or **Approved**. | Coach, Manager, Administrator |
| Cancel an entry | The cancel button on the row, under the same conditions. For a club-owned competitor, only the club's coaches, managers and administrators can cancel. | Coach, Manager, Administrator |
| See the price | **Get cost**, for approved entries not yet paid | Coach, Manager, Administrator |
| Pay online | **Pay now** with the amount, when the event takes online payment. With manual payment you see the amount and the organizer's payment information instead. | Coach, Manager, Administrator |
| Pay the club's invoice | **Pay now** on a row under **Pay your registrations**. It is enabled when the invoice's status is **Ready to send**. | Coach, Manager, Administrator |

Cancelling does not refund a payment by itself. New registrations are made from the event's own registration page. See [Registration for event](/school-club/registration-for-event/).

## Federation

`Organization → Administration → Federation`

This screen lists the federation your club is linked to, tagged **Approved** or **Pending**. Click the row to open the federation's page.

| Action | How | Who |
|---|---|---|
| Apply to a federation | Pick the federation in the selector below the list, then press **Apply**. The link starts as **Pending** until the federation approves it. | Administrator |
| Cancel an application, or detach | The delete button on the row, then confirm "Are you sure you want to cancel *federation*?" | Administrator |

A club belongs to one federation at a time. Applying while any link exists, approved or pending, fails with "The organization already belongs to a federation". Managers see the screen and the **Apply** button, but the server refuses the application. The full flow is on [Joining a federation](/school-club/joining-a-federation/).

## Licenses

`Organization → Administration → Licenses`

This screen is headed **License Applications**. It shows the licences your club has applied for or holds, for the federation chosen in **Select federation**. Without a federation link it only says "Connect this organization to a federation first." The **Licenses** item in the sidebar shows a badge with the number of applications that need you.

The page has three parts:

| Part | What it is for |
|---|---|
| The application form | Choose a **Member**, a **License item**, the **Season year** (or a **Federation ID** or **Competition ID** when the item needs one) and an optional **Note**, then press **Apply for license**. |
| **Needs your action** | Applications waiting for your club to approve or pay. The **What's needed** column says **Awaiting your approval** or **Payment due**. |
| **No action needed** | Active, completed and cancelled licences, and applications waiting on the federation. |

| Action | How | Who |
|---|---|---|
| Apply for a member | The form, then **Apply for license** | Manager, Administrator |
| Approve an application | **Approve** on a pending or draft row | Manager, Administrator |
| Decline an application | **Decline**, then confirm "Decline license application for *name*?" The licence becomes cancelled. | Manager, Administrator |
| Pay | **Pay** on an unpaid row. It stays disabled until the licence is approved, and when the federation has not connected Stripe. | Manager, Administrator |
| Remove an application | The delete button on a pending or draft row, then confirm "Remove application for *name*?" | Manager, Administrator |

Coaches do not see this screen. The full flow, including the federation's checks, is on [Getting a license](/school-club/getting-a-license/).

## Troubleshooting

### "Add does nothing on Permissions"

Only an administrator can add people. The search needs at least three letters. The person must already have a Vote4Dance account, and adding someone who is already in the club (approved or waiting) fails.

### "I cannot change someone's role"

You cannot change your own role, and on this screen nobody can change or remove an administrator. Managers can only look.

### "Approve on a licence shows an error"

"This license application doesn't require organization approval." The **Approve** button appears on every pending application, but the federation has not asked clubs to approve licences, so the application is waiting on something else. See [Getting a license](/school-club/getting-a-license/).

### "I cannot remove a licence application"

"Only pending license applications can be deleted." Once a licence is active or cancelled, it stays.

### "The competitor has too many dancers"

"Independent competitors can have at most 2 members — groups are created by an organization". Keep **Owned by organization** ticked when you create a group.

## Not in this version

- The **Guide to permissions** mentions moving a club-owned competitor to another club. There is no button for this on the club's screens. The federation does it, see [Club transfers](/federation/club-transfers/).
- There is no bulk licence application. Apply for one member at a time.
- Members cannot be retired or suspended in the club. They can only be removed.

## Related pages

- [Account creation](/school-club/account-creation/)
- [Applying for a school/club](/school-club/applying-for-a-school-club/)
- [Joining a federation](/school-club/joining-a-federation/)
- [Getting a license](/school-club/getting-a-license/)
- [Registration for event](/school-club/registration-for-event/)
- [Embed widgets](/school-club/embed-widgets/)
- [Club transfers](/federation/club-transfers/)
