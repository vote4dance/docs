---
layout: page
title: Manual Workflows
permalink: /federation-rankings/manual-workflows/
parent: Federation Rankings
nav_order: 2
---

# Manual Workflows

Use this page when federation staff need to publish an outcome that cannot come directly from the shared automated ranking configuration.

Use [Federation Admin](/federation-rankings/federation-admin/) first if the issue may still be solvable through normal ranking setup or a standard correction.

## Why this page exists

Federation ranking automation is now based on one shared rule set per ranking artifact.

That means:

- public and selection results should normally come from the same base ranking formula
- team identity handling should normally come from one shared federation policy
- tie handling should normally come from the ranking's own configured tie logic

If the federation needs a different final outcome in a specific case, the decision must be handled as an explicit admin workflow.

## Use a manual workflow for these cases

### 1. Selection list differs from the published ranking

Use this when:

- championship quotas override the raw ranking order
- a team becomes ineligible after the ranking is calculated
- the federation committee approves an exception
- a separate published selection list must be issued for the season

Manual steps:

1. Identify the published ranking used as the source.
2. Record which teams are being added, removed, or moved.
3. Write the exact reason for the exception.
4. Name the approver.
5. Publish the final selection list and store the decision record.

Minimum record:

- federation
- season
- source ranking
- affected teams
- reason
- approver
- publication location

### 2. Team identity exception

Use this when:

- a partner or roster change creates a dispute about ranking carryover
- a club or representation transfer needs special handling
- federation staff decide that the normal identity policy should not apply in one case

Manual steps:

1. Identify the old and new team records.
2. Record the prior roster and the new roster.
3. State the shared `team_identity_change_policy` that would normally apply.
4. Record the ranking impact and progression impact.
5. Get approval and archive the decision.

Minimum record:

- federation
- season
- affected teams
- base identity policy
- ranking impact
- progression impact
- approver

### 3. Manual tie resolution

Use this when:

- the automated tie result is not sufficient for the published decision
- a committee decision must decide the order
- another published source is used to justify a one-off tie decision

Manual steps:

1. Identify all tied teams.
2. Record the raw ranking result.
3. Record why the automated tie result is not enough.
4. State the secondary basis used for the final decision.
5. Publish the final order and archive the record.

Minimum record:

- federation
- season
- ranking name and date
- tied teams
- raw ranking state
- secondary basis used
- final order
- approver

## Required operating rule

Do not publish a manual exception without all of the following:

- a named source ranking or source decision basis
- explicit affected teams
- explicit reason for the exception
- named approver
- publication location and archive location

## Recommended publication rule

If a published outcome differs from the raw ranking output, the public-facing selection list or ranking note should make that clear.

Examples:

- selection list published from ranking with federation exception note
- tie resolved by committee decision dated `YYYY-MM-DD`
- identity case approved by federation office for the current season

## When to create a separate ranking instead

Do not use the manual workflow for a recurring formula difference that should exist every season.

Create a separate ranking definition when:

- the federation always needs a distinct championship invitation ranking
- the federation always needs a distinct selection ranking formula
- a second published list has its own stable calculation rules

In that case, build a second ranking artifact and document its purpose clearly.

## What this page does not replace

This page does not replace:

- normal ranking setup
- normal corrections inside the correct division ranking
- public verification of what users can see

After a manual workflow is completed, still verify the result in [Public Rankings](/federation-rankings/public/).
