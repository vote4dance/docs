---
layout: page
title: Event registration policy
permalink: /federation/registration-for-event/
parent: Federation
nav_order: 5
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
| **Licences:** which licence items a class requires | The class's **License rules**. See [Divisions](/federation/divisions/#licenses). |
| **Age:** whether the competitor fits the class's age group | Age groups and [age category rules](/federation-rules/age-category-rules/) |
| **Team size and dance roles** | Category rules. See [How class rules work](/federation-rules/reference/). |
| **Who may register a competitor:** anyone, a member of the team, or the club | The rules editor, in the layer's **Rules** section under `Federation → Structure` |
| **Custom team names** allowed or not | The rules editor, in the layer's **Rules** section under `Federation → Structure` |
| **Which club a dancer represents**, if dancers must choose | The rules editor, in the layer's **Rules** section under `Federation → Structure` |
| **One class per category:** one age group and one level, per dancer or per team | The rules editor, in the category's **Rules** section under `Federation → Structure`. See [One class per category](#one-class-per-category). |

A class a competitor cannot enter is shown to them as locked, with the reason, before checkout.
Check the combined result of all your rules in `Federation → Rulebook`.

## One class per category

When competitors choose their own level, for example Rising Talent or Ultimate Talent, set **One
class per category**. A competitor can then be registered in only one class per category at an
event: one age group and one level. You choose who it applies to, per category:

| Setting | Use it for | What it means |
|---|---|---|
| **Per dancer** | Solo, Duo, Clipdance, Freestyle | Each dancer may be in only one class of the category. A dancer in Solo Juniors 1 Rising Talent cannot also enter Solo Juniors 1 Ultimate Talent or Solo Children. |
| **Per team** | Small groups, Formations | Each team may be in only one class of the category. Its dancers may still dance in other teams, in any class. |
| **Off** | Categories without the rule | No limit. |

1. Open `Federation → Structure`, the discipline (for example Hip Hop) and the category (for
   example Solo).
2. In the category's **Rules** section, set **One class per category** to **Per dancer**, **Per
   team** or **Off**, and save the rules.
3. Do this for each category, in each discipline that uses it.

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

## When a dancer says they are blocked

1. Open `Federation → Members → Dancers` and search for the dancer (searching needs the
   **Administrator** role). You see their licences, competitors and class memberships, and the
   latest rule decisions.
2. Check the **Enforcement log** for `registration` entries. Each one says why the registration
   was allowed or blocked.
3. Most blocks are a licence that is not **Active**, a missing birth date, or a class the
   competitor has moved out of.

See [Members](/federation/members/#dancers).

## Before the season's first registrations open

- Every class that should require a licence has its **License rules** set.
- Your age groups and rules are final. Changes during a registration period affect people halfway
  through registering.
- You have told clubs and organizers which licences are needed.

## Next step

Continue to [Creating and getting a ranking](/federation/creating-and-getting-a-ranking/).
