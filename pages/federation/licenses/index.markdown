---
layout: page
title: Federation Licenses
permalink: /federation-licenses/
parent: Federation
nav_order: 4
has_children: true
---

# Federation Licenses

A license says that a person may compete, judge or do another job in your federation, for a season or for one competition. Your federation decides which licenses exist, who applies for each one, how it is paid and which classes ask for one.

On the license screens a club is called an **Organization**.

## Start here

| You want to | Read |
|---|---|
| Decide whether you need licenses at all, and set them up: Stripe, license items, classes, clubs that may issue | [Setting up licenses](/federation/getting-a-license/) |
| Work with licenses day to day: approve what is waiting, issue, correct, suspend or cancel a license, keep the license items | [Federation admin](/federation-licenses/federation-admin/) |
| Get ready for the next season | [Starting a new license season](/federation/renew-license/) |

For the people who apply:

- a club applying for its members: [Licenses for your members](/school-club/getting-a-license/) and [Organization admin](/federation-licenses/organization-admin/)
- a dancer applying for their own license: [Getting a license](/dancer/getting-a-license/) and [Dancer self-service](/federation-licenses/dancer-self-service/)

## The words used

- **License item**: a license your federation offers, with its price. You keep the list on `Federation → Licenses → License items`.
- **License**: one license item held by one person, for one season or one competition.
- **License rules** of a class: the license items that class accepts.

## Who applies and who pays

There is no single way of working that you choose once for the whole federation. Two things decide it, for each license item:

- **The federation rules.** **Who applies for a licence** is **Dancer**, **Club** or **Dancer or club**, and **Who pays for a licence** is **Dancer pays**, **Club pays** or **Dancer or club pays**. Two more rules, **Dancers in a club may apply for their own licence** and **Dancers without a club may apply for their own licence**, say which dancers may apply themselves. These rules are set for the federation and can be different for a division or a discipline. See [Setting federation rules](/federation-rules/editor/).
- **The license item's own Organization mode.** It says whether the license needs a club, may have one, or may not have one.

With **Who applies for a licence** set to **Club**, a dancer cannot apply for the license themselves.

So one federation can offer, at the same time, a dancer license that dancers buy themselves, a coach license that only the club applies for, and a judge license that only the federation issues. The settings are described in [Setting up licenses](/federation/getting-a-license/).

## From application to active license

Every license goes the same way:

1. The federation adds the license items, and connects Stripe if any of them has a price.
2. The federation approves the club, when the license names a club, and allows it to issue licenses when the license item requires that.
3. The dancer or the club applies.
4. Whoever pays, pays, if the license has a price.
5. The club, the federation or both approve, when the rules **Club must approve a licence** and **Federation must approve a licence** ask for it.
6. The license becomes **Active**, and counts where a class asks for it.

## How payment works

All Stripe payments go to the federation's connected Stripe account. That means:

- the federation must connect Stripe before a license can be paid online (see [Stripe payout account](/federation/settings/#stripe-payout-account))
- the payer can be the dancer or the club
- a license can be paid while its approval is still waiting

## Licenses from another system

The federation console cannot import licenses from a file. A license gets into Vote4Dance in one of these ways:

- a dancer or a club applies for it
- federation staff add it by hand: see [Add a license manually](/federation-licenses/federation-admin/#add-a-license-manually)

If your federation checks member numbers against its own member register when a license is applied for, you can look a number up yourself: see [9. Check a member number](/federation-licenses/federation-admin/#9-check-a-member-number).

## Common blockers

Most license problems come from one of these:

- Stripe was not connected before a payment was tried
- the dancer tried to apply for a license that only the club may apply for
- the club was not approved yet, or may not issue licenses
- the wrong license item was chosen
- no class accepts the license item, because the class's **License rules** were never set
- the license is paid, but its approval is still waiting
