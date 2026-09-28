---
layout: page
title: Divisions and disciplines
permalink: /federation/divisions/
parent: Federation
nav_order: 6
help:
  federation.structure: finding-your-way
  federation.division: disciplines
  federation.division.agegroup: age-groups
  federation.division.category: categories
  federation.division.classlevel: class-levels-and-competition-levels
  federation.division.competitionlevel: class-levels-and-competition-levels
  federation.division.ranking: rankings
  federation.division.rules: rules
  federation.discipline: classes
  federation.discipline.dances: discipline-sections
  federation.discipline.discipline-rules: rules
---

# Divisions and disciplines

The federation's structure decides which classes exist. Every federation class is built from a **division**, a **discipline**, a **category**, an **age group** and a **class level**, and the rules, rankings and licenses all attach to that structure. You set it up under `Federation → Structure`.

Structure is in the navigation for Administrators and Owners. Every create, edit, delete and reorder on these screens needs **Administrator** or higher on the server; a Viewer or Manager who opens a link can read the structure but not change it. See [Federation staff roles](/federation/staff-roles/).

---

## The building blocks

| Block | What it is | Examples (from the app's hints) | Belongs to |
|---|---|---|---|
| **Division** | A group of disciplines | Breaking, Disco, Standard & Latin | The federation |
| **Discipline** | A specific dance form | Freestyle, Popping, Lindy Hop | A division |
| **Category** | A competitor size | Single, duo, groups, formation | A division |
| **Age group** | Ages allowed to compete together | Adult, Youth, Junior | A division |
| **Class level** | A level of the class ladder | A, B, Champion, SuperStar | A division |
| **Competition level** | A tier of competitions, with options for ranking-based competitions | | A division |
| **Class** | One combination of discipline, category, class level and age group that competitors enter | | A discipline |
| **Dance** | A dance style danced in the discipline | Waltz, Tango, Slow, Fast, Jam, Old School | A discipline |

Categories, age groups, class levels and competition levels are shared by every discipline in the division. A class picks one of each.

Each block has a **State**: **Draft**, **Active** or **Retired**. The public federation pages only show active divisions and active disciplines. The age-up batch skips retired age groups when it looks for the next age group (see [Age moves](/federation/age-moves/)).

---

## Finding your way

`Federation → Structure` opens the first division. The page has a menu column on the left and the selected section on the right.

- The menu lists **Judging** (the federation's own judging setups) and then every division. The open division shows its sections, and **Disciplines** lists its disciplines. An open discipline shows its own sections.
- **Filter divisions and sections** narrows the menu.
- The header shows the division's name, image, state and description, and, when you have access to statistics, the division's **Active competitors** and **Active classes**.
- **Open this division in Members** opens the class roster limited to this division. See [Members](/federation/members/#competitors).

Each section has its own address, so you can bookmark or share it.

### Division sections

`/federation/<federation>/division/<division>?tab=<section>`

| Section in the menu | `tab` | What it holds |
|---|---|---|
| **Disciplines** | `list` (default) | The division's disciplines |
| **Age Groups** | `agegroup` | Age groups |
| **Categories** | `category` | Categories |
| **Class Levels** | `classlevel` | Class levels |
| **Competition Levels** | `competitionlevel` | Competition levels |
| **Judging** | `judging` | The division's judging setups. Only a system administrator can change them. |
| **Ranking** | `ranking` | The division's rankings. See [Federation admin rankings](/federation-rankings/federation-admin/). |
| **Progression** | `progression` | How each class promotes. See [Promotion points](/federation/progression/). |
| **Rules** | `rules` | The division's own rule overrides |

Age Groups, Categories, Class Levels and Competition Levels each have two tabs, set with `sub`: **List** (`sub=list`, the default) and **Rules** (`sub=rules`). The **Rules** tab is only there for Administrators, and only once the list has at least one entry. Changing the division section clears `sub`.

### Discipline sections

`/federation/<federation>/division/<division>/discipline/<discipline>?tab=<section>`

| Section in the menu | `tab` | What it holds |
|---|---|---|
| **Classes** | `list` (default) | The discipline's classes |
| **Dances** | `dances` | The dances |
| **Class Rules** | `rules` | Round rules for the classes. See [How class rules work](/federation-rules/reference/). |
| **Rules** | `discipline-rules` | The discipline's own rule overrides. Administrators only. |

---

## Divisions

### Add a division

1. Press **Add division**. It is on any division page, or in the empty page when the federation has no divisions yet.
2. Fill in the **Division details**:

| Field | Required | Notes |
|---|---|---|
| **Name** | Yes | |
| **Description** | No | Shown under the name |
| **State** | Yes | **Draft**, **Active** or **Retired**. New divisions start as **Active**. |
| **Image** | No | Shown in the page header |

3. Press **Save changes**. The new division opens.

### Edit or delete a division

Press **Edit division**, change the fields and press **Save changes**. **Delete** in the same dialog removes the division after you confirm.

A division can only be deleted when it is empty. See [Troubleshooting](#troubleshooting) for what blocks it.

### Order

**Reorder divisions** (shown when there are two or more) opens a list you drag into order. The menu follows that order, and `Federation → Structure` opens the first division.

---

## Disciplines

Open **Disciplines** in a division. Click a discipline's name to open it.

- **Add discipline**: press it under the list, or in the empty page.
- **Edit discipline**: on the discipline's own page, under the header.
- **Order**: drag the disciplines in the list.

| Field | Required | Notes |
|---|---|---|
| **Name** | Yes | |
| **Code** | Yes | Used in class names and codes created with **Add many** |
| **Description** | No | |
| **State** | Yes | **Draft**, **Active** or **Retired** |

**Delete** is in the edit dialog. A discipline that has classes, or that competition classes use, cannot be deleted.

---

## Categories

A category describes how many dancers a competitor has and which roles they dance.

Open **Categories** in a division. **Add category** is under the list; **Edit category** is on each row. Drag rows to reorder.

| Field | Required | Notes |
|---|---|---|
| **Name** | Yes | |
| **Code** | Yes | Used in class names and codes created with **Add many** |
| **Description** | No | |
| **Image** | No | |
| **State** | Yes | **Draft**, **Active** or **Retired** |

The roster limits (minimum and maximum members, required dance roles) are set on the category's **Rules** tab (**Category rules**). Registration and class memberships are checked against them. The maximum cannot be below the minimum, and a category cannot require more distinct roles than its maximum number of members.

A category that has classes cannot be deleted.

---

## Age groups

An age group sets the ages that may compete together.

Open **Age Groups** in a division. **Add age group** is under the list; **Edit age group** is on each row. Drag rows to reorder. The age-up batch does not use this order: it finds the next age group from the minimum and maximum ages.

| Field | Required | Notes |
|---|---|---|
| **Name** | Yes | |
| **Code** | Yes | Used in class names and codes created with **Add many** |
| **Minimum Age** | No | |
| **Maximum Age** | No | Leave empty for an open-topped group such as Adults 21+ |
| **Description** | No | |
| **Use Birthday** | Yes | **Enable** to use the participant's birthday instead of the calendar year they were born |
| **State** | Yes | **Draft**, **Active** or **Retired** |

How the age of a couple or group is decided, and how to change it, is set on the age group's **Rules** tab. See [Age category rules](/federation-rules/age-category-rules/).

An age group that has classes cannot be deleted.

---

## Class levels and competition levels

**Class Levels** and **Competition Levels** work the same way: **Add class level** or **Add competition level** under the list, **Edit class level** or **Edit competition level** on each row, drag to reorder, and a **Rules** tab for each level's overrides. Each has a **Name**, a **Code** and a **State**.

Class levels are the steps a class ladder promotes through. Competition levels are tiers of competitions; a competition level's rules can, for example, stop a tier from awarding promotion points (see [Promotion points](/federation/progression/)).

---

## Classes

The discipline's **Classes** section is a table of its classes: **Name**, **Code**, **Category**, **Class Level**, **Age Group**, **Advance By**, **Licenses**, **Rules**, **Target Class** and **State**.

- **Add class**: create one class. Pick its **Category**, **Class Level** and **Age Group**, give it a **Name** and **Code**, and set **Advance By**, **Target Class** and **State**.
- **Add many**: a grid of categories against class levels. Click the age group codes to select the combinations you want and press **Save changes**. Each class is created active, named from the discipline, category, class level and age group, and coded from their codes.
- **Link Class Levels**: select classes and confirm. Within each category and age group, the selected classes are put in class level order, and each one gets the next one as its **Target Class**.
- Select classes and use the delete button to delete them.
- Drag rows to reorder.

Promotion settings on a class (**Advance By**, **Target Class** and the threshold) are explained in [Promotion points](/federation/progression/).

---

## Rules

Rules are set in layers that follow the structure: federation, division, discipline, category, age group, class level, class. The most specific layer that sets a value wins.

Each layer has its own place in Structure:

| Layer | Where |
|---|---|
| Division | Division → **Rules** (**Division rules**) |
| Discipline | Discipline → **Rules** (**Discipline rules**) |
| Category | **Categories** → **Rules** (**Category rules**) |
| Age group | **Age Groups** → **Rules** (**Age group rules**) |
| Class level | **Class Levels** → **Rules** (**Class level rules**) |
| Class | The **Rules** button on the class row. With several classes selected, the rules are saved to all of them. |

Only set a rule where it differs from the layer above; empty fields inherit. Check the merged result in `Federation → Rulebook`. The rules themselves are documented under [Federation Rules](/federation-rules/).

---

## Rankings

A ranking belongs to one division and counts results from the federation classes you add to it. Create and manage rankings in the division's **Ranking** section. Each ranking there links to **Open rule review** and **Open enforcement log**. The full workflow is in [Federation admin rankings](/federation-rankings/federation-admin/).

When a competitor moves to another age group, a ranking carry percentage decides whether their ranking results follow; see [Age moves](/federation/age-moves/#what-the-move-does).

---

## Licenses

License items can be scoped to a **Division** and a **Discipline** when you create them. A class then lists the license items it accepts:

1. Open the discipline's **Classes**.
2. Press **License rules** in the class's **Licenses** column. The badge shows how many are set.
3. Add the license items and choose whether each is required at registration, at progression, or both.

Only active license items that match the class's division and discipline are offered. The full workflow is in [Federation admin licenses](/federation-licenses/federation-admin/#4-map-license-items-to-classes).

---

## Troubleshooting

| Message | Cause |
|---|---|
| **This division has disciplines** | Delete or move the disciplines first. |
| **This division has age groups** / **This division has categories** / **This division has class levels** / **This division has competition levels** | Delete those first. |
| **This division has judging records** | The division has judging setups. |
| **This division has rankings** / **This division has ranking leagues** | Delete the division's rankings and leagues first. |
| **This division has classes** / **Discipline has classes** | Delete the classes first. |
| **This division is used by competition classes** / **Discipline is used by competition classes** | Competitions have classes in it. It cannot be deleted; set its **State** to **Retired** instead. |
| **Category has classes** / **Age Group has classes** | Delete the classes that use it first. |

---

## Not in this version

- A discipline, category, age group or class level cannot be moved to another division, and nothing in Structure can be copied.

---

## Related pages

- [Members](/federation/members/): the competitors in each class
- [Federation Rules](/federation-rules/) and [How class rules work](/federation-rules/reference/)
- [Age category rules](/federation-rules/age-category-rules/)
- [Promotion points](/federation/progression/)
- [Age moves](/federation/age-moves/)
- [Federation Rankings](/federation-rankings/)
- [Federation Licenses](/federation-licenses/)
- [Federation staff roles](/federation/staff-roles/)
