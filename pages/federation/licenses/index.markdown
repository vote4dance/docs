---
layout: page
title: Federation Licenses
permalink: /federation-licenses/
parent: Federation
nav_order: 2
has_children: true
---

# Federation Licenses

Use this section only for the actual federation license workflow.

Use the role pages when you need to decide who should perform the step:

- dancer context: [Dancer](/dancer/)
- school or club context: [School/Club](/school-club/)
- federation setup context: [Federation](/federation/)

## Start here

Choose the page by task, not by role label alone:

1. [Federation admin](/federation-licenses/federation-admin/)  
   Use this to configure the license system, connect Stripe, map license items to classes, and review or approve licenses.
2. [Organization admin](/federation-licenses/organization-admin/)  
   Use this when a school or club submits a license application for a member.
3. [Dancer self-service](/federation-licenses/dancer-self-service/)  
   Use this when the dancer is allowed to apply and pay directly.

## What is shared across all license workflows

All three pages use the same core objects:

- `Issued license`: one person, one season, optionally one competition
- `License item`: the product a federation sells or approves
- `Class license mapping`: which items are accepted for which classes
- `Payer type`: whether payment is started by the dancer or the organization
- `Approval flow`: whether payment is enough or extra approval is still required

## End-to-end license path

Every successful license workflow follows this order:

1. Federation sets up license items and payment flow.
2. Federation approves the organization if organization context is required.
3. Dancer or organization creates the application.
4. The correct payer completes payment if payment is required.
5. Federation or organization approval completes if the workflow requires it.
6. The license becomes active and can be used in downstream workflows.

## How payment works

All Stripe payments go to the federation's connected Stripe account.

That means:

- the federation must connect Stripe before checkout works
- the payer may still be the dancer or the organization
- payment can be complete even while approval is still pending

## Supported workflow patterns

The product supports three license workflow patterns:

- `organization-managed`: the organization applies first, and payment may also be organization-paid
- `self-service`: the dancer applies first and pays themselves
- `hybrid`: the organization applies or approves, while payment may still be self-paid

Use the role pages to decide which pattern applies.

Use the pages in this section to complete the actual task once the pattern is known.

## Common blockers

Most license problems still come from one of these:

- Stripe was not connected before testing payment
- the wrong workflow was used: self-service vs organization-managed
- the organization was not approved yet
- the wrong license item was selected
- the class mapping was never configured
- payment finished but approval is still pending

## Recommended use of this section

1. Start on this page only if you need shared license context.
2. Open [Federation admin](/federation-licenses/federation-admin/) for setup and approval work.
3. Open [Organization admin](/federation-licenses/organization-admin/) for club-submitted applications.
4. Open [Dancer self-service](/federation-licenses/dancer-self-service/) for dancer-submitted applications.
