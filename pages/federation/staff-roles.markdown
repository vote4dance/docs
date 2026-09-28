---
layout: page
title: Federation Staff Roles
permalink: /federation/staff-roles/
parent: Federation
nav_order: 11
---

# Federation Staff Roles

Federation staff access is granted per-federation. Each person you invite to a federation receives one of four roles. The role controls what they can see and do inside the federation admin.

Use `Federation → Settings → Roles & access` to invite staff and change their roles. See [Federation settings](/federation/settings/#roles--access).

---

## Roles at a glance

| Role | Label in UI | What they can do |
|---|---|---|
| `normal` | Viewer | Read-only access to all federation data |
| `manager` | Manager | Day-to-day operations: licenses |
| `administrator` | Administrator | Structural configuration: divisions, classes, rules, rankings, memberships, organizations, federation settings, Stripe |
| `owner` | Owner | Governance: promoting users to Administrator and Owner |

---

## Viewer

Read-only access. Viewers can see current federation data but cannot make any changes.

Use this role for:
- Board members who need visibility without write access
- Auditors reviewing license or membership records
- Organization liaisons who need to look up federation state

What a Viewer can do:
- View federation data: divisions, classes, rankings, licenses, organizations, members, history, enforcement log, rules. The federation bar shows no destinations to a Viewer, so these pages are opened by link.
- **Competitions** and **Statistics** need Manager or higher
- Cannot edit, approve, issue, or delete anything

---

## Manager

Day-to-day operational work. A Manager handles the running of the federation without being able to change its structure.

Use this role for:
- Secretaries processing license applications

What a Manager can do:
- Everything a Viewer can do, plus:
- Issue, approve, suspend, and revoke licenses
- Open **Competitions** and **Statistics**

What a Manager cannot do:
- Create, edit or remove class memberships, or run **Sync federation progress**
- Approve or manage organizations (approve, mark pending, grant or remove license issuer access)
- Edit divisions, disciplines, classes, age groups, or categories
- Edit the license catalog (license items)
- Edit rule profiles or rankings
- Connect Stripe or change federation settings
- Promote other users

The UI shows some of these buttons to Managers, for example on [Members](/federation/members/), but the server refuses the change: it needs Administrator or higher.

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
- Create and edit representation records, move club-owned teams, and approve or reject club transfer requests (see [Club transfers](/federation/club-transfers/))
- Change the organization on an active licence (reissue)
- Create, edit and remove class memberships, and run **Sync federation progress** (see [Members](/federation/members/))
- Approve and manage organizations (approve, mark pending, grant or remove license issuer access)
- Edit federation name, tag, description, icon, and branding
- Set the federation as restricted or published
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

1. Open `Federation → Settings → Roles & access`
2. Search for the user by name or email
3. Press `Add`
4. The user is added with the default `Viewer` role
5. Change the role using the dropdown next to their name

The current user's role is shown as a tag next to their email address. The role dropdown shows a summary of what each level can do.
