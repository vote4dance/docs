---
layout: page
title: Post-event and exports
permalink: /manager-guide/post-event/
parent: Manager Guide
nav_order: 5
---

# Post-event and exports

## 1. Final publication state

After final rounds:

1. Ensure all intended rounds are in published state
2. If needed, use event overview publish action for full event results
3. Validate public result visibility settings

## 2. Print outputs

From Manager print routes and round tools, produce:

- Start numbers
- Heat sheets
- Judging sheets
- Result reports
- Diplomas — see [Customizing diplomas](/manager-guide/diploma-customization/)
- Schedule printout
- Registration QR output if needed

## 3. Data exports

Use `Data` export tools for:

- Result CSV
- Partial average export where relevant

Run exports only when result status is final.

## 4. Cleanup actions

If required by your workflow:

- Reset result states (restricted context)
- Delete team data (destructive, intentional use only)

These actions should be used only for controlled reset scenarios.

## 5. Archive readiness checklist

1. Event status is correct (closed/archived policy)
2. All final outputs are exported and shared
3. Critical prints are generated
4. Staff handover notes are complete

## Closing the competition and promotion points

For federation-linked competitions, **closing the competition triggers promotion-point processing**: couples are resolved from person numbers, class memberships are registered for everyone who received points, balances are updated, and promotions at the class threshold are applied automatically.

Practical notes:

- **Result imports**: the "UP" / "Points" column means *points earned at this competition* — not the couple's running total. A couple's very first imported entry may carry their current total; it becomes their opening balance automatically.
- **Re-running**: imported results into an already-closed competition, or corrections after close? Set the competition status to **closed** again — processing is safe to repeat.
- **Manual point corrections**: edit the U-points field in the team editor *after* the competition is closed. The teams table shows a points column wherever entries carry points, and a rise icon for couples moving up.
- **Person numbers matter**: couples are identified by the person numbers on their entries. A typo creates a duplicate couple with a split point balance — check them before closing.

