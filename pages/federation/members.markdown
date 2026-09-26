---
layout: page
title: Members
permalink: /federation/members/
parent: Federation
nav_order: 5
help:
  federation.state: competitors
  federation.state.dancers: dancers
  federation.state.clubs: organizations
  federation.state.history: history
  federation.state.enforcement: enforcement-log
  federation.enforcement: enforcement-log
  federation.organization: organizations
---

# Members

**Members** is where federation staff answer "who belongs here": which competitors are in which class, the dancers behind them, the clubs, how classes changed over time, and what the automatic rule checks decided. Open it from `Federation → Members`.

The page has five tabs. Each one has its own address, so you can bookmark or share a tab:

| Tab | Address |
|---|---|
| [Competitors](#competitors) | `/federation/<federation>/state` (the default tab) |
| [Dancers](#dancers) | `/federation/<federation>/state?tab=dancers` |
| [Organizations](#organizations) | `/federation/<federation>/state?tab=clubs` |
| [History](#history) | `/federation/<federation>/state?tab=history` |
| [Enforcement log](#enforcement-log) | `/federation/<federation>/state?tab=enforcement` |

Old links still work: `/dancer?user=…` opens the Dancers tab, `/organization` opens the Organizations tab, and `/enforcement` opens the Enforcement log tab.

---

## Who can do what

**Members** appears in the navigation for Managers, Administrators and Owners. A Viewer does not see it in the menu, but can open a link to it and read every tab. See [Federation staff roles](/federation/staff-roles/).

Every change on this page is checked by the server, which needs **Administrator** or higher. A Manager sees the buttons for several of these actions, but the server refuses the save.

| Action | Where | Role needed |
|---|---|---|
| Read any tab | All tabs | Viewer |
| Add, edit or remove a class membership | Competitors | Administrator |
| **Sync federation progress** | Competitors | Administrator |
| Preview and run the **Age-up batch transition** | Competitors | Administrator |
| Search for a dancer | Dancers | Administrator |
| Approve an organization, allow or revoke license issuing, remove it from the federation | Organization page | Administrator |
| Assign or change a competitor's organization, rename a competitor | Organization page, **Transfers** tab | Administrator |

The History and Enforcement log tabs are read-only for everyone.

---

## Competitors

The **Competitors** tab is the class roster: one row for each competitor's membership in a federation class, with its status and current promotion points.

### Finding a competitor

- **The class column.** The classes are listed beside the roster, each with the number of memberships under the current status filter. The roster opens on the first class. Type in **Filter by class** to narrow the column.
- **Search by class, competitor or member.** Searches the class name, the competitor's name and members, the competitor ID and the membership reason. A search term searches every class, so you do not need to know a competitor's class to find them. The search is kept in the address (`?search=`), so you can share it.
- **Filter by membership status.** Opens on **active**. Clear it to see every status.
- **One division.** `Structure → (division) →` **Open this division in Members** opens the roster limited to that division's classes (`?division=`).
- **One competitor.** A link with `?team=<competitor ID>` shows only that competitor, whatever class or status filter is set. A tag, **Showing \<competitor\>**, says so; close the tag to go back to the full roster.

The list is sorted by points, highest first, then active before other statuses, then by name.

### What a row shows

| Item | Meaning |
|---|---|
| Square badge | Current promotion points in this class (blue when above zero) |
| Name | The competitor's name, or its members if it has no name |
| Class tag | The federation class |
| Status tag | **active**, **inactive**, **retired** or **pending** |
| **locked** | Automatic transitions are locked for this membership (see below) |
| `#1234` | The competitor ID |
| **Effective** | The date the membership applies from |
| **pts** | Points, when a progress row exists |
| Reason | Why the membership exists, for example **Automatic promotion — point threshold reached**, **Manual promotion**, **Age-group transition** or **Auto-enrolled at registration** |

Click a row to expand it. The expanded row shows:

- **Members:** the dancers in the competitor, each a link to their [Dancers](#dancers) summary.
- **Progress:** every progress row for this class, with points, status and when it was **Calculated**.
- **Enforcement log:** the rule decisions recorded for this competitor, newest first.

### Adding a membership

Use this when a competitor should start in a class from a given date.

1. Press **Add** under the roster.
2. Fill in the form:

| Field | What to enter |
|---|---|
| **Competitor** | The competitor ID, the number shown as `#1234` on the roster |
| **Federation class** | The class. Only the classes in the current view are offered. |
| **Status** | **active**, **inactive**, **retired** or **pending** |
| **Effective from** | The date the membership applies from |
| **Reason** | Required. Say what changed, why, and who approved it. |
| **Lock automatic transitions** | On: automatic promotions and the age-up batch leave this membership alone |

3. Press **Save changes**.

The server checks that the competitor fits the class: the number of members and required dance roles for the category, and the ages for the age group. If the competitor already has a membership in that class, that membership is updated instead of a second one being created.

### Editing a membership

Use this for a manual promotion, demotion, correction or class move.

1. Press **Edit** on the row.
2. Change the **Federation class**, **Status**, **Effective from** or **Lock automatic transitions**, and write a new **Reason**.
3. If you change the class, a **Carryover type** control appears. Choose how many promotion points the competitor starts with in the new class:

| Carryover type | Effect |
|---|---|
| **Keep everything** | All current points move with the competitor |
| **Set points manually** | The new class starts on the number you enter. Presets: 0 and 14. The current points are discarded. |
| **Carry over a percentage** | A share of the current points. Presets: 50% and 25%. |

   A **Carryover preview** line shows the points the new class will start with.
4. Press **Save changes**.

The change is written to the competitor's class history (see [History](#history)): as an **age move** when the new class is in a different age group, otherwise as **manual**. Promotion points and how they are earned are explained in [Promotion points](/federation/progression/).

### Removing a membership

Press the red delete button on the row and confirm **Remove membership for \<class\>?**. The removal is recorded in the class history with the reason "Membership deleted".

### Sync federation progress

**Sync federation progress** recalculates every competitor's promotion points from their results and applies any promotion that is now due. When it finishes it reports how many progress rows were updated and how many promotions were applied.

### Download CSV

**Download CSV** saves the roster as it is filtered now: **Competitor ID**, **Competitor**, **Class**, **Status**, **Effective from**, **Points**, **Reason** and **Locked**. It is disabled until the roster shows at least one row.

### Age-up batch transition

Below the roster is the **Age-up batch transition**: set an **Effective date**, press **Preview**, tick the competitors to move, optionally set a carryover, and press **Run age-up**. It always covers the whole federation, also when the roster is limited to one division. The full workflow is in [Age moves](/federation/age-moves/).

### Organization changes

Do not use the roster to change which club a competitor represents. Use the organization's page, reached from the [Organizations](#organizations) tab, so the transfer history stays in one place. See [Club transfers](/federation/club-transfers/).

---

## Dancers

The **Dancers** tab (**Dancer lookup**) shows everything the federation knows about one dancer. It is the first stop when a dancer asks why they cannot register.

1. Type at least three characters of the dancer's name or email in **Search dancers by name or email (min 3 characters)**.
2. Pick the dancer from the suggestions. The summary opens straight away; **Open** does the same.

The dancer is kept in the address (`?tab=dancers&user=<user ID>`). The **Members:** links on the Competitors tab open the same view.

The summary has four parts:

| Part | Shows |
|---|---|
| Header | Name, email, birthdate (or a warning when it is missing) and user ID. **Refresh** reloads the summary. |
| **Licenses** | Every license in this federation: license item, season (or **Lifetime**), license status, payment status, validity dates, invoice reference and note |
| **Competitors and class memberships** | Each competitor the dancer is in, with its class memberships, status, points and a **locked** tag. The competitor name opens the Competitors tab searched for that competitor. |
| **Recent rule decisions** | The latest 50 enforcement log entries for the dancer and their competitors |

This tab only reads. To act on a license, use the license pages; see [Federation admin licenses](/federation-licenses/federation-admin/).

---

## Organizations

The **Organizations** tab (`?tab=clubs`) lists the clubs linked to the federation, sorted by tag and then name. Each row shows the club's tag, its name, **approved** or **pending**, and **issuer** when the club may issue licenses. **Search by tag, name, city, email, or license role** filters the list.

Click a club to open its page. There, an Administrator can:

- **Approve organization** or **Mark pending**.
- **Allow license issuing** or **Revoke license issuing**.
- **Remove from federation**.
- On the **Transfers** tab: **Assign organization**, **Change organization** and **Rename competitor**.

What each of these does to licences, teams and representation is covered in [Club transfers](/federation/club-transfers/) and [Federation admin licenses](/federation-licenses/federation-admin/).

---

## History

The **History** tab lists every class change in the federation, newest first: placements, promotions, demotions, age moves and manual changes.

Each entry shows the class, the change type, the date, **From:** and **To:** classes, the competitor (a link to the competitor's page), the reason and any extra data.

| Change type | Written when |
|---|---|
| **initial** | A membership is created |
| **placement** | A membership is created with **Lock automatic transitions** on |
| **promotion** / **demotion** | A competitor moves up or down the class ladder |
| **age move** | A competitor moves to another age group: by the age-up batch, or by staff editing a membership into a class in a different age group |
| **manual** | Staff edit or remove a membership in any other way |

Filter with **Search by competitor, class, or reason**, **Filter by class** and **Filter by change type**. The change type filter only offers types that occur in the list.

---

## Enforcement log

The **Enforcement log** records why the system allowed or refused something that the federation rules control. Nothing is enforced from this tab: the checks run where the action happens, and this tab shows what they decided. It is read-only.

### What is logged

Each entry has an **enforcement point** (where the check ran) and an **action** (what it decided).

| Enforcement point | Written by |
|---|---|
| `registration` | Registration for a competition: whether the competitor passed the federation checks, was blocked, or was auto-enrolled into a class |
| `progression` | Promotion points being awarded or carried over |
| `promotion` | Promotions: applied, or earned but not applied |
| `ranking` | The ranking update, when a competitor is left out of a ranking, for example because a member lacks a valid ranking license |

| Action | Meaning |
|---|---|
| `allowed` | The check passed |
| `blocked` | The action was refused |
| `excluded` | The competitor was left out, for example of a ranking |
| `promoted` | A promotion was applied, or a competitor was auto-enrolled into a class at registration |
| `skipped` | The check did not apply, or nothing was done |

Each entry shows the reason, the enforcement point, the action, the time, and the **Competitor:**, **User:**, **Class:**, **Competition:**, **Ranking:**, **Season:** and **Created by:** it concerns, plus any extra data.

### Finding an entry

- **Search by reason, competitor, user, ranking, or event**, **Filter by enforcement point**, **Filter by action** and **Filter by class**. The point, action and class filters only offer values that appear in the loaded entries.
- The tab loads the 500 most recent entries. Search and filters apply to the loaded entries only. Press **Load older entries** to load the next 500; **Full history loaded.** shows when there are no more.

The same log, limited to one competitor, is shown when you expand a row on the [Competitors](#competitors) tab, and the latest 50 entries for a dancer are on the [Dancers](#dancers) tab.

---

## Troubleshooting

| Message | Cause |
|---|---|
| **Competitor not found** | The **Competitor** field on a new membership does not hold an existing competitor ID. |
| **The lineup does not meet the required number of members for this class** | The competitor has too few or too many members for the class's category. |
| **The lineup is missing a required dance role for this class** | The category requires a role, such as leader or follower, that no member has. |
| **Does not meet the minimum age requirement for this class** / **Exceeds the maximum age for this class** | A member's age does not fit the class's age group on the **Effective from** date. See [Age category rules](/federation-rules/age-category-rules/). |
| **A birthdate is required for every team member in this age group.** | A member has no birthdate on their account. |
| A save fails with a permission error | Your role is below Administrator. See [Who can do what](#who-can-do-what). |

---

## Not in this version

- The **Competitor** field on a new membership takes a competitor ID. There is no search by name.
- Enforcement log entries cannot be annotated, resolved or exported.
- The Organizations tab has no filter for **pending** or **issuer**; use the search box.

---

## Related pages

- [Club transfers](/federation/club-transfers/): moving dancers and competitors between clubs
- [Federation Licenses](/federation-licenses/): issuing and managing licenses
- [Promotion points](/federation/progression/): how points are earned and how promotion works
- [Age moves](/federation/age-moves/): the age-up batch transition in detail
- [Divisions and disciplines](/federation/divisions/): the classes the roster is built on
- [Federation staff roles](/federation/staff-roles/)
