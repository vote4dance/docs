---
layout: page
title: Post-event and exports
permalink: /manager-guide/post-event/
parent: After the event
nav_order: 1
---

# Post-event and exports

What you do in Manager after the last round: publish the results, close the competition,
download and print what you need, and correct a result if something was wrong.

Do it in this order:

1. [Publish every round](#publish-every-round).
2. Go through [Check before you close](#check-before-you-close).
3. [Close the competition](#close-the-competition).
4. [Download the result files](#download-the-result-files) and
   [print results and diplomas](#print-results-and-diplomas). Both also work after closing.

Closing deletes nothing, and you can open a closed event again. See
[Correct a result](#correct-a-result).

## Publish every round

A round's result is on the public results page when the round is **Published**. **Confirmed**
is not enough: Manager describes **Confirmed** as "Approved for presentation" and **Published**
as "Available online".

1. Open `Competition → Classes` and look at the rounds of each class. The status of every round
   is in the list. A published round shows **Confirmed** with a trophy icon next to it. The round
   lists on `Event → Schedule` show the same.
2. Open a round that has no trophy. The **Round status** card shows where it stands.
3. Press the button for the next step until the round is published: **Close round**, then
   **Confirm round**, then **Publish results online**.

For what each step does, see [Run a round](/manager-guide/live-operations/#run-a-round).

If you close the competition with rounds that are **Confirmed** but not published, you can still
publish them all at once. See step 5 under [Close the competition](#close-the-competition).

### What the public sees

- **A published round** is on the event's public results page. For what a dancer sees, see
  [Results, points and rankings](/dancer/creating-and-getting-a-ranking/#1-your-result).
- **The judges' marks** follow the setting **Show judges marks on web** on `Audience → Live results`:

  | Setting | Are the marks public? |
  |---|---|
  | **Show all marks** | Yes. |
  | **Only show marks after competition is closed** | Only after you close the competition. |
  | **Disabled** | No, never. |

  While the marks are held back, the public results page holds back more than each judge's marks:

  - **What is worked out from the marks:** each participant's sum, the majority columns and the
    scores for each part of the judging. The places are still shown.
  - **The order of the list:** a round's participants are listed by start number, not by place.
  - **In a battle bracket,** the judges' votes.
  - **A paper redance:** the round, and the mark that a place was decided by it.

  The page says why: "Judge marks will only be shown after the competition is closed." or, with
  **Disabled**, "Judge marks are not published for this competition."

  With **Disabled**, a dancer's own page for the event does not show the dancer's results either:
  a finished round is shown as waiting for its results, and the dancer gets no result card to
  share and no diploma there.

- **A hidden event** is in no public list, and nobody outside your team can see its results.
  Its registration page still opens for someone who has the link while a registration period is
  open: see [Registration periods](/manager-guide/registration-periods/).
- **A practice event** never has public results.

The settings on **Live results** cannot be changed once the competition is closed.

## Check before you close

Once the competition is closed, Manager is read-only. Check this first:

1. **Every round that should count is Published**, or at least **Confirmed**. A round that is
   still **In progress** or **Closed** cannot be confirmed after you close.
2. **The results are right.** Look through the final of each class: the placings, and who is
   withdrawn or disqualified.
3. **Show judges marks on web** is set the way you want it. See
   [What the public sees](#what-the-public-sees).
4. **For a federation event, the person numbers are right.** Promotion points are matched to
   couples by the person numbers on each participant. A wrong number creates a second couple.
   See [Before you close: check the data](/organizer/creating-and-getting-a-ranking/#before-you-close-check-the-data)
   and the [Problems](/manager-guide/validator/) page in Manager.
5. **For a federation event, each class is mapped to the right Federation Class.** See
   [Competition setup](/manager-guide/competition-setup/#step-1-create-classes).

## Close the competition

1. Open **Event overview**, the first item in the left menu.
2. Press **End competition**. The button always offers the next status, so it only says
   **End competition** while the event is **Published**.
3. A **Change status** dialog asks "Are you sure you want to change competition to closed".
   Confirm it.
4. Manager shows "Successfully changed status to closed". The button now says
   **Revert to hidden**.
5. If some rounds were **Confirmed** but not published: press **Publish results online**, which
   is now on the same page, and confirm "Are you sure?". It publishes every **Confirmed** round
   in the whole event. It does not touch rounds that are not confirmed.

### What closing does

- **The event and all its competitions get the status Closed.** An event with several
  competitions is closed in one go.
- **The results stay online.** The event stays public, and so does every published round.
- **Manager becomes read-only.** You cannot change a round's status, edit a participant, import
  a file or change the **Live results** settings. A round page says "The competition is closed".
- **The judges' marks become public**, if you chose **Only show marks after competition is
  closed**.
- **For a federation event, promotion points and class moves are worked out.** This happens
  when you close, not before. Rankings follow later, when the federation recalculates them. See
  [Results, points and rankings](/organizer/creating-and-getting-a-ranking/) for your part and
  [Promotion points](/federation/progression/#everything-happens-at-competition-close) for the
  rules.

Still possible on a closed event: opening every page, the downloads, the prints and
`Competition → Statistics`.

## Download the result files

The downloads are on `Competition → Registration → Data transfer`, under **Download results**.
Each file covers the competition you have open. In an event with several competitions, pick each
competition's tab at the top of the page and download its file.

Download after the last round is confirmed, so every class has its final placings.

| Button | What you get |
|---|---|
| **Download .csv file** | The result list: one row per participant, class by class. |
| **Download partial average** | The average mark of each participant for each part the judges score, with one decimal. Columns: **Startnr**, **Name**, **Org**, **Class**, then one column per part. See [What is in the partial average file](#what-is-in-the-partial-average-file). |

### What is in the result file

- **The top lines** start with `#` and give the competition's name, date, place and federation.
- **Each class** starts with a row that holds only the class title. Its participants follow.
  Until a class has results its rows follow the start numbers; afterwards they follow the
  placings.
- **Plac** is the place. **D** means disqualified. **C** means withdrawn without a place.
- **Sum**, the names, the clubs, the license numbers, the person IDs and the birth years have
  their own columns. So do **Show name**, **Country**, **City** and **Choreographer**.
- **Club** holds the club's short code and the last column, **Complete clubs**, its full name.
- **The file has no column for promotion points.**

The columns are separated by semicolons, and the file opens in Excel with accented letters
intact. The column names are Swedish (**Klassrubrik**, **Namn 1**, and **S** for withdrawn) when
you use Manager in Swedish, and always for a DSF or SDO event. For a WSDC event the button
downloads a results file for WSDC instead.

### What is in the WSDC results file

For an event of the federation WSDC, **Download .csv file** gives a file laid out like WSDC's
event form. It is still a `.csv` file with semicolons between the columns. Its parts follow one
another, each under a line such as `=== Sheet: Info Summary ===`:

| Part | What it holds |
|---|---|
| **Info Summary** | The event's name, date and location, and the name, e-mail and phone of the event owner, the chief judge and the scoreperson. The event owner and the scoreperson are taken from the people with Manager access to the event. **Scoring Software** is Vote4Dance. |
| **WSDC Jack & Jill Contestants Recap** | One row for each WSDC division: Newcomer, Novice, Intermediate, Advanced, All-Stars, Champions, Masters, Juniors and Sophisticated. It gives the number of leaders and followers, the total, whether there were prelims, quarters and semis, and the number of couples in the final. |
| **Judges** | The names of the judges, without the chief judge. |
| **Competitions / Divisions Offered (In addition to WSDC J&J)** | The titles of the classes that belong to no WSDC division. |
| One part for each division | The couples of the final, by place: **Place**, the leader's and the follower's first name, last name and **WSDC ID**, and **Leader Points** and **Follower Points**. |
| **Competitors List** | The name of every leader and follower. |
| **Dual / Multiple Roles List** | The dancers who danced both as leader and as follower. |

A class counts for a division when its **Class title** contains the division's name, for example
"Novice Jack & Jill". The **WSDC ID** is the dancer's person ID on the participant.

### What is in the partial average file

**Download partial average** is for rounds where the judges score each participant in parts.

- **One row for each round a participant danced**, when the round has something to average. A
  participant who danced three such rounds has three rows. The file has no column that names the
  round.
- **One column for each part**, with the average of the judges' scores for that part, to one
  decimal. A part a judge left empty or scored 0 is left out of that average.
- **Other judging types can add columns of their own.** A round with full judging has the
  average of the judges' marks in a column named **Default**, and a round judged by placement can
  add a column named **Slider**. A row has an empty cell in a column its round does not use.
- **Only the ordinary judges of the class's panel are counted.** A chief judge is not, and
  neither is a judge who sits only on a panel set on the round itself.
- **Name** holds the dancers' names with " & " between them, **Org** the club and **Class** the
  class title.

The columns are separated by semicolons. The decimal sign follows your browser's language: a
comma where numbers are written with a decimal comma, a point elsewhere. While no participant is
in any round, there is nothing to download and the button gives an error.

For placements 1 to 6 per club, open `Competition → Statistics`, the **Medals** tab, and press
**Export CSV**. Until the competition is closed the tab says "Results are provisional". See
[Statistics](/manager-guide/statistics/).

## Print results and diplomas

1. Open `Competition → Classes` and open the round, normally the final.
2. Open the menu on the printer button in the round's toolbar and choose **Results** or
   **Diploma**. The print page opens in a new tab.
3. Set the options in the bar at the top, then press **Print**. The bar itself is not printed.

| Print | What is on it | Options |
|---|---|---|
| **Results** | The event, the class, the round's result and the judges of the panel. | **Orientation** (**Landscape** or **Portrait**) and **Show majority**. |
| **Diploma** | One page per dancer, in order of place. From a final: every dancer in the final. From an earlier round: the dancers who were not sent on to another round. | See [Customizing diplomas](/manager-guide/diploma-customization/). |

For the other prints, such as start numbers, heat lists, judging sheets and the schedule, see
[What you can print](/manager-guide/event-setup/#what-you-can-print).

## Correct a result

A result is corrected in its round. The round has to go back to **Closed**, and that is only
possible while the event is **Hidden** or **Published**.

### Before you close

1. Open the round and press **Previous status**. A **Published** round goes back to
   **Confirmed**, and its result is no longer online.
2. Press **Previous status** again. The round is now **Closed**.
3. Make the correction on the round page.
4. Press **Confirm round**, then **Publish results online**. Confirming sends the round's
   participants on to the next round again. If the wrong participants went through before, see
   [Wrong participants in the round](/manager-guide/live-operations/#wrong-teams-in-round).

### After you have closed

Open the event again first. The public cannot see the event or its results while it is
**Hidden**, so do this in one sitting.

1. On **Event overview**, press **Revert to hidden** and confirm.
2. Correct the round as described under [Before you close](#before-you-close).
3. Press **Publish competition** and confirm. The event is **Published** again.
4. Press **End competition** and confirm. For a federation event, promotion points are worked
   out again. It is safe to repeat.

While the event is **Hidden**, **Reset results** and **Delete registrations** on **Data
transfer** are active. Do not press them. **Reset results** removes every result of the
competition. They are for test data, before a real event.

Do not leave a finished federation event **Hidden**. A hidden event does not count towards the
federation's rankings. See [Rankings and rules](/federation/competitions/#rankings-and-rules).

### Change a judge's mark

Manager cannot change a mark, not even in a round that is **Closed**. Only the judge can, in the
Judging app, and only while the round is **In progress**:

1. Open the round and press **Previous status** until it is **In progress**. From **Closed**
   that is one press.
2. In **Judge results**, hover over the judge's letter and click the judge's name. The padlock
   opens, and the judge has the round in the Judging app again. The other judges stay locked.
3. The judge changes the mark and presses **Submit results**.
4. Press **Close round**, check **Qualified participants**, then **Confirm round** and
   **Publish results online** as before.

To take away all the marks of a round instead, see
[Wrong judging type on a round in progress](/manager-guide/live-operations/#wrong-judging-type-on-a-round-in-progress).

### What a correction affects

- **The public result** changes when you publish the round again.
- **Later rounds** can change. When you confirm the round again, its participants are sent on
  again. See [Wrong participants in the round](/manager-guide/live-operations/#wrong-teams-in-round).
- **The result file and the prints** show the new result the next time you download or print.
  Send the new file to whoever got the old one.
- **Promotion points** are taken back when a round's confirmation is taken back, and worked out
  again when you confirm the round again. See
  [Where a value comes from](/federation/progression/#where-a-value-comes-from).
- **A couple's class, its points balance and the rankings** are the federation's. Tell the
  federation what you changed.

### Promotion points of one participant

Promotion points are worked out from the results. So:

- **If the result is wrong,** correct the round. The points follow.
- **If the result is right but the points should be different,** ask the federation. A federation
  administrator can set the points of one result, and that number stays. See
  [Correct a result's points](/federation/class-point-limits/#correct-a-results-points).

Manager also has a field for it. Open `Competition → Participants` and click the participant's
name. Under **Promotion points** Manager says "Points earned at this competition. Computed when
the final is confirmed; edit to override." You can save it while the event is **Hidden** or
**Published**, not while it is **Closed**. Know what happens to the number you type:

- **A participant who danced in the class's rounds** gets the worked-out points back the next
  time they are worked out: when a round of the class is confirmed, and when the competition is
  closed.
- **A participant whose result came from an imported file** keeps the number you typed.

The same editor has **Placement** and **Sum**. They come from the confirmed rounds, so correct
the round instead.

To check the points, look at the list on **Participants**. It has a **Points** column in every
class where a participant has points. A value such as `22 + 6` means 22 points brought into the
class and 6 earned here. A participant whose result takes it up a class has a green arrow. Point
at the arrow to see the class it moves to.

If you import results from a file, its **Points** column (**UP** in a Swedish file) means the
points earned at this competition, not the couple's total. For the one exception, see
[Where a value comes from](/federation/progression/#where-a-value-comes-from).

## What stays available afterwards

- **Nothing is deleted when you close.** Classes, participants, rounds, marks and results stay,
  and you can open the event in Manager at any time.
- **Hiding the event.** **Revert to hidden** on **Event overview** takes a closed event out of
  public view. It also makes the event editable again.
- **Deleting the event.** **Delete event** on **Event overview** removes the event for good,
  with its classes, participants, rounds and results. It is greyed out on a closed event.
  Manager refuses when the event still has competitions, and when it has paid shop orders.
- **Archiving.** Manager has no button that archives an event. An event with the status
  **Archived** is read-only, and its status button is greyed out.

## In Scrutineer (Beta)

Scrutineer (Beta), the new version of the Manager app, does the same things with other buttons.
The downloads are in the same place.

- **Status.** On the overview, click the status tag at the top of the page. The steps are
  called **Close the competition** and **Make hidden**. **Publish event…** is a button of its
  own.
- **Publishing.** When every round is confirmed but some finals are not published, the run
  sheet in **Live** shows **Publish all results…**. On a closed event, the overview has
  **Publish results**.
- **Closing.** When every round is confirmed and every result is online, the run sheet shows
  **Close the competition…**.
- **Taking a result offline.** Open the round's **⋯** menu and choose **Take results offline…**.
  The round stays confirmed.

## Troubleshooting

| What you see | What it means | What to do |
|---|---|---|
| A round page says "The competition is closed" and its buttons are greyed out. | The event is **Closed**, so Manager is read-only. | Open the event again. See [After you have closed](#after-you-have-closed). |
| **Event overview** has no **End competition** button. | The button offers the next status: **Publish competition** on a hidden event, **End competition** on a published one, **Revert to hidden** on a closed one. | Publish the event first, or check that it is not closed already. |
| You pressed **Publish results online** on **Event overview**, but a round is still not published. | The button only publishes rounds that are **Confirmed**. | Open the event again, confirm the round and publish it. See [After you have closed](#after-you-have-closed). |
| Saving a participant fails with "The federation has corrected this result's points. It has to remove the correction before they can change." | The federation has set these points itself. | Ask the federation. See [Correct a result's points](/federation/class-point-limits/#correct-a-results-points). |
| The result file has Swedish column names. | You use Manager in Swedish, or the event belongs to DSF or SDO. | Switch to another language and download again. A DSF or SDO file is always Swedish. |
| **Medals** says "Results are provisional". | The competition is not closed yet. | Close the competition. |
| **Reset results** and **Delete registrations** are greyed out. | They only work while the event is **Hidden**. They are for test data. | Nothing. Do not use them after a real event. See [Data transfer](/manager-guide/entries-and-participants/#data-transfer). |
| The status button on **Event overview** is greyed out, and pointing at it shows **Archived**. | The event is archived and read-only. | Manager cannot change it. See [Getting help](/getting-help/). |
| The federation sees no points, or a couple's points are on a second couple. | The competition is not closed, or a person number is wrong. | See [Common problems](/organizer/creating-and-getting-a-ranking/#common-problems). |
