---
layout: page
title: Running a quiz from the speaker app
permalink: /manager-guide/speaker-quiz/
parent: Rehearsal and event day
nav_order: 5
help:
  speaker.event.audience: ""
  speaker.event.audience.voting: the-voting-tab
---

# Running a quiz from the speaker app

The speaker runs the audience's quiz from the **Audience** page of the Speaker app, and puts the lobby, the questions and the standings on the screens in the hall. The organizer writes the quizzes beforehand, see [Set up a quiz](#set-up-a-quiz); the speaker only runs them. Players take part in the Vote4Dance app, see [Quizzes](/spectator/quizzes/).

The **Audience** page has a **Quiz** tab and a **Voting** tab.

## Overview

**Quizzes today** lists the day's quizzes:

- a **LIVE · RUN FROM HERE** quiz, the one you run, with its number of questions, seconds per question and about how long it takes with autoplay
- an **ALL DAY** quiz, which players play at their own pace in the app, with **Show standings on screen** and **Show join QR on screen**
- **Earlier today**: finished quizzes with the winner and **Show podium on screen**

If a live quiz has a planned start time, it says **planned for** and the time. With no quiz, the page says that quizzes are set up in the manager: see [Set up a quiz](#set-up-a-quiz).

An all-day quiz runs by itself. Its card shows how many are **playing**. Points are counted when it closes, at the time the organizer set or when you tap **Close now…** and confirm. **Top right now** shows the leaders once questions have been scored.

![An all-day quiz that is open, with how many are playing](/assets/images/audience/speaker-all-day-card.png)

Once it has closed, the quiz moves to **Earlier today** with its winner. **Show podium on screen** puts its top three in the hall.

![Earlier today: the finished quizzes with their winners](/assets/images/audience/speaker-all-day-standings.png)

## Run a live quiz

1. Tap **Open lobby**. The lobby goes on the screen that follows the floor, with a QR code players scan to join.
2. Wait for the players to join: **Players join at** shows the address and a count of how many have **joined**. **Show lobby on screen** puts it up again if the screen has changed.
3. Tap **Open quiz — start question 1**.

   ![The lobby is open: start question 1 when the players have joined](/assets/images/audience/speaker-quiz-lobby.png)

4. The question is on the phones and, with its countdown, on the screen. You see how many have answered and the correct answer, which is not on the screen. Tap **+10 s** (or the number shown) if players need more time.

   ![A question is open: the countdown, how many have answered and the correct answer, shown to you only](/assets/images/audience/speaker-quiz-question.png)

5. Tap **Close now & reveal** to close early, or let the clock close it. The answer split with the correct option highlighted goes on the screen.

   ![After the reveal: the answer split and the leaderboard](/assets/images/audience/speaker-quiz-reveal.png)

6. Tap **Show leaderboard on screen** for the top 10 and how they moved. Tap **Next question** for the next one.
7. After the last question, tap **Finish quiz**. The podium with the top three goes on the screen.

**Autoplay** does steps 5 and 6 by itself: it closes each question when the time is out, shows the leaderboard and starts the next question. **Pause autoplay** and **Resume autoplay** let you take over. **Speed bonus** is shown on the lobby.

You can **Close quiz early…** at any time. Once an answer is revealed there is no reopen: that is on purpose, so players cannot be asked again after the answer is out.

## Set up a quiz

The organizer writes the quizzes, on the **Quiz** page. That page is in **Scrutineer (Beta)**, the new version of the Manager app. The classic Manager has no Quiz page.

1. Open the new version. On your event page, tap the **Scrutineer** tile marked **Beta** under **Functions**. If you are already in the classic Manager, press **Try new version** at the top instead.
2. On the overview, scroll down to **Everything else** and press **Quiz** under **Event**.
3. Press **New quiz**.
4. Under **Quiz**, type a **Title** and choose the **Format**:
   - **Live — the speaker runs it, one question at a time**: the speaker opens it from the **Audience** page.
   - **All day — open on a clock, players answer at their own pace**: set **Opens** and **Closes**. The quiz opens and closes by itself at those times.
5. Under **Defaults for new questions**, set **Seconds per question** and **Points**, and how long the leaderboard is shown (**Leaderboard shown for**). For a live quiz you can also switch on **Speed bonus** and **Autoplay**.
6. Press **+ Add question** and choose the **Type**:

   | Type | What you fill in |
   |---|---|
   | **Multiple choice** | The question and two to four options. Tick the correct one. |
   | **True / false** | The question and the **Correct answer**. |
   | **Number (closest wins)** | The question, the **Correct value** and, if you want, a **Tolerance (±)**. The closest answer wins; every answer within the tolerance wins too. |
   | **Who wins…? (prediction)** | The **Round**. Players pick the winner from the couples in the round, and the question is settled when the round's result is published. Only in an all-day quiz. |
   | **Vote for the best… (poll)** | Where the teams come from (**Teams from**): a round, a class, a competition or the whole event. Players vote for one team, and the most votes wins. |

7. Change **Seconds** and **Points** for this question if they should differ from the defaults, and press **Done**. Add the rest of the questions the same way. Drag a question to move it.
8. Press **Save**.

The quiz is now in the list on the **Quiz** page as **Draft**, and the speaker sees it on the **Audience** page. From the list you can also:

- **Edit** a draft, or **Duplicate** it.
- **Copy from…** to copy a quiz from another event you manage. The copy is a draft. Questions about rounds or teams of the other event are left out.
- **Answers** to see the players and their answers once a quiz is open or closed, and **CSV** to download them for a closed quiz.

A quiz that is **Open** can't be edited: the speaker has to close it from the **Audience** page first. A quiz that is **Closed** has been scored and can't be changed.

## Call it

**Call it** is the audience's game of calling who goes through and who wins. Vote4Dance makes it by itself, so there is nothing to set up or run:

- Every competition day has its own Call it, named after the day, for example **Call it · Saturday 7 Nov**. It appears once the schedule is published, from 18:00 the evening before the day.
- It has a call on each of the day's finals with at least four couples, a few questions about the day in numbers, and a call on every other round of the day as it goes on the floor.
- A round's calls open while the round is on the floor and lock when the judges are done. They are settled when the round's results are published, and the players get their points then.
- The day's Call it ends when that day's last final is published. If that never happens, it ends at 12:00 the next day.

On the **Quiz** tab, Call it shows as an **ALL DAY** quiz. Like any all-day quiz, you can put its standings or its join QR code on a screen.

To switch Call it off for a day:

1. Open the event's **Quiz** page in Scrutineer (Beta), see [Set up a quiz](#set-up-a-quiz).
2. On that day's **Call it** row, click **Hide** and confirm.

Hiding removes that day's Call it with the calls the players made, and it is not made again for that day.

## Sending to a screen

Each step has **Show on screen** next to the name of the screen it goes to. If you have several screens, pick which one to drive.

## The Voting tab

The **Voting** tab is the speaker's page for the audience's hearts in the rounds on the floor; it shows when voting is on for the event. Hearts open by themselves while a round is on the floor. See [Screens, projectors and venue technology](/manager-guide/screens/) for the screens.

## Good to know

- The quiz clock runs on the server, so a speaker reload does not stop it.
- The screen never shows the correct answer before the question is closed.
- Players appear with their account name.
- Quizzes and hearts never change the judges' results.

See also [Live operations](/manager-guide/live-operations/).
