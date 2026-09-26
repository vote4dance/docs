---
layout: page
title: Notifications
permalink: /manager-guide/notifications/
parent: Manager Guide
nav_order: 3.55
help:
  manager.event.notifications: ""
---

# Notifications

The Notifications screen is where you post short updates about the event, such as a schedule change or a reminder, and send them as a push notification to people who follow the event in the Vote4Dance app. Open it from `Manager → Audience → Notifications`.

There is one Notifications screen per event, not per competition.

Emails are separate. What Vote4Dance emails to dancers, and how to email the participants of a competition, is on [Emails and the check-in QR code](/manager-guide/emails/).

## What it sends

A notification is one piece of text. It reaches people in two ways:

| Where | When | What it shows |
|---|---|---|
| **The event page**: the **Notifications** section on the public event page, and the **Updates** card in the app | As soon as you **save** it, whether you send it or not | The date and your text. The three newest are shown first; the rest are one tap away (**Show more** on the web page). |
| **A push notification** on the phones of the event's followers | Only when you press **Send notifications** | The event name as the title and your text as the message. Tapping it opens the event in the app. |

No email is sent, and nothing appears on the screens in the hall.

**Anyone can read a saved notification**, including people who are not signed in. Do not save a draft you don't want the public to see yet.

## Who gets the push

The push goes to the event's **followers**. A follower is someone who has tapped **Follow competition** on the event in the Vote4Dance app.

A follower gets the push only if:

- they are signed in to the Vote4Dance app on a phone, and have allowed notifications there;
- they have not turned off **Competition updates** ("Updates for competitions you follow.") in their notification settings. It is on by default. See [Building blocks](/building-blocks/#notifications).

At the top of the screen, "This competition has N followers" shows how many people follow the event. Hover over it to see the first eight names. Some followers may not get the push, for the reasons above, so the push can reach fewer people than this number.

You cannot choose recipients. Every follower gets every notification you send. Dancers, clubs and judges who don't follow the event get nothing.

## Writing a notification

You need the **Manager** app on the event. The screen is read-only once the event is **Closed** or **Archived**.

1. Press **Create notifications**. A new row opens at the top of the list.
2. Choose the type: **Schedule updates** or **Competition updates**. The type is a label in this list; it does not change who gets the push or what the push looks like.
3. Write the text.
4. Press **Save changes**.

The notification is now on the event page. It has not been sent.

Your text cannot contain the characters `<`, `>` or `\`. If it does, saving fails with "Malformed Request".

## Sending

Press **Send notifications** (the phone icon) on a saved notification, then confirm.

When at least one follower can receive it, the push goes out at once and the row shows "Notifications was sent out on" with the date and time, in the event's time zone. The **Send notifications** button then disappears from that row, so each notification is sent only once.

If no follower can receive a push, nothing is sent and the row stays unsent. You still see the "Send notifications" confirmation. Check the follower count, and send again later if you want.

## Scheduling

There is no scheduling. A notification is sent when you press **Send notifications**, and the date shown with it is the date you created it. To send an update at a given time, write it in advance, save it, and press **Send notifications** at that time. It will be public from the moment you save it.

## History

The list on the screen is the history of the event's notifications, newest first. Each row shows the date it was created, the type, the text, and "Notifications was sent out on…" if it has been sent.

- **Edit** changes the type and text of any notification, sent or not. The change shows on the event page at once. A push that has already gone out is not changed or sent again.
- **Delete** is in the row while you edit it. It removes the notification from the list and the event page. A push that has already gone out stays on people's phones.

## Limits

- Push only, to followers of the event in the Vote4Dance app. No email, SMS or in-hall display.
- One send per notification. To send the same news again, create a new notification.
- No scheduled sending.
- No choice of recipients: not by competition, class, club or role.
- The push title is always the event name. There is no separate title field.
- Plain text only, without `<`, `>` or `\`.
- No count of how many phones the push reached.

## Related pages

- [Emails and the check-in QR code](/manager-guide/emails/): the emails Vote4Dance sends, and **Email participants**
- [Live operations](/manager-guide/live-operations/): using notifications on the day
- [Building blocks](/building-blocks/#notifications): how followers control what they receive
- [Screens, projectors and venue technology](/manager-guide/screens/): messages for the people in the hall
