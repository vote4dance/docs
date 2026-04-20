---
layout: page
title: Federation Admin
permalink: /federation-rankings/federation-admin/
parent: Federation Rankings
nav_order: 1
---

# Federation Admin

Use this page when you are responsible for setting up or maintaining rankings for a federation.

Use [Federation](/federation/) if you first need to decide whether the issue is ranking policy, class transfer policy, or a federation governance issue outside the ranking workflow.

The current model assumes one automated ranking formula per ranking artifact. If the federation needs a different published outcome in a specific case, use the documented manual workflow instead of trying to encode a hidden secondary formula inside the same ranking.

## Before you start

Make sure these are already correct:

- the federation has the right divisions
- the federation classes already exist in the correct division
- you know which division the ranking belongs to

## Do this

### 1. Open the correct division first

Rankings are division-specific.

Do not start by thinking "federation-wide ranking". Start by choosing the correct division, because every ranking must belong to one division.

### 2. Create or review the ranking inside that division

When you create or edit a ranking, the division defines the scope of that ranking.

Use the division ranking page when you need to:

- create a new ranking
- rename a ranking
- change ranking settings
- change ranking order
- import or refresh ranking data for that ranking profile

Current rule simplification:

- one ranking should have one automated formula
- public and selection outputs should not depend on hidden purpose-specific overrides inside the same ranking
- if the federation needs a second stable formula, create a separate ranking

### 3. Add the right federation classes

A ranking only reflects the federation classes linked to it.

Check that:

- all intended classes are included
- no class from another division is included
- the classes belong to the same ranking purpose

If the class list is wrong, the standings will be wrong even if the ranking itself exists.

### 4. Review the federation ranking summary page

The federation ranking admin page is a review page.

Use it to:

- filter by division
- select a ranking profile
- inspect included classes
- inspect published standings
- inspect the resolved ranking license policy
- inspect existing corrections

The page now requires a division selection before a ranking profile can be opened.

### 5. Apply manual corrections carefully

Manual corrections are still made against the ranking in its division.

Use corrections for cases such as:

- adding or removing points
- removing a team from the published list
- handling administrative adjustments

Always confirm you are editing the correct division ranking before saving a correction.

### 6. Run a manual exception workflow when needed

Use a manual workflow instead of hidden federation rule overrides when:

- the final selection list must differ from the published ranking
- a team identity case needs an approved exception
- a tie must be resolved from committee guidance or another published list

Required actions:

1. Record the source ranking or source decision basis.
2. Record the affected teams and exact difference from the raw result.
3. Record the reason and approver.
4. Publish the final outcome in the right place.
5. Archive the decision for audit.

Use the detailed procedure here:

- [Manual workflows](/federation-rankings/manual-workflows/)

### 7. Check the public result in the same division

After changes, open the public ranking page for the same division and verify:

- the ranking appears in the correct division list
- the standings look correct
- the ranking license policy tag is correct
- any correction is reflected as expected

## What success looks like

You know the setup is correct when:

- the ranking exists in exactly one division
- the included classes match the intended scope
- the public page shows the ranking under the correct division
- any required manual exception has an approval record and publication note
- corrections affect the expected ranking only

## What to do next

After the ranking is working:

1. repeat the same setup for the next division if needed
2. use the public page to validate what dancers and organizations will see

## What this page does not decide

This page does not decide:

- whether a recurring exception should become a separate ranking policy
- whether a federation governance decision should override the normal ranking outcome
- how a public-facing explanation should be written when a manual exception exists

Use [Manual workflows](/federation-rankings/manual-workflows/) when the published outcome must intentionally differ from the automated ranking result.

## Common problems

### I cannot open a ranking profile until I choose a division

This is expected. Rankings now require division context everywhere.

### I expected one ranking to span multiple divisions

That is no longer supported. Create one ranking per division instead.

### I expected one ranking to calculate public and selection results differently

Do not rely on hidden purpose-specific ranking overrides. Keep one automated formula per ranking and publish a separate selection decision or separate ranking when needed.

### I expected another ranking to act as a tie-break source

That is no longer part of the documented ranking model. Use the ranking's own tie logic for normal cases and use the manual tie-resolution workflow for exceptional cases.

### A correction affected the wrong ranking

Re-check the division and ranking before saving. Corrections are applied to division-scoped rankings.
