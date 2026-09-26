---
layout: page
title: Judging
permalink: /federation/judging/
parent: Federation
nav_order: 8.5
help:
  federation.judging: ""
  federation.division.judging: ""
---

# Judging

**Judging** is the federation's catalog of judging setups: the scoring methods that competition rounds under your federation can use. Each setup has a judging type (for example points, placement or AJS), the components the judges score, and settings for how marks are entered and totalled. It is not a judge register or judge education. Judges are added per competition in the Manager app, and judge licences are licence items with the category **Judge** under `Federation → Licenses` (see [Federation licenses](/federation-licenses/federation-admin/)).

Open it from the top of the Structure tree: `Federation → Structure → Judging`. **Judging** sits above the divisions, because the setups listed here belong to the federation, not to one division. Setups that belong to a single division are listed under `Federation → Structure → [division] → Judging` instead, in the same format.

## Who can change what

| Task | Who can do it |
|---|---|
| See the list | Anyone with a role in the federation |
| See which competitions use a setup | Administrator, Owner |
| Add, edit, delete or reorder setups | Vote4Dance system administrator only |

The **Structure** item in the federation bar is shown to Administrators and Owners. For everyone except a Vote4Dance system administrator the list is read only: there is no **Add** button, no **Edit** button and no drag handle. Contact Vote4Dance support to add a judging setup or change one.

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

## Add or edit a setup

This section is for Vote4Dance system administrators. **Add** is under the list; **Edit** is on each row. Both open **Judging details**.

| Field | Required | What it does |
|---|---|---|
| **Division** | No | Leave empty for a federation-wide setup, listed on this page. Pick a division to make the setup belong to it; it then moves to that division's **Judging** list and is only offered to classes in that division. |
| **State** | Yes | **Draft**, **Active** or **Retired**. See [States](#states). |
| **Name** | Yes | The name as JSON with one entry per language and a `default`, for example `{"default": "Points", "sv": "Poäng"}`. Plain text is saved but shows as an empty name in this list. |
| **Judging type** | Yes | The scoring method: `Select`, `OneToFive`, `Points`, `Placement`, `Match`, `Full`, `Partial`, `PartialInput`, `Ajs`, `CollectStars` or `None`. |
| **Judging components** | No | JSON describing the components judges score. |
| **Judging settings** | No | JSON with the type's settings: comments, remarks, point entries, presets and switches. |

The two JSON fields are checked before saving and show "Invalid JSON format" if they cannot be read.

The dialog also has **Copy** and **Paste**. **Copy** remembers the form's current values in this browser, and **Paste** fills them into another setup's form, which is the quickest way to make a variant of an existing setup.

Drag rows to change the order. The new order saves when you drop the row.

### Rules for setups in use

A setup is in use when at least one round in any competition uses it.

- An **Active** or **Retired** setup that is in use cannot be set back to **Draft**.
- A **Retired** setup that is in use cannot be saved while it stays **Retired**. Set it to **Active** to change it.
- A setup that is in use cannot be deleted.

## Not in this version

- There is no register of federation judges and no judge education in the federation app.
- Federation Administrators and Owners cannot add or edit judging setups themselves.
- There is no form editor for components and settings; they are entered as JSON.

## Related pages

- [Settings](/federation/settings/)
- [Federation staff roles](/federation/staff-roles/)
- [Competition setup](/manager-guide/competition-setup/)
- [Federation licenses](/federation-licenses/federation-admin/)
- [Promotion points](/federation/progression/)
