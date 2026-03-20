---
layout: page
title: Federation Licenses
permalink: /federation-licenses/
nav_order: 5
has_children: true
---

# Federation Licenses

This section explains the **current** Vote4Dance license workflow as a guided setup and support flow.

## Start here

Choose the page that matches what you are trying to achieve right now:

1. [Federation admin](/federation-licenses/federation-admin/)  
   Use this if you are setting up the federation, defining products, connecting Stripe, or approving licenses.
2. [Organization admin](/federation-licenses/organization-admin/)  
   Use this if a club or school should apply for licenses on behalf of members.
3. [Dancer self-service](/federation-licenses/dancer-self-service/)  
   Use this if the dancer is allowed to apply and pay themselves.

## What you are building

The current license system uses four separate concepts:

- `Issued license`: the personal license row for one person, season, and optionally one competition
- `License item`: the federation-defined product, such as annual, one-time, or branch-specific variants
- `Class license item mapping`: the exact license items accepted for a federation class
- `Issuer role on organization`: an organization approved to issue or approve licenses when federation rules require it

When you set up licenses, build them in this order:

1. Build the federation structure:
   - `division`
   - `discipline`
   - `federation class`
2. Connect the federation Stripe account
3. Approve federation organizations and set issuer role where needed
4. Create `license items`
5. Map accepted `license items` to classes inside each division and discipline
6. Let organizations or dancers apply
7. Review payment and approval state
8. Activate licenses when the workflow is complete

## How payment works

The current implementation sends license payments to the federation's connected Stripe account.

Current money flow:

- the federation receives the license payment on its connected Stripe account
- the payment is still tracked on the license row in Vote4Dance for reconciliation, activation, and support

This means:

- the federation must connect Stripe before checkout can work
- the payer can still be the dancer or the organization
- the receiving Stripe account is always the federation's connected account

## Recommended setup path

If you are setting up licenses from scratch, follow this exact path:

1. Create or review all divisions, disciplines, categories, and federation classes
2. Open federation settings and connect Stripe
3. Decide whether the federation uses:
   - self-service
   - organization-managed application
   - a hybrid model
4. Approve organizations and set issuer role if the federation requires approved clubs or schools
5. Create the license items you want to offer
6. For each federation class, open the division and discipline, then map the accepted license items on the class
7. Test one real application:
   - create the application
   - pay it
   - verify payment status
   - verify approval behavior
   - verify activation behavior
8. Only after the test works, tell organizations or dancers to start using the workflow

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
