---
layout: page
title: Federation admin
permalink: /federation-licenses/federation-admin/
parent: Federation Licenses
nav_order: 1
---

# Federation admin

Location:

- `Admin -> Federation -> Licenses`
- `Admin -> Federation -> Organizations`
- `Admin -> Federation -> Division -> [division] -> [discipline]`

Use this page when you are responsible for setting up, reviewing, approving, and correcting federation licenses.

## Your goals on this page

This page is the control center for:

- issued licenses
- license items
- payment and approval review
- federation Stripe payout setup

The full federation admin license workflow now spans three places:

1. `Licenses` for issued licenses and license items
2. `Organizations` for issuer role on organizations
3. `Division -> Discipline -> Class -> License rules` for accepted class products

You will normally use the admin license workflow for these jobs:

1. Connect Stripe so payments can work
2. Define the federation's license products
3. Decide which organizations may act as issuers when needed
4. Decide which classes accept which products
5. Review, approve, activate, suspend, or correct individual licenses

## Before you do anything

Make sure these are already in place:

1. The federation exists
2. Divisions and disciplines exist
3. Federation classes exist
4. You know which workflow pattern the federation follows:
   - organization-managed
   - self-service
   - hybrid

If those are not ready yet, stop here and fix them first. The rest of the workflow depends on them.

## 1. Connect the federation Stripe account

Before any Stripe payment can work, the federation must connect its own Stripe account.

Steps:

1. Open `Admin -> Federation`
2. Edit the federation
3. Find the Stripe payment section
4. Press `Connect Stripe`
5. Complete Stripe onboarding
6. Return to Vote4Dance
7. Confirm that the federation now shows `connected`

What success looks like:

- the federation shows Stripe as connected
- organization-paid and self-paid license rows can use Stripe checkout
- payments will go to the federation Stripe account

### What this means

- license payments go to the federation connected Stripe account
- Vote4Dance keeps a `5%` fee
- if the federation is not connected, org-paid and self-paid license checkout cannot start

## 2. Manage issued licenses

Use the first list for the actual personal license rows.

### Most common use on this list

Use the issued license list when:

- a new application has been submitted and you need to review it
- a paid row is still waiting for approval
- a license needs to be activated, suspended, or corrected
- a manual fix is needed for an existing license

The list now shows:

- person
- status
- category
- type
- season
- payment status
- payer type
- item, division, organization, validity, competition, payment references, and approval timestamps when present

Use this list when you need to:

- review a newly created application
- correct a wrong payer or payment state
- manually activate a license
- suspend or cancel an existing license
- inspect whether a paid license still needs approval

### Add a license manually

1. Press `Add`
2. Search the person in `User`
3. Optionally select `License item`
4. Set `Category`
5. Set `Type`
6. Set `Season year`
7. Set `Status`
8. Optionally set `Payment status`
9. Optionally set `Payer type`
10. Optionally set `Division`
11. Optionally set `Discipline`
12. Optionally set `Organization`
13. Optionally set `Payer organization`
14. Optionally set `Competition`
15. Optionally set `Valid from`
16. Optionally set `Valid to`
17. Optionally fill `Flags JSON`
18. Optionally fill `Note`
19. Optionally fill `Payment reference`
20. Optionally fill `Invoice reference`
21. Press `Save`

When to use manual creation:

- backfilling licenses
- correcting data imported from another system
- creating a license outside the normal self-service or organization flow

When **not** to use manual creation:

- if the federation wants a normal user-facing application flow
- if you are testing whether self-service or organization application works

### What each field means

- `User`: the person who owns the license
- `License item`: the predefined product; if selected, it controls category, type, and scope
- `Category`: role such as `dancer`, `judge`, `coach`, or `organizer`
- `Type`: federation-specific license type text
- `Season year`: season or calendar year
- `Status`: current operational state
- `Payment status`: `unpaid`, `paid`, `invoiced`, `waived`, or `refunded`
- `Payer type`: `self` or `organization`
- `Division` / `Discipline`: scope when the license is branch-specific
- `Organization`: the organization attached to the license when organization context is needed
- `Payer organization`: the organization carrying payment liability when used
- `Competition`: required for one-time or single-competition licenses
- `Valid from` / `Valid to`: date window
- `Flags JSON`: advanced machine-readable eligibility flags
- `Note`: internal comment
- `Payment reference`: payment identifier or external booking reference
- `Invoice reference`: invoice identifier

### Payment fields and Stripe behavior

- `Payment status` tracks Vote4Dance's recorded payment state for the license
- `Payer type` says whether the checkout should be started by the person or the organization
- Stripe checkout is only available when the federation has connected Stripe
- a successful checkout pays into the federation Stripe account and keeps `5%` as the Vote4Dance fee

### Approval and activation behavior

What happens when you change status manually:

- federation admin can create or update licenses directly
- if a federation admin sets a license to `active`, the backend stores `approved_by_federation_at`
- a paid license can still remain `pending` if federation or organization approval is required by the federation rules

What to check before activating:

1. The correct person owns the license
2. The selected license item is correct
3. The payer and payment status are correct
4. Competition id is filled if the item is competition-scoped
5. Organization is correct when required
6. Any federation-side approval requirement has been satisfied

What to do next after activation:

- confirm the row shows the correct final status
- confirm the payment state still matches the real payment
- if the license is competition-scoped, confirm the correct competition is attached

## 3. Manage license items

Use `License items` to define the actual products available in the federation.

### Use this section when

- you are setting up the federation for the first time
- you are adding a new annual, one-time, or branch-specific product
- you need to stop using an old license product without deleting history

### Add a license item

1. Press `Add` in `License items`
2. Fill the form
3. Press `Save`

### Field meaning

- `Name`: visible product name
- `Code`: short internal code
- `Category`: role of the item
- `Type`: federation-specific type label
- `Band`: optional grouping such as `high`, `low`, or similar
- `Division`: division scope
- `Discipline`: discipline scope inside the division
- `Organization mode`:
  - `optional`
  - `required`
  - `disallowed`
- `Competition scope`:
  - `season`
  - `single_competition`
- `Status`: `active` or `inactive`
- `Price`: Stripe/payment reference amount
- `Currency`: payment currency
- `Note`: internal comment

Practical recommendation:

- keep names obvious for non-experienced users
- put scope in the name when needed
- examples:
  - `Annual competition license`
  - `One-time competition license`
  - `Division A high license`
  - `Advanced competition license`

What good setup looks like:

- users can tell the products apart by name alone
- one-time products are clearly marked
- scope is visible in the name when needed
- inactive products stay out of normal use

## 4. Map license items to classes

Use `Division -> [division] -> [discipline] -> class -> License rules` when a class must accept exact license items.

### Use this section when

- you want registration to reject the wrong license immediately
- different divisions or classes need different accepted products
- you want progression checks to use the same class-specific product logic

### Add a class mapping

1. Open `Admin -> Federation -> Division`
2. Open the correct division
3. Open the correct discipline
4. Find the class
5. Press `License rules`
6. Press `Add`
7. Choose `License item`
8. Tick whether it is required for:
   - `registration`
   - `progression`
9. Press `Save`

### Important behavior

- the backend rejects mappings where item scope and class scope do not match
- registration and progression checks now prefer explicit class mappings over generic license interpretation

Use explicit class mappings when:

- the federation has different license requirements by division
- different classes inside a division accept different license products
- you want the system to reject the wrong license item immediately at registration

This is the safest model for branch-specific federations.

What success looks like:

- the correct class accepts the intended product
- the wrong class does not accept it
- registration and progression behave as expected in testing

## 5. Manage issuer role on organizations

Use `Organizations` for federations where only approved organizations may issue or approve licenses.

### Use this section when

- the federation only allows approved organizations to handle certain license applications
- organization-managed applications are failing because issuer approval is missing

### Add a license issuer

1. Open `Admin -> Federation -> Organizations`
2. Find the organization
3. Press `Add` or `Edit`
4. Set `Status`
5. Optionally set `Type`
6. Optionally set `Approved at`
7. Optionally set `Note`
8. Press `Save`

### Status meaning

- `pending`
- `approved`
- `suspended`
- `revoked`

## 6. What federation admin should check during rollout

For a new federation setup, verify this sequence:

1. The correct divisions and disciplines exist
2. The federation Stripe account is connected
3. License items are scoped correctly
4. Single-competition items really use `Competition scope = single_competition`
5. Issuer role is configured on the right organizations before org-managed applications begin
6. Each competitive class has the right accepted items
7. Payment status and payer type look correct on real applications

## Common mistakes

- Creating license items before the federation class structure exists
- Forgetting to connect Stripe before telling users to pay
- Using generic product names that dancers and clubs cannot distinguish
- Forgetting to map a competition-scoped item to the relevant class
- Looking for class license rules in `Licenses` instead of under `Division -> Discipline`
- Looking for issuer setup in `Licenses` instead of `Organizations`
- Activating a paid license even though federation or organization approval is still required

## If the workflow is confusing

The page supports the full setup flow, but it does not choose federation policy for you.

Federation admin still needs the federation's internal license setup decisions available when:

- defining the first license item set
- deciding which classes accept which items
- deciding when payment should be enough and when extra approval should still be required
