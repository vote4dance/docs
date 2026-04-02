---
layout: page
title: Federation Licenses
permalink: /federation-licenses/
nav_order: 5
has_children: true
---

# Federation Licenses

This section explains the current Vote4Dance federation license workflow as a guided setup and support flow.

## Start here

Choose the page that matches what you are trying to achieve right now:

1. [Federation admin](/federation-licenses/federation-admin/)  
   Use this if you are setting up the federation, defining products, connecting Stripe, or approving licenses.
2. [Organization admin](/federation-licenses/organization-admin/)  
   Use this if a club or school should apply for licenses on behalf of members.
3. [Dancer self-service](/federation-licenses/dancer-self-service/)  
   Use this if the dancer is allowed to apply and pay themselves.

## What you are building

The current license system uses five separate concepts:

- `Issued license`: the personal license row for one person, season, and optionally one competition
- `License item`: the federation-defined product, such as annual, one-time, or branch-specific variants
- `Class license item mapping`: the exact license items accepted for a federation class
- `Issuer role on organization`: an organization approved to issue or approve licenses when federation rules require it
- `Representation and class state`: federation-side representation, class membership, and progress rows that support the wider workflow

When you set up licenses, build them in this order:

1. Build the federation structure:
   - `division`
   - `discipline`
   - `federation class`
2. Connect the federation Stripe account
3. Approve federation organizations and set issuer role where needed
4. Create `license items`
5. Map accepted `license items` to classes inside each division and discipline
6. Review representation, membership, and progression setup if the federation uses those flows
7. Let organizations or dancers apply
8. Review payment and approval state
9. Activate licenses when the workflow is complete

## How payment works

The current implementation sends license payments to the federation's connected Stripe account.

Current money flow:

- the federation receives the license payment on its connected Stripe account
- the payment is still tracked on the license row in Vote4Dance for reconciliation, activation, and support

This means:

- the federation must connect Stripe before checkout can work
- the payer can still be the dancer or the organization
- the receiving Stripe account is always the federation's connected account
- hybrid payer setups are supported, but the federation still controls which rows are self-paid and which are organization-paid

## Recommended setup path

If you are setting up licenses from scratch, follow this exact path:

1. Create or review all divisions, disciplines, categories, and federation classes
2. Open federation settings and connect Stripe
3. Decide whether the federation uses:
   - self-service
   - organization-managed application
   - a hybrid model
4. Set federation rules for ranking, registration, progression, and representation transfers if your federation uses them
5. Approve organizations and set issuer role if the federation requires approved clubs or schools
6. Create the license items you want to offer
7. For each federation class, open the division and discipline, then map the accepted license items on the class
8. If the federation tracks representation or class state, verify those rows in the admin area before going live
9. Test one real application:
   - create the application
   - pay it
   - verify payment status
   - verify approval behavior
   - verify activation behavior
10. Only after the test works, tell organizations or dancers to start using the workflow

## Which page should you open?

Use this decision:

- open [Federation admin](/federation-licenses/federation-admin/) if you are configuring or approving
- open [Organization admin](/federation-licenses/organization-admin/) if the organization should submit the application
- open [Dancer self-service](/federation-licenses/dancer-self-service/) if the dancer should submit the application

## What usually goes wrong

Most setup problems come from one of these:

- Stripe was not connected before testing payment
- license items were created before the federation class structure was ready
- classes were not mapped to accepted license items
- organizations were not approved before organization-managed applications started
- issuer role was not configured on the organization before issuer-managed applications started
- the wrong user flow was chosen for the federation
- class license rules were configured on the wrong division or discipline
- representation or progression rules were expected to work without the corresponding state rows

## Supported workflow patterns

The current product supports three main workflow patterns:

- `organization-managed`: the organization applies first, and payment may also be organization-paid
- `self-service`: the dancer applies first and pays themselves
- `hybrid`: the organization applies or approves, while payment may still be self-paid

What still matters operationally:

- the federation must configure the correct `license items`
- the federation must map those items to the correct classes
- the federation must configure issuer role on the right organizations when issuer approval is required
- the federation must connect the correct Stripe account before payment buttons can be used
- payment and activation behavior still follow the federation workflow rules, not only what the user clicks in UI

## Current admin surface map

The latest admin workflow is split across these screens:

- `Admin -> Federation -> Licenses`
  - issued licenses
  - license items
  - payment and approval review
- `Admin -> Federation -> Organizations`
  - federation approval on the organization
  - license issuer approval on the organization
  - representation rows for that organization
- `Admin -> Federation -> Division -> Discipline -> Class -> License rules`
  - accepted license items for one federation class
  - whether an item is required at registration, progression, or both
- `Admin -> Federation -> Division -> State`
  - class memberships
  - progression rows for the division

Use that structure when you support a federation. The license workflow is no longer a single-screen setup.
