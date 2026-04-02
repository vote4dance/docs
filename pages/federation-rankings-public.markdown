---
layout: page
title: Public Rankings
permalink: /federation-rankings/public/
parent: Federation Rankings
nav_order: 2
---

# Public Rankings

Use this page to understand how federation rankings are shown on the public website.

Location:

- `Public -> Federation -> Ranking`

## Before you start

The public ranking page depends on the federation admin setup already being correct:

- the ranking must exist
- the ranking must belong to a division
- the ranking must be public
- the ranking must have the correct classes and standings

## How the public flow works

### 1. Open the federation ranking page

Steps:

1. Open `Public`
2. Open `Federation`
3. Select the federation
4. Open `Ranking`

What happens:

- visitors first see the federation ranking page
- the page groups rankings under divisions
- the page does not show a federation-wide flat ranking list

### 2. Choose a division

Only divisions that currently have public rankings are shown.

This means:

- a division with at least one public ranking is shown
- a division with no public rankings is hidden from the ranking list page

### 3. Open a ranking inside that division

When a ranking is opened, the page uses the division and ranking together.

The page then shows:

- ranking name
- published standings
- included federation classes
- ranking license policy if available
- the last calculated timestamp for the snapshot

The ranking link always uses the division together with the ranking id.

### 4. Verify the ranking content

If something looks wrong in public view, the usual cause is not the public page itself. The usual cause is that the ranking setup inside that division is wrong.

## What success looks like

The public view is correct when:

- the ranking is listed under the right division
- the standings match the intended ranking
- only the correct division shows that ranking
- the policy tag and included classes match the federation admin setup

## Common problems

### I cannot find a ranking on the federation page

Check:

- that the ranking is in the expected division
- that the ranking is public
- that the division has at least one public ranking

If a division has no public rankings, that division is not shown on the public ranking list page at all.

### I opened a ranking link with the wrong division

That link is invalid for the ranking. Rankings must be opened with the correct division in the URL.

### The public page shows the wrong teams

Check the ranking setup in federation admin:

- included classes
- manual corrections
- ranking state and privacy
- ranking license policy
