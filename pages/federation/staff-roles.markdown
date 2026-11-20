---
layout: page
title: Federation Staff Roles
description: "The federation staff roles Viewer, Manager, Administrator and Owner: what each may do, and how staff are invited to their own account."
permalink: /federation/staff-roles/
parent: Set up your federation
nav_order: 1
redirect_from:
  - /federation/account-creation/
---

# Federation Staff Roles

Everyone who works for the federation in Vote4Dance uses their own personal account, with a role in the federation. There are no shared federation logins.

Federation staff access is granted per-federation. Each person you invite to a federation receives one of four roles. The role controls what they can see and do inside the federation admin.

Use `Federation → Settings → Roles & access` to invite staff and change their roles. See [Federation settings](/federation/settings/#roles--access).

On the federation's screens a club is called an **Organization**, and a competitor is a couple, a solo dancer, a duo or a group.

To see what your own role allows, click your role name in the federation bar. It
opens the **Guide to permissions**, a short list of what each role can do, with your role marked
**Your role**.

---

## Roles at a glance

| Role | What they can do |
|---|---|
| **Viewer** | Read-only access to all federation data |
| **Manager** | Day-to-day work: licenses (issue, approve, edit, suspend, remove), clubs, class memberships |
| **Administrator** | Everything a Manager does, plus structure (divisions, classes, rules, rankings), decisions that move competitors, federation settings, Stripe |
| **Owner** | Governance: promoting users to Administrator and Owner |

---

## Viewer

Read-only access. Viewers can see current federation data but cannot make any changes.

Use this role for:
- Board members who need visibility without write access
- Auditors reviewing license or membership records
- Club liaisons who need to look up federation state

What a Viewer can do:
- View federation data: divisions, classes, rankings, licenses, clubs, members, history, enforcement log, rules. The federation bar shows no destinations to a Viewer, so these pages are opened by link.
- **Competitions** and **Statistics** need Manager or higher
- Cannot edit, approve, issue, or delete anything

---

## Manager

Day-to-day operational work. A Manager handles the running of the federation without being able to change its structure.

Use this role for:
- Secretaries processing license applications and club approvals

What a Manager can do:
- Everything a Viewer can do, plus:
- Issue, approve, edit and remove licenses, one by one or in bulk
- Approve clubs and their right to issue licenses
- Add, edit and remove class memberships (see [Members](/federation/members/))
- Follow club transfers and representation changes (an Administrator decides them)
- Open **Competitions** and **Statistics**

What a Manager cannot do (these need an Administrator):
- Edit the round setup or rule profiles
- Assign clubs, change Temporary rows, rename competitors, move club-owned competitors, or
  decide club transfer requests (see [Club transfers](/federation/club-transfers/))
- Move a license to another club, or remove its club, once the federation has
  approved it. A Manager can still correct the club on an application that was never
  approved, or add one to a license that names none.
- Remove a club from the federation, or set up its NORRIQ credentials
- Run **Sync federation progress**, age-ups or promotions
- Edit divisions, disciplines, classes, age groups, or categories
- Edit the license catalog (license items) or rankings
- Connect Stripe or change federation settings
- Promote other users

Managers do not see the buttons for these. Where one would be, for example on a club's
**Transfers** tab, or on Members in place of **Sync federation progress**, the page says that it needs a
federation Administrator.

The enforcement log is read-only for every role.

---

## Administrator

Structural configuration. An Administrator can change how the federation is organized and how its rules work.

Use this role for:
- Technical directors responsible for the federation's class and rule structure
- Staff managing the ranking or license catalog setup

What an Administrator can do:
- Everything a Manager can do, plus:
- Create and edit divisions, disciplines, categories, age groups, class levels, dances
- Create and edit federation classes and competition levels
- Create and edit the license catalog (license items) and class license mappings
- Create and edit rule profiles
- Create and edit rankings, leagues, and ranking corrections
- Edit the round setup
- Create and edit representation records, move club-owned competitors, and approve or reject club transfer requests (see [Club transfers](/federation/club-transfers/))
- Move a license the federation has approved to another club (reissue), or remove its club
- Remove a club from the federation, and set up its NORRIQ credentials
- Run **Sync federation progress**, age-ups and promotions (see [Members](/federation/members/))
- Edit federation name, tag, description, icon, and branding
- Show or hide the federation in the public federation list (**Visible in public federation list**)
- Connect and manage the Stripe account
- Invite staff and promote them up to Manager level

What an Administrator cannot do:
- Promote users to Administrator or Owner

---

## Owner

Full governance. An Owner controls who has access at the highest levels.

Use this role for:
- Board chairs or the primary account holder for the federation

What an Owner can do:
- Everything an Administrator can do, plus:
- Promote users to any role including Administrator and Owner
- Demote and remove any federation user

---

## Promotion rules

A user can only promote others to roles below their own level, except Owners who can promote to any level including Owner.

| Acting role | Can promote to |
|---|---|
| Administrator | Viewer, Manager |
| Owner | Viewer, Manager, Administrator, Owner |

An Administrator cannot promote a peer to their own level. Only an Owner or a system administrator can do that.

---

## Invitation flow

You need the Administrator or Owner role to see the staff list and add staff; Viewers and Managers see a note instead.

1. Open `Federation → Settings → Roles & access`
2. Search for the user by name or email
3. Press **Add**
4. The user is added with the **Viewer** role
5. Change the role using the dropdown next to their name

The current user's role is shown as a tag next to their email address. The role dropdown shows a summary of what each level can do.

The person must already have an account before you can add them. Everyone creates their own account at vote4dance.com, with their own email address. The form is the same for everybody: see [Account creation](/dancer/account-creation/).

When you have set the role, ask the person to sign in with their own account, open the federation, and check that they see what their role should see.

---

## Make sure you are not the only one

- Have **at least two Owners**. Nobody can change or remove their own role, and there is no one-step ownership transfer.
- Have at least one other person who can approve licenses, for holidays and the season rush.

---

## Common problems

| Problem | Fix |
|---|---|
| **Add** fails | The person has no Vote4Dance account with that email, or is already on the list. |
| Someone cannot find a button, or the page says an action needs a federation Administrator | Their role is too low. Managers do not see Administrator-only buttons. To check what a role allows, click the role name in the federation bar. |
| You cannot change someone's role | An Administrator can only change Viewers and Managers. Ask an Owner. |

---

## Related pages

- [Federation settings](/federation/settings/#roles--access): the **Roles & access** tab, where roles are given
- [Set up your federation](/federation/setup/): what to do once the staff have their roles
- [Members](/federation/members/#who-can-do-what), [Divisions and disciplines](/federation/divisions/) and [Federation licenses](/federation-licenses/federation-admin/#who-can-do-what): what each role can do on those screens
- [Club transfers](/federation/club-transfers/): the decisions that need an Administrator
- [Account creation](/dancer/account-creation/): how a new colleague gets an account
- [Getting help](/getting-help/#writing-to-vote4dance): how to write to Vote4Dance
