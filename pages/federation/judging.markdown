---
layout: page
title: Judging
description: "The federation's catalog of judging setups: the judging types, components and settings that competition rounds under your federation can use."
permalink: /federation/judging/
parent: Structure and rules
nav_order: 2
help:
  federation.judging: ""
  federation.division.judging: ""
---

# Judging

**Judging** is the federation's catalog of judging setups: the scoring methods that competition rounds under your federation can use. Each setup has a judging type (for example points, placement or AJS), the components the judges score, and settings for how marks are entered and totalled. It is not a judge register or judge education. Judges are added per competition in the Manager app, and judge licenses are license items with the category **Judge** under `Federation → Licenses` (see [Federation licenses](/federation-licenses/federation-admin/)).

Open it from the top of the Structure tree: `Federation → Structure → Judging`. **Judging** sits above the divisions, because the setups listed here belong to the federation, not to one division. Setups that belong to a single division are listed under `Federation → Structure → [division] → Judging` instead, in the same format.

## Who can change what

| Task | Who can do it |
|---|---|
| See the list | Anyone with a role in the federation |
| See which competitions use a setup | Administrator, Owner |
| Add, edit, delete or reorder setups | Vote4Dance system administrator only |

The **Structure** item in the federation bar is shown to Administrators and Owners. For everyone except a Vote4Dance system administrator the list is read only: there is no **Add** button, no **Edit** button and no drag handle. To add a judging setup or change one, write to Vote4Dance: see [Asking for a new or changed setup](#asking-for-a-new-or-changed-setup).

## The list

Each row shows:

| Part | What it means |
|---|---|
| Name | The setup's name in your language. A **Retired** setup's name is grey. |
| Type tag (blue) | The judging type, for example `Points`, `Placement` or `Ajs`. |
| Component tags (green) | Each scored component, with its **Min**, **Limit** and **Step** when set. |
| Settings tags | A summary of the settings: comment and remark codes, point entries, AJS presets and switches such as `useSlider` or `trimExtremes`. |
| State | **Draft**, **Active** or **Retired**. |
| Info button | Opens the usage list. See [Usage](#usage). |

The order of the list is the order setups are offered in a round's **Judging type** field in the Manager app.

## States

| State | What it means for competitions |
|---|---|
| **Draft** | Being prepared. Not offered to rounds. |
| **Active** | Offered in the **Judging type** field of a round. |
| **Retired** | No longer offered to new rounds. Rounds that already use it keep it. |

A round can only use an **Active** setup. If a round's setup is no longer active, saving the round in the Manager app fails with "Judging type not active" until another type is chosen.

Rounds see the federation-wide setups from this page plus the setups of the class's own division.

## Usage

The info button on a row opens **Judging details**: a list of every competition with at least one round that uses the setup. Each name opens that competition in the Manager app in a new tab.

Check this before you ask for a setup to be changed or retired: a change applies to every competition in the list.

## Asking for a new or changed setup

Vote4Dance adds and changes judging setups for you. [Write to Vote4Dance](/getting-help/#writing-to-vote4dance) and say:

- **Whether the setup is for the whole federation or for one division.** A federation-wide setup is listed on this page. A setup that belongs to a division is listed in that division's **Judging** section and is only offered to classes in that division.
- **Its name**, in each language you use.
- **The judging type**, which is the scoring method: `Select`, `OneToFive`, `Points`, `Placement`, `Match`, `Full`, `Partial`, `PartialInput`, `Ajs`, `CollectStars` or `None`.
- **What the judges score**: each component, with its lowest value, its highest value and its step, and anything else the judges need, such as comments or remarks.
- **The state it should have**: **Draft**, **Active** or **Retired**. See [States](#states).
- **Where it should come in the list**, because the list's order is the order rounds are offered the setups in.

The quickest way to describe a new setup is to name an existing one and say what should differ.

Before you ask for a change, open [Usage](#usage) on the setup: the change applies to every competition listed there.

### Rules for setups in use

A setup is in use when at least one round in any competition uses it.

- An **Active** or **Retired** setup that is in use cannot be set back to **Draft**.
- A **Retired** setup that is in use cannot be saved while it stays **Retired**. Set it to **Active** to change it.
- A setup that is in use cannot be deleted.

## Not in this version

- There is no register of federation judges and no judge education in the federation app.
- Federation Administrators and Owners cannot add or edit judging setups themselves.
- You cannot enter components and settings yourself. Vote4Dance enters them for you.

## Related pages

- [Settings](/federation/settings/)
- [Federation staff roles](/federation/staff-roles/)
- [Competition setup](/manager-guide/competition-setup/)
- [Federation licenses](/federation-licenses/federation-admin/)
- [Promotion points](/federation/progression/)
- [Getting help](/getting-help/#writing-to-vote4dance)
