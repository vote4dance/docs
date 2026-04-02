---
layout: page
title: Organization admin
permalink: /federation-licenses/organization-admin/
parent: Federation Licenses
nav_order: 2
---

# Organization admin

Location:

- `Public -> Organization -> Licenses`

This page is for a club, school, or organization manager who applies for licenses on behalf of members.

Use it when the federation expects the organization to start the license process.

## Before you start

Make sure all of this is true before you try to apply:

1. The organization is linked to the federation
2. The organization is approved in that federation
3. The person is already a member of the organization in Vote4Dance
4. If the selected license item requires an issuer organization, the organization is already an approved issuer
5. The federation has already connected its Stripe account if organization-paid Stripe checkout will be used
6. The organization federation connection was already created from `Organization -> Federation`

If any of these are missing, stop and ask federation admin to fix them first.

## How the organization gets here

The latest workflow starts on a different page:

1. Open `Organization`
2. Open `Federation`
3. Apply the organization to the federation
4. Wait for federation approval
5. Wait for separate issuer approval if the federation requires the organization to issue licenses
6. Only then continue on `Licenses`

If the federation connection is missing or still pending, the organization license flow is not ready yet.

## 1. Submit a license application

Steps:

1. Open the organization
2. Open `Licenses`
3. Select the federation in `Federation`
4. Select the member in `Member`
5. Select the product in `License item`
6. Set `Season year`
7. If the item is competition-scoped, enter `Competition ID`
8. Optionally fill `Note`
9. Press `Apply for license`

What success looks like:

- a new license row appears in the lower list
- the row normally starts as `pending` or `draft`
- the row shows the correct `payer type`
- the row shows the correct `payment status`
- the row may still require federation-side approval after payment

What to do next:

- if `payer type = organization`, continue to the payment step below
- if the row stays pending, wait for the federation approval flow
- if the row looks wrong, delete it only if it is still draft or pending and unpaid

### What each field means

- `Federation`: which federation this organization is applying in
- `Member`: the member who will own the license
- `License item`: the exact product the federation configured
- `Season year`: target season
- `Competition ID`: only required for `single_competition` items
- `Note`: comment for federation admin or internal tracking

### What the page hides automatically

The organization page already filters invalid choices.

A license item is hidden when:

- the federation rules only allow self-service in that scope
- the organization is not allowed to apply for that item
- the item requires an approved issuer and the organization is not an approved issuer

This filtering is there to stop the organization from applying for products it should not use.

If you cannot find the item you expected:

1. Check that you selected the correct federation
2. Check that the member belongs to the organization
3. Check with federation admin whether:
   - the item is self-service only
   - the item requires approved issuer status
   - the item is not active

If the wrong person was selected, do not try to repurpose the row. Delete it and create a new application for the correct member.

## 2. Pay when the organization is the payer

After an application is created, the lower table shows the current rows.

The table shows:

- member
- selected license item
- season
- competition
- status
- payment status
- payer type

If `payer type = organization` and `payment status = unpaid`, the row shows a `Pay` button.

### Organization payment steps

1. Find the application row
2. Confirm that:
   - it is the correct member
   - the correct item was selected
   - the payer type is `organization`
3. Press `Pay`
4. Complete the Stripe checkout
5. Return to Vote4Dance

What success looks like:

- payment status changes from `unpaid` to `paid`
- the row may become `active` immediately
- or the row may remain `pending` if approval is still required

What happens after payment:

- payment is recorded on the license row
- the Stripe payment is sent to the federation connected Stripe account
- the license may become `active` automatically if no extra approval is required
- otherwise it stays pending but paid until federation or workflow approval is completed

If the federation has not connected Stripe yet, the `Pay` action cannot complete.

What to do if payment is recorded but the license is not active:

- do not create a second application
- check whether the federation requires organization or federation approval after payment
- contact federation admin if the row remains paid but pending

When **not** to pay from this page:

- if `payer type` is not `organization`
- if the row is already paid
- if the license application is clearly wrong and should be deleted instead

## 3. Remove a pending or draft application

Current action support:

- `pending` and `draft` applications can be removed from this page
- active, expired, suspended, and cancelled licenses cannot be removed here

Steps:

1. Find the row
2. Press the delete button
3. Confirm the removal

Use delete only when the application is wrong and should be removed entirely.

Do not delete a paid application. Ask federation admin to correct it instead.

## Common problems

- the correct license item is not visible
- the member is not available in the selector
- the row is paid but still pending
- the federation has not connected Stripe yet

## Current limitation

- the page supports Stripe payment for organization-paid rows
- invoice-style or fallback-liability handling still needs admin process outside this page
- the organization does not choose which Stripe account receives funds; payout always goes to the federation connected account
- if a hybrid workflow produces a self-paid row, that payment must be completed from the dancer side instead

## If the workflow is unclear

A careful but inexperienced organization admin can follow this page successfully.

What still requires federation guidance:

- which license item to choose for each branch
- when a dancer should use self-service instead
- how unpaid-but-approved exceptions should be handled outside the direct Stripe path
- when the organization is allowed to issue licenses directly versus only submit them for federation review
