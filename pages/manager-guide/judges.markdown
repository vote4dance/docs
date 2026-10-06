---
layout: page
title: Judges
permalink: /manager-guide/judges/
parent: Manager Guide
nav_order: 2.2
help:
  manager.comp.judges: ""
  manager.comp.judges.panels: panels
  manager.comp.judges.judges: judge-list
  manager.comp.judges.classes: classes
  manager.comp.judges.needs: judge-needs
  manager.comp.judges.absent: a-judge-who-cant-come
  manager.comp.judges.problems: problems-with-the-panels
  manager.comp.judges.suggest: letting-vote4dance-suggest-seats
  supervisor.judges: ""
  supervisor.judges.judges: judge-list
  supervisor.judges.panels: panels
  supervisor.judges.classes: classes
---

# Judges

The Judges page is where you decide who judges a competition, which panel each judge sits on, and which panel judges each class and round. Open it from `Manager → Competition → Judges`. People with the **Supervisor** app get the same page as the **Judges** tab of the Supervisor app.

The page has four tabs:

| Tab | What you do there |
|---|---|
| **Judges** | Add and invite judges, give them letters, reset PINs, and see each judge's needs. |
| **Panels** | Seat judges on panels in one grid, let Vote4Dance suggest seats, and handle a judge who can't come. See [Panels](#panels). |
| **Classes** | Choose the panel for each class, and give single rounds a panel of their own. See [Classes](#classes). |
| **Tablets** | Shared judging tablets, when they are switched on for your event. |

Above the tabs, the page lists any [problems with the judging panels](#problems-with-the-panels).

In an event with several competitions, each competition has its own judges and panels. In Manager you are already in one competition; in the Supervisor app, pick it under **Competition** at the top of the page. See [Events with several competitions](#events-with-several-competitions).

Judges are not users in `Manager → Event → Users`, and they need no app tick there. Being on the judge list is what gives a person the Judging app for this event. See [Users, apps and stations](/manager-guide/users-and-stations/).

## Who can change judges

You need the **Manager** or **Supervisor** app on the event. The page is read-only once the event is **Closed** or **Archived**.

## Adding judges

There are two ways to add a judge. Both are at the bottom of the judge list.

### An existing account

Type at least three letters of a name or an email address in the **Search users** box. Matching accounts appear with their email address and a count, such as `3x`, that shows how many competitions they have judged before. Pick one and press **Add**. The judge is added at once; no email is sent. See [Invitations](#invitations).

Disabled accounts are not listed.

### Invite by email

Use **Invite new judge** for someone who has no Vote4Dance account. The **Invite a new judge** dialog asks for:

| Field | Notes |
|---|---|
| **Email** | Required. Becomes the judge's username. |
| **First name**, **Last name** | Required. |
| **Nationality** | Required. Pre-filled with a guess from your browser. |
| **Language** | The language of the new account and of the invitation. Starts on your own Manager language. |

While you type, the dialog searches for existing accounts by email and by name under **Possible existing accounts**. This is to stop you creating the same person twice:

- If one of them is the person, press **Use this account**. They are added as a judge on their existing account.
- If the email you typed already belongs to an account, the dialog says "A user with this email already exists — pick them from the list." and will not create a new one.
- If there are matches but none of them is the person, tick "I have reviewed the list above — none of these is the person I want to invite." to go on.

**Create new judge account** creates the account and adds the person as a judge. The dialog then opens the invitation for them. The invitation is not sent until you press **Send invitation** in that dialog.

## Judge list

Each row has:

| Column | What it shows |
|---|---|
| Dot | Green when the judge has the Judging app open and connected; hover for battery level. |
| **Name** | The judge's name. Hover over the info icon after it to see their email address, and click it to copy the address. |
| **Photo** | A photo used for this competition only. Upload one to replace the judge's profile picture; delete it to fall back to the profile picture. |
| **Status** | See [Statuses](#statuses). |
| **Needs** | **None**, or **Set by supervisor** when the judge has [needs](#judge-needs). Click it to open them. |
| **Letter** | The judge's letter. Type it in; it saves when you leave the field or press Enter. |
| **WDSF MIN** | Only in WDSF competitions. The judge's WDSF MIN, with a lookup button. |
| Delete | Removes the judge. See [Removing a judge](#removing-a-judge). |
| **Reset PIN** | See [PIN](#pin). |
| **Send invitation**, **Resend invitation** or **Notify** | See [Invitations](#invitations). |

### Letters

Every new judge starts with the letter **A**, so give each judge their own letter before the competition. The letter is shown before the name on the panels, for example `B) Anna Berg`.

**Assign letters** sets every judge's letter in one go:

| Option | What it does |
|---|---|
| **By firstname** | Sorts judges by first name, then last name, and gives them A, B, C… After Z it goes on with AA, BB, CC… |
| **By lastname** | The same, sorted by last name first. |
| **Use as firstname** | Sets each judge's letter to their first name. |

## Statuses

| Status | Meaning |
|---|---|
| **Not invited** | The account has no password yet, and no invitation has been sent. |
| **Invited** | The account has no password yet, and an invitation has been sent. Hover to see the date. |
| **Active** | The account has a password, so the person can sign in. |

The status describes the person's account, not this competition. A judge you add from an existing account is usually **Active** at once, even if you have never sent them anything.

## Invitations

The button at the end of each row opens the invitation dialog. Its label depends on the status:

| Status | Button | Email the judge gets |
|---|---|---|
| **Not invited** | **Send invitation** | "You have been invited to judge", with a **Set your password** button. The link expires after 7 days. |
| **Invited** | **Resend invitation** | The same email with a new link, valid for another 7 days. |
| **Active** | **Notify** | "You have been added as a judge", with a **Sign in** button and a reminder about "Forgot password". |

The button is greyed out if the judge has no email address.

In the dialog:

- **Language** chooses the language of the email. It starts on the judge's own account language, or English. You can choose English, Svenska, Español, Suomi, Norsk, Nederlands, Deutsch or Français.
- **Email preview** shows the subject and text exactly as they will be sent, with the competition name and picture as the heading.

Every invitation also contains the [demo link](#demo). The email comes from the same sender as other Vote4Dance emails; see [Emails and the check-in QR code](/manager-guide/emails/).

After sending, the row shows **Invited** (or stays **Active**). Send again as often as you need to; each send updates the date.

## PIN

There is no event-wide judge code. Each judge sets their own four-digit PIN on their own device the first time they open the Judging app. The app asks for it again when they come back, and locks itself after 10 minutes without use or with the screen hidden.

A judge has **one PIN for the whole event**. If they judge in several competitions of the same event, the same PIN works in all of them.

If a judge forgets their PIN, press **Reset PIN** on their row and confirm. The PIN is cleared for every competition in the event, and the next time the judge opens the Judging app they set a new one. **Reset PIN** is greyed out until the judge has set a PIN.

## Demo

The judge demo is at `/judging3/event/<event id>/demo`. It lets a judge practise before the competition:

- It shows one practice round for each judging system used in the competition's rounds, filled with made-up couples. **Reset** starts a round again and **Next** moves to the next one. Nothing is saved.
- It needs a signed-in Vote4Dance account, but not a PIN.
- On the event page, a Manager who is not judging opens it with the **Judges** tile. It is also linked from every invitation email and from the **Demo** item in the Judging app's menu.

Open it yourself to see what your judges will see for the systems you have set up. It shows nothing until the competition has rounds.

## Judge types

The legend lists the roles a judge can have on a panel. **Not judging** is only in the legend; you cannot choose it on a panel.

| Type | What it means |
|---|---|
| **Not judging** | No judging duties assigned. |
| **Judge** | Scores participants in assigned classes; counts toward placements. |
| **Trainee judge** | Practice role; enters scores that do not affect results. |
| **Chief judge (in)** | Included in skating/placement; counts in the ranking math and can be used to break ties. |
| **Chief judge (out)** | Excluded from skating/placement; does not affect ranking math but can be used to break ties. |
| **Audience** | Scores come from public audience voting; counts toward final placements. Can be chosen on a panel, but is not shown in the legend. |

The type is set per panel, so the same person can be a **Judge** on one panel and a **Trainee judge** on another.

Rounds placed by a majority of the judges need an odd number of judges. [Problems](/manager-guide/validator/#even-judge-panels) lists the rounds whose panel has an even number, counting only the types that mark the result.

## Separating tied positions

When a closed round has competitors sharing a position, the round's toolbar offers ways to separate them. Each one adds a round under the main round, and the placements it decides come back to the main round with a letter showing how they were decided.

| Button | When it is shown | What happens | Letter |
|---|---|---|---|
| **Redance** | On a closed main round | The tied competitors dance again in a new round, judged by placement. | **R** |
| **Side skating** | On a closed round without sub-rounds, except partial-input rounds | Compares the judges' marks for the competitors that share a position, without anyone dancing again. | **S** |
| **Chief judge** | On a closed round whose panel has a **Chief judge (in)** or **Chief judge (out)** | The chief judge's marks from the round decide the order. Nobody dances or judges again. | **CJ** |
| **Paper redance** | On a closed partial-input round whose panel has no chief judge | All judges rank the tied competitors again on paper, without anyone dancing again. | **PR** |

**Redance**, **Chief judge** and **Paper redance** are greyed out while no position is shared, and **Side skating** while no position can be side-skated. The letter appears as a badge next to the placement in the round's results; hover over it to see how the placement was decided, for example "Placement assigned through chief judge".

### Chief judge

1. Open the closed round and click **Chief judge**.
2. Choose the tied position under **Select the position to separate:** and click **OK**. To separate another tied position, click **Chief judge** again.
3. A round named **Chief judge** appears under the round. It holds the tied competitors with the marks the chief judge already gave them in the round, and it is ranked straight away.

The competitor the chief judge marked higher gets the better placement:

| Round judged with | Ranked first |
|---|---|
| Callback marks (Yes / Alt 1 / Alt 2 / Alt 3) | Yes, then Alt 1, Alt 2 and Alt 3; a competitor without a mark comes last |
| Scores (sliders) | The higher score |
| One-to-five | 1 before 2, and so on to 5 |
| Placement | 1st before 2nd, and so on |

Competitors the chief judge marked the same stay tied. When the panel has more than one chief judge, their orders are combined by majority.

Which chief judge type to use depends on the rules:

- **Chief judge (in)** marks like the other judges and counts in the result. Use it when the head judge sits on the panel, as in DSF West Coast Swing, where the head judge breaks ties in prelims.
- **Chief judge (out)** does not count in the result; only their marks break ties. Use it when the chief judge sits outside the panel, as in WSDC Jack & Jill, where the chief judge gives every competitor a raw score in prelims. See [Jack & Jill](/formats/jack-n-jill/#5-judges-and-run-time-execution).
- Where the rules settle a tie by dancing again, as in Norwegian (ND) semifinals, use **Redance** instead.

**To redo a chief judge decision**, open the **Chief judge** round. If it is **Closed**, use **Previous status** until it is **Not started**. Click **Remove participants**, then **Delete round**, and click **Chief judge** on the main round again. A tie separated before the fix in the [2026-10-03 release](/release-notes/#2026-10-03) keeps the order it got then, which could rank the chief judge's lower mark first, so redo those.

## Panels

A panel is a named group of judges. Classes and rounds are judged by a panel, not by individual judges. A round cannot be started until its class or the round has a panel. **Start judging** is refused with "Assign a judging panel to this class or round before starting judging."

The **Panels** tab shows every judge as a row and every panel as a column. Each cell is that judge's seat on that panel.

You can seat judges on a panel before it judges any class. A panel that isn't used yet has a grey column and says "Not used by any round". Set up all your panels first if you like, then give each class its panel on the [Classes](#classes) tab.

![The Panels tab: judges down the side, panels across the top](/assets/images/judges/panels-grid.png)

### Seating a judge

1. Click the cell where the judge's row meets the panel's column.
2. Choose the seat: **Judge**, **Chief judge (out)**, **Chief judge (in)**, **Trainee judge**, **Observer** or **Audience**. See [Judge types](#judge-types).
3. The seat is saved at once. A message at the top says, for example, "Seated Anna Berg on Panel A (Judge)", with **Undo** to take it back.

To take a judge off a panel, click their seat and choose **Remove from panel**.

The cell shows the seat's letter: **J** for judge, **C** for chief judge, **T** for trainee, **O** for observer and **A** for audience. Under the grid, a legend explains the colours:

| Look | Meaning |
|---|---|
| Red outline and **!** | **Breaks a need**: the seat goes against something the judge can't do, such as judging while away, or judging a class their student dances in. |
| Orange outline | **Against a preference**: for example, the judge would rather sit as chief judge. |
| Striped cell | **Can't sit here**: seating the judge would break a need. You can still seat them. |
| Dashed outline | **Not saved yet**: a suggested seat in a [preview](#letting-vote4dance-suggest-seats). |

Click or hover over a seat to see why it is marked. The reasons are also listed at the top of the seat's menu, so they can be read on a tablet.

Under each judge's name is how much they judge, for example "6 rounds · 45 min". The search box finds a judge by name or letter, and **Only judges with problems** hides everyone whose seats are fine.

### Panel order and running order

**Panel order** shows the panels in the order you gave them. **Running order** sorts them by when their first round starts, grouped by day, so you see the day as it will run. A panel used on several days sits under its first day.

### A panel's settings

Click a panel's name at the top of its column. The pop-up shows:

- the panel's name, which you can change;
- the panel's problems, if any, and what it still needs, for example "Still needed: 1 × Judge", with **Fill open seats**;
- **Judges**: what the panel judges, either the whole class or single rounds, such as "Novice Jack&Jill – Leaders · Semi only";
- **Seats wanted**: how many judges, which chief judge, and how many trainees and observers the panel should have;
- **Delete panel**, which is only possible while no round uses the panel.

![A panel's pop-up](/assets/images/judges/panel-popup.png)

**New panel** adds a panel, named "Panel 2", "Panel 3" and so on. Rename it in its pop-up.

**Panel seats** at the top sets the seats a panel wants when it has no **Seats wanted** of its own. Vote4Dance starts from what most of your panels already have.

### Letting Vote4Dance suggest seats

**Suggest** fills seats for you, following every judge's [needs](#judge-needs) and spreading the rounds evenly:

- **Fill open seats** keeps everyone where they are and fills only what panels still need.
- **Re-plan all unlocked panels** clears every panel that has no scores yet and fills them again from the start. It asks before it does anything.

Suggest never saves straight away. The suggested seats get a dashed outline and a bar above the grid says how many seats would change. Click any seat to change it. Then choose **Apply suggestions** to save them all, or **Discard** to forget them.

![Suggested seats waiting to be applied](/assets/images/judges/suggest-preview.png)

Trainee and observer seats only go to judges whose **Seat** need asks for it. If a seat can't be filled without breaking someone's needs, the bar says so; fill it yourself or change a need.

## Judge needs

Each judge can have needs that Vote4Dance checks every seat against. Open them with the needs button on the judge's row on the **Panels** tab, or click **Needs** on the **Judges** tab.

![A judge's needs](/assets/images/judges/judge-needs.png)

| Need | What it does |
|---|---|
| **Away** | Times the judge can't judge. **Add time away** for each, with a **Reason** if you like. |
| **Max rounds per day** | More rounds than this on one day breaks the need. |
| **Max minutes without a break** | Judging longer than this without at least 10 minutes off breaks the need. |
| **Classes not to judge** | Classes this judge must never judge. |
| **Dancers not to judge** | Students, a partner or family. Their entries are found by name. A judge who dances in a class themselves is found without being listed here. |
| **Seat** | Which seat the judge wants: **Any seat**, **Judge**, **Chief judge**, **Trainee** or **Observer**. |
| **Split leader/follower classes** | Whether the judge prefers to judge **Leaders**, **Followers** or **Either**. |
| **What they judge** | **Can only judge** limits the judge to some divisions, disciplines, levels, categories or age groups; other classes show as **Can't sit here**. **Wants to judge** is a wish that Suggest follows when it can. Only the kinds where your classes differ are shown. |
| **Note** | Anything else. |
| **Supervisor note** | Only supervisors see this, never the judge. |

Choose **Save needs**. Seats on the grid are checked again straight away.

### A judge who can't come

When a judge is ill, delayed or has to leave:

1. On the **Panels** tab, click the **Judge absent** button on the judge's row.
2. Set **Absent from**. It starts at the current time, or at the first round if the event hasn't started yet.
3. Set **Back at**, or leave it empty for the rest of the event. Add a **Reason** if you like.
4. The dialog lists each of the judge's seats in rounds from then on and who would take it: the best free judge for the same seat. "nobody is free" means you'll have to find someone yourself.
5. Choose **Save and preview replacements**. The time away is saved to the judge's needs, and the replacements are shown as a [preview](#letting-vote4dance-suggest-seats) to apply or discard.

![Replacing a judge who can't come](/assets/images/judges/judge-absent.png)

A panel that already has scores keeps the judge; the dialog lists those panels. It also lists panels whose rounds have no time yet, since Vote4Dance can't tell whether they fall in the time away; check those yourself. To change who judges the rounds still to come, give those rounds a panel of their own on the [Classes](#classes) tab.

## Problems with the panels

Above the tabs, the page lists what is wrong with the judging, in the order it needs your attention. Problems in rounds that are running now or start within the hour come first, marked **Next hour**. Then come the rest, by start time. Problems in rounds that are over are folded away under "… more in rounds that are over".

![Problems listed above the tabs](/assets/images/judges/problems.png)

Red problems need fixing; orange ones are warnings. **Show** takes you to the problem: a panel opens on the **Panels** tab, a round without a panel is highlighted on the **Classes** tab, and a judge is found in the grid.

| Problem | What to do |
|---|---|
| A round "has no judging panel" | Give the class or the round a panel on the **Classes** tab. |
| "nobody on … counts toward the result" | Seat at least one **Judge**, **Chief judge (in)** or **Audience** on the panel. |
| A group class round "should have no panel" | Remove the panel; the judges belong on the classes in the group. |
| A panel "has an even number of judges" for a round decided by majority | Make one judge a **Trainee judge**, or add or remove a judge. |
| A judge "judges two floors at the same time" | Move the judge to another panel, or run the rounds one after the other. |
| A panel "still needs" seats (warning) | **Fill open seats**, seat someone yourself, or lower **Seats wanted**. |
| A judge on a panel who is away, on two panels at once, or judging their own entry, a named dancer or a class to avoid | Move the judge, or change their needs. |
| A judge on too many rounds, too long without a break, or outside what they judge (warning) | Move some of their seats, or change their needs. |

Panels with a problem have a red or orange mark at the top of their column. The same checks, except judges' needs, are on the [Problems](/manager-guide/validator/) page.

## Classes

The **Classes** tab says which panel judges each class and round.

![Each class with its panel, and each round's own panel](/assets/images/judges/classes-rounds.png)

Choose a panel in the **Judge panel** column. The panel judges every round of that class, unless a round has its own. To give several classes the same panel, tick them first, then choose the panel on any of the ticked rows.

### Round override

A single round can be judged by a different panel, for example a final with a larger panel. In the **Rounds** column, each round has its own choice:

- **Class panel (…)** uses the class's panel. The round is tagged **Class panel**.
- Any other panel gives the round its own. It is tagged **Own panel**.
- A round whose class has no panel and that has none of its own is tagged **No panel** in red.

The change is saved at once. A problem with a round is marked next to it. You can also set a round's panel in the round's own **Judge panel** setting ("Replaces class judging panel for this round") in `Manager → Competition → Classes`.

On a tablet or a smaller screen, each class shows its panel and its rounds stacked under its name.

## When assignment locks

Panels lock when judging starts, so marks are not given by a panel that has changed since.

| What | Locked when | What you see |
|---|---|---|
| A panel's seats | Any round that uses the panel, from its class or as its own panel, has scores | The panel's cells can't be changed and its name shows a lock. |
| A class's panel | Any round of the class has been started | The class's **Judge panel** and tick box are greyed out. |
| A round's own panel | Judges who would leave the round have given marks in it | Saving is refused. |

The server also refuses these changes once marks exist, with "Cannot change panel with results".

A panel cannot be deleted while any round uses it.

A panel used on several days locks as soon as its first round has scores. To change who judges its later rounds, give those rounds their own panel on the **Classes** tab.

## Events with several competitions

In an event with several competitions, such as a championship week, each competition has its own judges and panels. In the Supervisor app, choose the competition under **Competition** at the top of the Judges page.

When the same person judges in more than one competition of the event (the same Vote4Dance account), Vote4Dance links them:

- A link icon after their name lists the other competitions they judge in.
- Their rounds in the other competitions count too: a seat at the same time is marked, rounds per day and breaks count every competition, and Suggest takes them into account. The load under their name says, for example, "(12 in other competitions)".
- Their needs are shared. Saving them in one competition saves them in all of them, except **Classes not to judge** and **What they judge**, which name one competition's classes, levels and categories and so are set in each competition. **Judge absent** saves the time away everywhere and tells you how many of their rounds in the other competitions fall in that time; replace those seats on that competition's Judges page.

![Choosing the competition, and a judge who also judges in another competition](/assets/images/judges/several-competitions.png)

## Removing a judge

The delete icon on a judge's row removes them from the competition after you confirm. It also removes them from every panel.

A judge who has already given marks in this competition cannot be removed: "Cannot change judge with results".

Removing a judge does not delete their account, and it does not send them an email.

## What the judge sees

1. The judge opens the event page and taps the **Judges** tile, or goes straight to `/judging3/event/<event id>`. They must be signed in with the account you added. Anyone else gets an access-denied page.
2. The first time, they set a PIN and confirm it ("Keep this PIN private. Supervisors can reset it if needed."). After that, they enter it.
3. They see the rounds that are open for judging and that their panel judges. With nothing to judge, the screen says "Great job! Waiting for a round...".
4. The toolbar has **Theme Light/Dark**, **Lock** (asks for the PIN again) and **Hide screen** (blanks the screen between heats).

The judge's app also has the schedule, the café and the results.

## Troubleshooting

| Message | Cause | What to do |
|---|---|---|
| "A user with this email already exists — pick them from the list." | You tried to create a new account with an email that already has one. | Press the name under the message, or pick them under **Possible existing accounts**. |
| An error reading `judges.exists` | The person is already a judge in this competition. | Nothing; find them in the list. |
| "This judge has no email address on file." | The judge's account has no email. | Invitations cannot be sent; give the judge the link yourself. |
| "Cannot change judge with results" | The judge has given marks. | The judge must stay. |
| "Cannot change panel with results" | The panel or class already has marks. | Leave the panel as it is. |
| "Cannot delete panel with assigned classes" | A class still uses the panel. | Choose another panel for those classes, then delete. |
| "Every panel already has the seats it needs." | **Suggest** found nothing to fill. | Raise **Seats wanted** on a panel, or use **Re-plan all unlocked panels**. |
| "… seats could not be filled without breaking someone's needs." | Every free judge has a need against those seats. | Seat someone yourself, or change a need. |
| "A panel already has scores, so its seats can't change." | The panel has marks. | Give the remaining rounds their own panel on the **Classes** tab. |
| "Assign a judging panel to this class or round before starting judging." | The class has no panel and the round no override. | Choose a panel on the [Classes](#classes) tab. |

## Not in this version

- No event-wide judge list: add judges to each competition separately. Their PIN is shared across the event, and a person judging in several competitions [shares their needs](#events-with-several-competitions).
- No reminder or confirmation from the judge: the status shows the account, not whether the judge has accepted.
- Judges can't fill in their needs themselves yet; a supervisor enters them.
- Needs are only checked on the Judges page, not on the [Problems](/manager-guide/validator/) page.

## Related pages

- [Competition setup](/manager-guide/competition-setup/): where judges and panels fit in the setup order
- [Users, apps and stations](/manager-guide/users-and-stations/): staff access, and why judges are separate
- [Emails and the check-in QR code](/manager-guide/emails/): the other emails Vote4Dance sends
- [Test run and venue rehearsal](/manager-guide/test-run/): let every judge set their PIN before the day
- [Live operations](/manager-guide/live-operations/): starting rounds on the day
