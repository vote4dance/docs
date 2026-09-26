---
layout: page
title: Judges
permalink: /manager-guide/judges/
parent: Manager Guide
nav_order: 2.2
help:
  manager.comp.judges: ""
---

# Judges

The Judges screen is where you decide who judges a competition and which classes and rounds each judge marks. Open it from `Manager → Competition → Judges`. In an event with several competitions, each competition has its own judges and panels.

The screen has four parts, top to bottom:

1. The **judge list**: everyone judging this competition, their letter, invitation status and PIN.
2. A legend of the **judge types**.
3. **Judge panel**: the panels and the judges in each.
4. **Classes**: which panel judges each class.

Judges are not users in `Manager → Event → Users`, and they need no app tick there. Being on the judge list is what gives a person the Judging app for this event. See [Users, apps and stations](/manager-guide/users-and-stations/).

## Who can change judges

You need the **Manager** app on the event. The screen is read-only once the event is **Closed** or **Archived**.

People with the **Supervisor** app can also manage panels and assign panels to classes from the Supervisor app's overview. They cannot add judges there.

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
| **Name** | |
| **Photo** | A photo used for this competition only. Upload one to replace the judge's profile picture; delete it to fall back to the profile picture. |
| **Email** | Hidden on narrow screens. |
| **Status** | See [Statuses](#statuses). |
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
- On the event page, judges and Managers see a **Judge demo** tile. It is also linked from every invitation email.

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

## Panels

A panel is a named group of judges. Classes and rounds are judged by a panel, not by individual judges. A round cannot be started until its class or the round has a panel. **Start judging** is refused with "Assign a judging panel to this class or round before starting judging."

In the **Judge panel** card:

- **Add** creates a panel. The first one is named "Panel A" by default.
- Click a panel to open it. The tags show how many judges and classes it has, and, in orange, how many rounds use it as an [override](#round-override).
- Open, a panel lists its judges. Pick a judge in **Add judge** to add them; they join as **Judge**. Change the type in the drop-down next to their name, or remove them with the cross.
- The panel also lists its classes, and the rounds that use it as an override. Click a round to open it.
- The pencil renames the panel, and **Delete** is in the same dialog.
- Drag panels to change their order.

## Assigning panels to classes

The **Classes** card lists every class in the competition, with the **Floor name** when the event has floors. Choose a panel in the **Judge panel** column. The panel judges every round of that class, unless a round overrides it.

To give several classes the same panel, tick them first, then choose the panel on any of the ticked rows. It is applied to all ticked classes. Clear the choice to remove the panel from a class.

### Round override

A single round can be judged by a different panel, for example a final with a larger panel. Open the round in `Manager → Competition → Classes` and choose a panel in its **Judge panel** setting ("Replaces class judging panel for this round"). Leave it empty to use the class panel.

## When assignment locks

Panels lock when judging starts, so marks are not given by a panel that has changed since.

| What | Locked when | What you see |
|---|---|---|
| A panel's name, order, judges and judge types | Any round that uses the panel, from its class or as an override, has been started | The panel's controls are greyed out. |
| A class's panel | Any round of the class has been started | The class's **Judge panel** and tick box are greyed out. |
| A round's override panel | The round has been started, or has results | The round's **Judge panel** setting is greyed out. |

The server also refuses these changes once marks exist, with "Cannot change panel with results".

A panel cannot be deleted while it is the panel of any class: "Cannot delete panel with assigned classes". Remove it from the classes first.

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
| "Assign a judging panel to this class or round before starting judging." | The class has no panel and the round no override. | Assign a panel under [Assigning panels to classes](#assigning-panels-to-classes). |

## Not in this version

- No event-wide judge list: add judges to each competition separately. Their PIN is shared across the event.
- No reminder or confirmation from the judge: the status shows the account, not whether the judge has accepted.
- No Reset PIN in the Supervisor app.

## Related pages

- [Competition setup](/manager-guide/competition-setup/): where judges and panels fit in the setup order
- [Users, apps and stations](/manager-guide/users-and-stations/): staff access, and why judges are separate
- [Emails and the check-in QR code](/manager-guide/emails/): the other emails Vote4Dance sends
- [Test run and venue rehearsal](/manager-guide/test-run/): let every judge set their PIN before the day
- [Live operations](/manager-guide/live-operations/): starting rounds on the day
