---
layout: page
title: Promotion points
permalink: /federation/progression/
parent: Federation
nav_order: 9
---

# Promotion points (U-poäng)

Promotion points move competitors up a class ladder. Vote4Dance tracks them with one simple rule: **every competition entry carries the points earned at that competition** — whether the system computed them from judged results, they arrived in an imported result file, or an official typed them in. The federation side sums those values per class membership and promotes automatically at the class threshold.

## Where a value comes from

A competition entry's promotion points ("U-points") can be written three ways, and they all count the same:

1. **Computed** — when a judged final is confirmed, the system scores every placed entry through the federation's points table (banded by field size, per the rulebook). Revoking a final's confirmation retracts its points.
2. **Imported** — the "UP" / "Points" column of a result file. **This column means *points earned at this competition***, not the couple's running total. The one exception is a couple's very first appearance: see *Opening balances* below.
3. **Entered** — an official can edit the value on any entry in Manager (the U-points field in the team editor). The computed value wins again if results are re-confirmed, so make manual corrections after the competition is closed.

## Everything happens at competition close

Closing a competition is the moment progression runs. For every entry in a federation-linked class, the system:

1. **Resolves the couple** from the entry's person numbers — creating the dance team on first sight, reusing it forever after. The entry's club tag is resolved the same way: an unknown club is created (with placeholder details for the office to complete) and approved into the federation, and the couple's members receive bootstrap licenses and a representation record. Accuracy in result files is critical: a typo in a person number creates a phantom second couple with a split balance, and a typo in a club tag creates a duplicate club.
2. **Registers a class membership** — but only for couples that received points (earned or carried-in). Couples with nothing to record are not registered and do not appear in the division history; they are registered by whichever later competition first awards them points.
3. **Computes earned points** for judged classes (imported classes keep their entered values).
4. **Updates balances and applies promotions.** A couple reaching the class threshold is moved to the target class immediately, with the reason recorded in their history.

Historical competitions are never processed automatically — progression starts counting from each couple's first processed competition. To re-run progression for a competition (for example after importing results into an already-closed competition, or after a correction), set the competition's status to **closed** again.

## Opening balances

A couple's first processed entry opens their balance:

- On an **imported** first entry, the value is taken as their carried-in total — old result files that print running totals therefore seed transitioning couples correctly with no extra work.
- On a **judged** first entry, a pre-loaded value is preserved as their carried-in balance, and the entry itself ends up showing what they earned at that competition.
- The federation can also set or correct a carried-in balance directly (the carryover action on the division Status tab); it is added on top of everything the couple earns and survives recalculation.

**Correction rule for officials:** changes to a first-time couple's points are made *after* the competition is closed — before close, a value on a judged debut entry is read as their carried-in total, not as an earned override.

## Setting it up

Per division (or any narrower rule scope):

- **Points source** — set *Promotion points source* to "Points on the competition entry" (`team_up`). The other sources remain available: summary score, and placement re-derived at sync time.
- **Points table** — the placement-to-points table, banded by number of starters.
- **Ladder** — each class that promotes needs *Advance by: points*, a *target class*, and a *promotion threshold* on its class level or class rules.

The division's Progression tab shows the resolved setup per class, with warnings for configurations that would silently do nothing.

## Where to see points

- **Division → Status tab** — the roster: filter by class for every member with status and current points, or type a couple's name in the search field to find them across all classes.
- **Competitor profile** — click any couple in the division Historik view to open their page: classes with current points, membership details, and their full class history.
- **Manager teams table** — a points column appears automatically in any class where entries carry points, and a green rise icon marks couples whose result takes them past the threshold (with the target class in the tooltip).
- **Speaker (prize ceremony)** — the placement reveal shows a "moving up" badge for couples whose result earns the promotion, switching to past tense once the promotion is applied.

## What gets logged

The federation control log records decisions with consequences: promotions applied, promotions earned but blocked by a disabled auto-promotion rule, carried-in balances set, registrations blocked. Being below a threshold is a normal state, not an event, and is never logged.
