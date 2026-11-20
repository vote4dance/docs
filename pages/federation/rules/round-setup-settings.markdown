---
layout: page
title: Round setup conditions, actions and settings
description: "Reference for round setup rules: what each condition matches, what each action does, what each setting controls and how rules combine."
permalink: /federation-rules/round-setup-settings/
parent: Federation Rules
nav_order: 6
---

# Round setup conditions, actions and settings

For federation administrators who write round setup rules. Look up what a
condition matches, what an action does and what a setting controls, and how
rules combine when several apply to the same class. To see them at work, start
with [How the round setup works](/federation-rules/reference/).

---

## Where the round setup lives

The round setup lives per discipline under **Federation → Structure → (division) →
Discipline**, in the **Round setup** section. **Applies to** in the rule editor
narrows a rule from the whole discipline to a category, class level or age group.
Where a federation uses [round templates](/federation-rules/round-setups/), the
rules a template manages are listed under it and are read-only.

## When: rounds and class sizes

All conditions on a rule must hold for it to fire. A rule with no conditions
applies to every round.

| In the editor | Matches |
|---|---|
| **Every round** | All rounds |
| **The final** | The last round, whatever its number |
| **Every round except the final** | All rounds before the final |
| **The first round** | The first round of the class |
| **The semi-final, quarter-final or another round counted from the final** | The 2nd, 3rd or Nth round counting back from the final |
| **A range of rounds** | From round … to round …, counted from the start or from the final |
| **And only when the class has between … and … competitors** | A class size, both ends included; leave one end empty for "up to" or "or more" |

## Actions

Set under **Advanced** in the rule editor.

| Action | Effect | Typical use |
|---|---|---|
| **Modify** (the default; with no round condition, the rule's changes are the class defaults) | Changes the matching round. | Judging, a name or music on one round; the ladder on the base rule |
| **Add After** | Creates an extra round beside the matching round. | A B-final or bronze battle beside the semifinal |
| **Remove** | Removes the matching round from the list. | Drop a round the ladder would otherwise create for a given size |

## Settings, by what they control

**The shape of the class**

| Setting | Values | Effect |
|---|---|---|
| **Round sizes** | A list of sizes, such as 2, 4, 8, 16, 200 | The ladder. The first size at least as large as the number of competitors is the first round; the ladder runs down to the final. When no size is that large, the largest is used. A class that is exactly one of the sizes starts in the round of that size, unless a rule gives the first round a **Num to advance** of 100 **Percent** or more and the size is neither the smallest nor the largest: then it starts one size higher. In the rule editor it is the **Round size** column of the **Rounds** table, and **Small classes start here** is the second list (**Round sizes (2)** in the CSV) ([Rounds](/federation-rules/round-setup-rules/#rounds-round-names-and-round-sizes)). In brackets mode, the largest size below 200 is the largest bracket (8 = up to quarterfinals, 16 = adds a round of 16). |
| **Round type** | **Normal**, **Chance (Without placement)**, **Points (Summary only)**, **Match Race**, **Battle**, **Brackets** | **Brackets** on the base rule builds a whole battle bracket for any size ([Battle round setup](/federation-rules/battle-class-rules/)). **Battle** on a rule with **Dances** splits the round into one battle per pair for each dance; without **Dances** it changes nothing. |
| **Round name(s)** | A list, or one name | On the base rule, a list read from the final outward, such as Final, Semi-Final, Quarter-Final, Preliminary [X] — the **Name** column of the **Rounds** table. On a rule that modifies or adds one round, the name of that round. |

**Who advances and which places a round awards**

| Setting | Values | Effect |
|---|---|---|
| **Num to advance** | **Auto**, a **Count**, or a **Percent** | How many advance. A count of 0 means nobody advances, as on a B-final. A number with neither **Count** nor **Percent** picked is read as a percent. |
| **Round position** | A place, such as 3 | The first place the round awards. 3 on a B-final or bronze battle gives places 3–4. |

**How the round is judged and danced**

| Setting | Values | Effect |
|---|---|---|
| **Judging type** | A judging type of the federation, such as 10-0 or marks and placement | How the round is judged. The default comes from the federation's judging configuration. |
| **Hide from position** | A place, and what to hide: **Marks**, **Placements**, **Components**, **Coach/team leader only** or **Everything** | Hides results from that place on until the competition is over. Use it on **Every round except the final** to keep marks hidden until the end. |
| **Max on floor** | A count | Most competitors on the floor at once; a larger round is split into heats. 3 on a semifinal gives trios (crosses). |
| **Dances** | List of dance names | Each dance becomes a sub-round. A dance can carry dances of its own, giving a third level ([Battle sub-rounds](/federation-rules/battle-sub-rounds/)). |
| **Music length** | A number of seconds (the guides use 240) | The length of the music for one heat. Together with **Extra time** it gives the round's **Heat length** in Manager, the time the schedule reserves for each heat. Without either, a round gets 180 seconds. |
| **Extra time** | A number of seconds (the guides use 40) | Seconds added to the **Music length** of the same rule. The sum is the heat length, which Manager describes as the total time for a heat, including transitions. The heat length is counted from the rule that sets either of them, so set both on the same rule. |
| **Round comment** | Text | The round's comment: a short note shown on the judging sheets, in the public app and under the round's name on the round page ([Round comment](/manager-guide/live-operations/#round-comment)). |
| **Randomize heats** | **Enable** or **Disabled** | For autopilot in Scrutineer (Beta), the new version of the Manager app: when autopilot sends the competitors on to this round, it draws the round's running order at random, unless the autopilot settings of the round they come from already decide it. Nothing else reads it. |
| **Tempo** | One or two values | Stored on the rule only. The rounds the Round guide creates do not carry it, and nothing else reads it: not Manager, the judges' app, the schedule or the music. Setting it has no effect. |

**Other round settings**

| Setting | Values | Effect |
|---|---|---|
| **Round weight** | A number; 1 when no rule sets it | The round's **Weight** in Manager. When a round with an even number of sub-rounds is tied, the sub-round with the highest weight decides: weight 2 wins over weight 1. |
| **Number of alternates** | A number | The round's **Number of alternates** in Manager, used by a round whose **Round priority setting** is **Alternates** ([Rounds that use priority](/manager-guide/live-operations/#rounds-that-use-priority)). The number counts from the first place and includes the competitors who go through: for 10 through and 3 alternates, type 13. A number that is not higher than the number going through gives no alternates. |
| **Acro** | An acrobatics level from the list | The round's **Acrobatics level** in Manager. Empty (**Disabled**) means the round has none. |

The list under **Change** also has settings for brackets: **Bracket: placing round
name**, **Bracket: redance round** and its name, judging type, comment and dances,
**Bracket: top 4 from the placing round at 6 and 7**, **Bracket: final of 3 at 3
competitors** and **Bracket: final with gold and bronze battle**. They are
described in [Bracket settings](/federation-rules/battle-class-rules/#bracket-settings).

**Dance names in battles.** In a battle round's dance name, [X] becomes the
battle number and [N] the number of battles — "Battle [X]/[N]" gives Battle 1/4
… 4/4.

**Linked rounds.** When the Round guide creates a class's rounds it also sets
each round's **Round for those that qualify** and **Round for non-qualified
participants**, so **Assign teams** sends the competitors on without anyone
choosing the rounds by hand:

- qualifiers go to the next round towards the final; the final sends nobody on;
- non-qualifiers go to a round added next to theirs (a B-final or a second
  chance), or else to the round's own second-chance round (Extrachans);
- a second chance sends its qualifiers to the same next round.

You never set this in a rule, and the Manager can still change a link under
**Qualified participants**. Battle classes in brackets mode, and classes whose
rounds were created before this, have no links.

**Point summaries.** A rule that adds a point-summary round (**Round type**
**Points (Summary only)**) always puts it after the final. When the rounds are
created it goes last in the unscheduled block, totalling its own class.

## Rules that are not part of the round setup

These rules do not shape rounds and are not set in the round setup rule editor.
Most of them are federation rules, set in the **Federation rules** editor of a
level ([Setting federation rules](/federation-rules/editor/)). Each has its own
guide, which says where it is set.

| Rule | Guide |
|---|---|
| Age composition rules (application preset, younger/older allowances, maximum age span) | [Age category rules](/federation-rules/age-category-rules/) |
| Promotion points source, points table, reach, awards promotion points, advance by, target class, promotion threshold | [Promotion points](/federation/progression/) |
| License items required for registration or progression | [Federation admin licenses](/federation-licenses/federation-admin/) (section 4) |
| **Ranking kept when moving up an age group**, **Ranking kept when moving down an age group**: how much of a competitor's ranking results follow an age move. Federation or division only. | [Age moves](/federation/age-moves/) |

## How rules combine

Round setup rules:

- Rules are read in the order of the list, and when two rules set the same value
  for the same round, the later rule wins. Round names and round sizes are the
  exception: the app adds them up across every matching rule, and rules that
  overlap on them are reported as **Overlapping ladders**.

Federation rules:

- The most specific level that sets a value wins; levels that leave a value
  empty inherit it. See [Federation Rules](/federation-rules/) for the order.
- A structured value, such as the promotion points table, is replaced as a
  whole by a narrower level — not merged row by row.
- Not every rule can be set at every level. The **Rulebook** lists the levels
  each rule accepts, the value that applies, the level that set it and the
  value it displaced.
