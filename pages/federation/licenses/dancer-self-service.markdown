---
layout: page
title: Dancer self-service
permalink: /federation-licenses/dancer-self-service/
parent: Federation Licenses
nav_order: 3
---

# Dancer self-service

Location:

- `Public -> Account -> Licenses`

This page is for dancers who apply for their own federation license.

Use it only when the federation allows direct self-service or a hybrid flow where the dancer is still the payer.

Use [Dancer](/dancer/) first if you still need to decide whether the dancer or the school/club should start the license process.

## Before you start

Make sure this is the correct flow for you:

1. The federation allows self-service
2. You know which license item you need
3. You know the correct season year
4. If it is a one-time or competition-scoped license, you know the competition id
5. If the item needs organization context, you already belong to the correct organization
6. The federation has connected Stripe if you expect a direct `Pay` button after application

## 1. Submit your own application

Steps:

1. Open `Account`
2. Press `Licenses`
3. Select `Federation`
4. Select `License item`
5. Set `Season year`
6. If required, fill `Competition ID`
7. If the license item requires an organization, select `Organization`
8. Optionally fill `Note`
9. Press `Apply for license`

What success looks like:

- your license row appears in the lower list
- the row shows the expected season
- the row shows the correct item
- the row shows `payer type = self` if you are the payer
- the row may still stay `pending` until required approval is complete

What to do next:

- if the row shows `payer type = self`, continue to payment
- if the row stays pending after payment, wait for approval or contact federation admin
- if the row is wrong and unpaid, contact federation admin before creating another row

### What each field means

- `Federation`: the federation you are applying in
- `License item`: the exact product the federation has exposed for self-service
- `Season year`: target season or calendar year
- `Competition ID`: required for one-time or competition-scoped items
- `Organization`: only use this when the item requires or allows organization-connected self-service
- `Note`: optional comment

### What the page hides automatically

The self-service page only shows items the backend says you can apply for.

An item is hidden when:

- the federation requires organization-managed application in that scope
- the item requires organization membership or approved issuer membership that you do not have
- the item is not valid for self-service in the current federation workflow

This filtering is there to stop you from applying for products that are not available in your flow.

If you cannot find the item you expected:

1. Check that you selected the correct federation
2. Check whether the federation expects organization-managed application instead
3. Check whether the item requires an organization or approved issuer
4. Contact federation admin or your organization if you still cannot find the correct item

## 2. Pay when you are the payer

Your current license rows are shown in the lower table.

The table shows:

- federation
- selected license item
- season
- status
- payment status
- payer type

If `payer type = self` and `payment status = unpaid`, the row shows a `Pay` button.

### Self-payment steps

1. Find the correct row
2. Confirm the item and season
3. Press `Pay`
4. Complete Stripe checkout
5. Return to Vote4Dance

What success looks like:

- payment status changes to `paid`
- the license may become `active` immediately
- or it may stay `pending` if approval is still required

What happens after payment:

- payment is written to the license row
- the Stripe payment is sent to the federation connected Stripe account
- the license may auto-activate if the federation rules allow it
- otherwise it stays pending but paid until any required approval is complete

If the federation has not connected Stripe yet, self-payment checkout cannot complete.

If the row shows `payer type = organization`, do not expect a self-payment button on this page. The organization must continue the workflow from its own license page.

If you paid but the license is still not active:

- do not create a second application
- wait a moment and refresh the page
- if it is still paid but pending, contact federation admin or your organization

When **not** to pay:

- if `payer type` is not `self`
- if the row is already paid
- if the license item or season is clearly wrong

## 3. Organization-linked self-service

Some federations allow self-service only when you are connected to an approved organization.

In that case:

1. Choose the correct license item
2. Select one of your organizations
3. Submit the application

If the selected item requires an approved issuer and your organization is not approved, the backend rejects it.

Use this only when the federation specifically allows self-service together with organization context.

In a hybrid federation, this is one of the most common reasons a dancer can see a product but still not complete the full workflow alone.

## Common problems

- the expected license item is missing
- the payment button does not appear
- payment succeeded but the row is still pending
- the organization selector does not contain the expected organization

## What this page does not decide

This page does not decide:

- which license item the federation expects you to buy
- whether the school or club should manage the application instead
- whether a federation approval is still required after payment

Use the dancer and school/club role guides for that decision-making. Use this page only to execute the self-service application and payment steps.
