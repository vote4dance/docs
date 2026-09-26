---
layout: page
title: Problems (setup checks)
permalink: /manager-guide/validator/
parent: Manager Guide
nav_order: 3.9
help:
  manager.event.validator: checks
  manager.event.validator.dsf: dsf-checks                          # dsf.* checks
  manager.event.validator.license-conflicts: dsf-checks             # a DSF check without the dsf. prefix
  manager.event.validator.wdsf: wdsf-checks                         # wdsf.* checks
  manager.event.validator.scheduling-conflicts: schedule-conflicts
---

# Problems (setup checks)

**Problems** runs a set of automatic checks on your competition setup: participants, start numbers, classes, rounds, judge panels and the schedule. It lists every check that fails, together with the participants or rounds that caused it. The checks run on the server and update by themselves while you work, so you never have to start them.

## Where to find it

**Problems** is at the top of the Manager sidebar, under **Event overview**, marked with a red warning icon. A badge shows how many checks are failing.

The link only appears while at least one check fails. When everything passes it disappears from the sidebar. You can still open the page directly at `/manager/event/<event id>/validator`, where each competition shows an empty result.

You need the Manager app for the event to see Problems.

## Reading the page

If the event has several competitions, the page has one section per competition, headed with the competition's name. Otherwise it shows a single section for the event.

Each failed check is a table headed **Validating that** *what should be true* **- failed!**, for example "Validating that there are no start number conflicts - failed!". Checks that pass are not shown.

The rows are what caused the check to fail:

| Row type | Columns | Click to open |
|---|---|---|
| Participant | `#` (start number), **Participant name**, club | The participant |
| Round | **Round name**, class, **Schedule** | The round's settings |
| Schedule conflict | **Dancer**, **Time** (overlap in minutes), **Round A**, **Round B** | Either round |

## Checks

These checks run for every competition. The name is the text shown after **Validating that**.

| Check | What it means | How to fix it |
|---|---|---|
| there are no start number conflicts | Two participants in the same class have the same start number. Cancelled participants are ignored. | Open one of the participants and change **Start number**, or run **Assign start numbers** again. See [Assign start numbers](/manager-guide/competition-setup/#step-4-assign-start-numbers-and-class-entries). |
| there are no invalid start numbers | A participant has a class but no start number. Cancelled participants are ignored. | Give the participant a **Start number**, or use **Assign start numbers**. See [Assign start numbers](/manager-guide/competition-setup/#step-4-assign-start-numbers-and-class-entries). |
| participants without a placement have an existing class set to start in | A participant has no class at all, or their class has been deleted. A participant whose class was deleted is not flagged if they are cancelled or already have a placement. | Open the participant and pick a class in **Starting in**, or cancel the participant. See [Participants](/manager-guide/competition-setup/#step-3-add-participants). |
| the same person ID is always used with the same name | One **Person ID** appears on participants under two different names, for example a typo in one registration. For a group entry (a crew name with members' IDs), the crew name is not compared. | Correct the name or the **Person ID** on the listed participants. If the data came from an import, fix the source file and import again. See [Update/import participants](/manager-guide/registration-checkin/#updateimport-participants). |
| finales have no participants through | The last round of a class has **Number to advance** above 0 and no **Round priority setting**. A sub-round of the final with **Number to advance** above 0 also fails. | Set **Number to advance** to `0` on the final and its sub-rounds. See [Build rounds](/manager-guide/competition-setup/#step-2-build-rounds-from-classes). |
| rounds before the finale has participants through | A round before the final has **Number to advance** set to `0`, so nobody would move on. Rounds with **Best placement** set, rounds with no judging, and sub-rounds of the final are not checked. | Set **Number to advance** on the round. See [Build rounds](/manager-guide/competition-setup/#step-2-build-rounds-from-classes). |
| main rounds should share the same schedule group as the last sub round | A main round with sub-rounds is on a different **Schedule item** from its last sub-round. The summary round would then appear in the schedule at the wrong time. Match-judged rounds are not checked. | Put the main round on the same **Schedule item** as its last sub-round. See [Build rounds](/manager-guide/competition-setup/#step-2-build-rounds-from-classes). |
| classes with rounds have judges added | A child class of a **Group** has a round with no judging panel, or its panel has no judge of the type **Judge**. The panel is the round's own panel if it has one, otherwise the class's panel. Only child classes of a group whose child classes have no **Class role** are checked. | Assign a panel with at least one **Judge** to the class or the round. See [Judges and panels](/manager-guide/competition-setup/#step-5-add-judges-and-build-panels). |
| validator.tests.invalid-group-round-judges | This check has no English text in this version, so its technical name is shown. A **Group** class (whose child classes have no **Class role**) has a round whose panel has judges on it. In such a group the judges belong on the child classes, not the group. | Remove the panel from the group class and its rounds, or remove the judges from that panel. Put the judges on the child classes' panels instead. See [Judges and panels](/manager-guide/competition-setup/#step-5-add-judges-and-build-panels). |
| main rounds that sum points have subrounds that use points as well | A main round with **Judging type** **Sum points** has a sub-round that is not judged with points. | Change the sub-round to points judging, or change the main round's **Judging type**. See [Build rounds](/manager-guide/competition-setup/#step-2-build-rounds-from-classes). |
| main rounds that use AJS have subrounds that use AJS as well | A main round with **Judging type** **JS 3.0** (AJS) has a sub-round that is not judged with AJS. | Change the sub-round to AJS, or change the main round's **Judging type**. See [Build rounds](/manager-guide/competition-setup/#step-2-build-rounds-from-classes). |
| child class round names match group round names | For a **Group** whose child classes have no **Class role**, a child class has a main round whose **Round name** is not one of the group's round names. For a leader/follower group, a child class's main round names differ from those of its partner classes. | Rename the listed rounds so the names match exactly, including spaces. See [Build rounds](/manager-guide/competition-setup/#step-2-build-rounds-from-classes). |
| priority settings are correct | A round's **Round priority setting** gives priority to a class that no longer exists. | Open the round's **Priority** settings and remove or replace the deleted class. See [Build rounds](/manager-guide/competition-setup/#step-2-build-rounds-from-classes). |
| each leader/follower class has exactly one partner class | A class with a **Class role** (`Leader` or `Follower`) is in a group that has no other role class, or has more than one. | Put exactly one leader class and one follower class under the same **Group under**. See [Create classes](/manager-guide/competition-setup/#step-1-create-classes). |
| leader and follower partner rounds have matching sub-round counts | A leader class and its follower class both have a main round with the same name, but the two rounds have a different number of sub-rounds. | Add or remove sub-rounds so both sides match. See [Build rounds](/manager-guide/competition-setup/#step-2-build-rounds-from-classes). |
| no dancer is scheduled in two overlapping rounds at the same time | A dancer is in two rounds whose estimated times overlap. See [Schedule conflicts](#schedule-conflicts). | Move one of the rounds in the schedule, or put both on the same floor. See [Several floors at once](/manager-guide/floors/#several-floors-at-once). |

## DSF checks

These run only when the competition's federation is DSF.

| Check | What it means | How to fix it |
|---|---|---|
| there are no conflicting license numbers | The same license number appears twice among the participants in one class. Cancelled participants are ignored. | Correct the **License** on the listed participants, or cancel the duplicate entry. See [Participants](/manager-guide/competition-setup/#step-3-add-participants). |
| shared rounds WITH acrobatics (parent round uses sums) (DSF) | A main round judged with **Sum subtotal** (full or partial judging) has sub-rounds, but none of them has acrobatics, or one of them is not full or partial judging. | Give the sub-rounds full or partial judging with acrobatics, or change the main round's **Judging type**. See [Build rounds](/manager-guide/competition-setup/#step-2-build-rounds-from-classes). |
| shared rounds WITHOUT acrobatics (parent round uses placements) (DSF) | A main round has a sub-round with acrobatics, but the main round does not use **Sum subtotal**. | Set the main round's **Judging type** to **Sum subtotal**. See [Build rounds](/manager-guide/competition-setup/#step-2-build-rounds-from-classes). |
| collect stars results are only available for coach/team leader | A round judged with collect stars does not hide its results from everyone but the coach. | In the round's **Results** settings, set **Hide results from position** to `0` and **What to hide** to **Coach**. See [Build rounds](/manager-guide/competition-setup/#step-2-build-rounds-from-classes). |

## WDSF checks

These run only when the competition's federation is WDSF.

| Check | What it means | How to fix it |
|---|---|---|
| parent round summarizing checkmarks | A main round that sums checkmarks (**Sum marks**) has a sub-round with a different judging type. | Give every sub-round checkmark judging, or change the main round. See [Build rounds](/manager-guide/competition-setup/#step-2-build-rounds-from-classes). |
| parent round summarizing placements | A main round that sums placements (**Sum placements**) has a sub-round with a different judging type. | Give every sub-round placement judging, or change the main round. See [Build rounds](/manager-guide/competition-setup/#step-2-build-rounds-from-classes). |
| finale is not using checkmarks | A main round with **Number to advance** `0` (a final) uses checkmark judging. | Change the final's **Judging type** to placement judging. See [Build rounds](/manager-guide/competition-setup/#step-2-build-rounds-from-classes). |

## Schedule conflicts

The schedule conflict check covers the whole event, including clashes between rounds in different competitions. With several competitions, the same list therefore appears in each competition's section.

What counts as a conflict:

- The same dancer is in two rounds whose estimated times overlap. A dancer is recognised by their **Person ID**, or by their account when the participant is linked to a **Competitor** that has members with accounts.
- The two rounds are in different classes, and not on the same floor. Two rounds on the same floor cannot actually run at the same time.

A round's estimated time comes from its **Schedule item**, its place in the schedule, **Number of heats** and **Heat length**. A round that is not on a schedule item, or whose schedule item has no start time, is not checked.

The check is skipped entirely when no participant has a **Person ID** or a linked **Competitor**. Without them, dancers cannot be recognised across classes.

For the full report, open **Open conflicts page** at the top of `Manager → Event → Schedule`. It also lists **Tight** transitions, where a dancer has only a few minutes between two rounds.

## Severity

Problems has no severity levels. Every failed check is shown the same way and counts as one in the sidebar badge, however many rows it has.

Problems also does not block anything. You can publish the event and start rounds while checks are failing. Whether a failure matters is up to you. For example, a start-number conflict in a class that has already finished may be harmless.

The **Schedule conflicts** page does grade its findings:

| Severity | Meaning | On Problems |
|---|---|---|
| **Conflict** | The two rounds overlap. | Yes |
| **Tight** | The rounds do not overlap, but the gap between them is short. | No, only on the conflicts page |

## When to run it

The checks run by themselves. The page updates when participants, classes, rounds, judges or the schedule change. Keep an eye on the sidebar badge, and open **Problems** at these points in particular:

- After building the rounds of all classes, and after using the **Round guide**.
- After importing or updating participants, and after assigning start numbers.
- After setting up judge panels.
- After building or changing the schedule, and after moving rounds between floors.
- Before publishing the event, and again on the morning of the competition.
- During the event, after late entries, cancellations or moved rounds.

## Not in this version

- Hiding or accepting a single failed check. A check stays on the list until the setup is changed.
- Severity levels, or a way to mark a check as a warning only.
- An English text for the group-judges check, which shows as `validator.tests.invalid-group-round-judges`.

## Related pages

- [Competition setup](/manager-guide/competition-setup/): classes, rounds, participants and judges
- [Registration and check-in](/manager-guide/registration-checkin/): importing participants
- [Floors](/manager-guide/floors/): parallel floors and schedule conflicts
- [Live operations](/manager-guide/live-operations/): checks before and during the event
- [Planning your first competition](/manager-guide/first-competition/)
