---
layout: page
title: What your rules do at event registration
description: What a federation's rules check automatically when a dancer, club or organizer registers for an event run under the federation.
permalink: /federation/registration-for-event/
parent: Federation Rules
nav_order: 13
---

# What your rules do at event registration

You do not enter registrations. But when an event runs under your federation, **your rules decide
who may register for which class**, and Vote4Dance checks them automatically when a dancer, club or
organizer registers.

## How an event comes under your federation

The organizer chooses your federation when creating the event, or later on the event's details
page. There is no approval step on your side. The event then appears on
`Federation → Competitions`. See [Competitions](/federation/competitions/).

The organizer maps each of their classes to one of your **Federation Classes**. That mapping is
what brings your rules into their event.

## What is checked at registration

| Check | Where you set it |
|---|---|
| **Licenses:** which license items a class requires | The class's **License rules**. See [Divisions](/federation/divisions/#licenses). |
| **Age:** whether the competitor fits the class's age group | Age groups and [age category rules](/federation-rules/age-category-rules/) |
| **Team size and dance roles** | Category rules. See [Federation Rules](/federation-rules/). |
| **Who may register a competitor:** anyone, a member of the team, or the club | **Who may register**, in the **Federation rules** editor of the discipline, category or class |
| **Custom team names** allowed or not | **Allow custom competitor names**, in the **Federation rules** editor of the discipline, category or class |
| **Which club a dancer represents**, if dancers must choose | **Ask which organization each dancer represents**, in the **Federation rules** editor of the discipline, category or class |
| **Lineup changes that follow the club's dancer count**, for small groups and formations | **Lineup changes follow the club's dancer count**, in the **Federation rules** editor of the discipline, category or class. See [Lineup changes that follow the club's dancer count](#lineup-changes-that-follow-the-clubs-dancer-count). |
| **One class per category:** one age group and one class level, per dancer or per team | **One class per category**, in the category's **Federation rules** editor. See [One class per category](#one-class-per-category). |

Every **Federation rules** editor is under `Federation → Structure`; [Where to find each editor](/federation-rules/editor/#where-to-find-each-editor) lists them per level.

A class a competitor cannot enter is shown to them as locked, with the reason, before checkout.
Check the combined result of all your rules in `Federation → Rulebook`, which shows what applies
to a class and the level that set each rule.

## One class per category

When competitors choose their own class level, for example Rising Talent or Ultimate Talent, set **One
class per category**. A competitor can then be registered in only one class per category at an
event: one age group and one class level. You choose who it applies to, per category:

| Setting | Use it for | What it means |
|---|---|---|
| **Per dancer** | Solo, Duo, Clipdance, Freestyle | Each dancer may be in only one class of the category. A dancer in Solo Juniors 1 Rising Talent cannot also enter Solo Juniors 1 Ultimate Talent or Solo Children. |
| **Per team** | Small groups, Formations | Each team may be in only one class of the category. Its dancers may still dance in other teams, in any class. |
| **Off** | Categories without the rule | No limit. |

1. Open `Federation → Structure`, the division, and **Categories**.
2. On the **Federation rules** tab, pick the category (for example Solo).
3. Set **One class per category** to **Per dancer**, **Per team** or **Off**, and press **Save
   rules**.
4. Do this for each category that uses it. The rule can also be set on a discipline or on a single
   class, in their **Federation rules** editors.

What dancers, clubs and organizers then see:

- On the registration page, the other classes of the category are locked as soon as one is in the
  cart or registered, with the class the dancer or team is already in. See
  [One class per category](/dancer/registration-for-event/#one-class-per-category).
- Each category counts on its own: a dancer can still dance Solo, Duo and Clipdance.
- **Per dancer:** adding a dancer to a registered team, or bringing one into a lineup, is checked
  the same way.
- **Per team:** a team counts as the same team after a lineup change. Example: formation Dance Pops
  in Children Rising Talent cannot also enter Children Ultimate Talent or New Talent, while its
  dancers can still dance in team Disco Fever in all three.
- The organizer's staff and the check-in desk see a warning instead, and can still register,
  add or move the competitor.
- The rule only stops new registrations. A competitor already in two classes stays in both until
  the organizer cancels one.

## Lineup changes that follow the club's dancer count

For small groups and formations, a club often swaps dancers after it has paid. With **Lineup
changes follow the club's dancer count**, such a swap costs nothing as long as the club does not
have more different dancers in the registration period than it has paid for. Each extra dancer is
paid for at the period's price. When a dancer leaves, nothing is refunded, and the place stays with
the club for another dancer.

Use it when a club pays per dancer for a group, and you want it to be able to change who dances
without asking the organizer each time.

1. Open the **Federation rules** editor of the discipline, category or class where it should
   apply, under `Federation → Structure`
   ([Where to find each editor](/federation-rules/editor/#where-to-find-each-editor)).
2. Turn on **Allow lineup change after registration**, and then **Lineup changes follow the
   club's dancer count**. Press **Save rules**.

What you need to know:

- **It needs lineup changes to be allowed.** Without **Allow lineup change after registration**
  the rule has no effect.
- **It applies to a registration period where each dancer pays once.** That is a period priced per
  person with more than one price step, all with the same total. In other periods the rule does
  nothing.
- **It applies to teams that belong to a club.** Independent teams are not counted.
- **The price comes from the period.** The organizer sets it. You do not set an amount here.
- **It is off by default.** The most specific level that sets it wins, so you can switch it on for
  small groups and formations and leave duos and solos off.
- **A club pays the extra dancers itself.** In the club's **Edit lineup**, an **Add dancer** button
  appears and a pop-up takes the payment. See [Changing a group's lineup after
  paying](/school-club/registration-for-event/#changing-a-groups-lineup-after-paying).
- **After registration closes, clubs can no longer change lineups.** The organizer can still make
  the change, and the place the club paid for stays with the club.

## When a dancer says they are blocked

1. Open `Federation → Members → Dancers` and search for the dancer (searching needs the
   **Administrator** role). You see their licenses, competitors and class memberships, and the
   latest rule decisions.
2. Check the **Enforcement log** for `registration` entries. Each one says why the registration
   was allowed or blocked.
3. Most blocks are a license that is not **Active**, a missing birth date, or a class the
   competitor has moved out of.

See [Members](/federation/members/#dancers).

## Before the season's first registrations open

- Every class that should require a license has its **License rules** set.
- Your age groups and rules are final. Changes during a registration period affect people halfway
  through registering.
- You have told clubs and organizers which licenses are needed.
