---
layout: page
title: At the door
permalink: /manager-guide/the-door/
parent: Manager Guide
nav_order: 3.7
---

# At the door

Everybody who comes to your event shows one of two QR codes: a dancer shows their **Vote4Dance ID**, an audience member shows a **ticket**. The check-in station resolves both, tells the desk in one line whether to let the person in, and records that they arrived.

Selling the tickets is on [Shop](/manager-guide/shop/). The club check-in, which is a different thing entirely, is on [Registration and check-in](/manager-guide/registration-checkin/).

## What the desk needs

- A **check-in station** for the event, or a user with the Checkin capability. Create stations under [Users, apps and stations](/manager-guide/users-and-stations/) and print the station QR before the day — a station signs in by opening its QR, with no password.
- A phone, tablet or laptop with a camera, or a USB barcode scanner (which behaves as a keyboard).
- A dated schedule, if you sell day tickets or admit dancers only on the days they dance.

The station's sign-in survives a new tab, so a QR opened with the phone's camera app lands on the same station instead of a login screen.

## One box for everything

![Desk lookup](/assets/images/door/event-lookup.png)

The event page in the check-in app has a single box: **scan a Vote4Dance ID or ticket, or type a name, e-mail or ticket code**. It resolves whatever it is given:

| What is scanned or typed | What happens |
|---|---|
| A Vote4Dance ID (or a pasted `/checkin/user/…` link) | Opens that person's screen |
| A ticket QR or ticket code | Opens that ticket |
| A name or an e-mail | Filters the dancer list, and searches paid orders by buyer name and e-mail underneath |

**Scan** next to the box opens the camera in the app itself, so the desk never leaves the page: the camera keeps running while you work through a person and takes the next code straight away. The phone's own camera app still works as a fallback, because every code is a plain URL.

## The person screen

![Person screen](/assets/images/door/person-screen.png)

The screen reads top-down as a verdict, then the detail:

1. **The band**: green *Admitted* or amber *Ticket needed*, with the reasons on one line under it — which classes they dance today, whether a ticket is needed and why (not dancing today, no approved registration, or the event admits dancers by ticket only), how many unused tickets are on their own orders, and whether the club check-in is still pending. The **Arrived** button sits in the band, and turns into the arrival time with **Undo** once pressed.
2. **Photo, name and birth date**, so the desk can see it is the right person. Somebody with no photo shows "No photo on file" — ask them to add one in the app.
3. **Tickets**, when the person has bought anything: one row per ticket with its state and an **Admit** button.
4. **Registrations and partners** for the event, with start numbers and the club check-in.

A scan box sits at the top of the screen and takes focus back after **Arrived**, so a desk with a scanner never has to touch the screen: the next ID or ticket opens the next person.

![A ticket holder at the desk](/assets/images/door/person-tickets.png)

*An audience member with no registration: the verdict asks for a ticket, and the three tickets on their own order are right underneath.*

## Arrivals

**Arrived** is recorded per person and per day, so a two-day event is marked each morning; earlier days are shown as history. Each arrival records who marked it — the staff member by name, or the station.

The Manager's registration list gains an **Arrived** column once anybody has arrived, showing `n/m` members per registration with a filter for everyone, some or nobody. That is the list to watch from the office while the desk works.

Arrival is recorded for every dancer, whatever the admission policy says, and it never gates anybody: a dancer who is admitted is admitted whether or not the desk pressed the button.

## Tickets

![A scanned ticket](/assets/images/door/redeem.png)

**Scanning a ticket admits on the spot.** A ticket that is valid today is used the moment its code opens, so the desk reads the verdict instead of tapping for it; **Undo** sits next to it on the band for the wrong QR, and **Next person** goes back to the box. Below the band is the detail: what the ticket is, who bought it, the order it belongs to, and when it was used.

A ticket for another day is *not* used automatically — it asks first (see below). Tickets opened from a person's screen have an **Admit** button each, because the desk is choosing which one to use.

| The desk sees | What it means |
|---|---|
| **Valid — let them in** | Unused and valid today. |
| **Already used** | Used, with when and by whom. |
| **Wrong day** | The ticket admits on another day. The desk can still use it, deliberately, after confirming. |
| **Cancelled** | Voided or refunded. |
| **Not paid yet** | The buyer's checkout was never completed. |

One ticket admits one person, once per day it is valid for. Tickets are bearer objects: a buyer can hand one to a friend without an account, and the code is what counts.

## Selling at the desk

The desk sells the same catalog for cash — `Check-in → Sell` — and can hand the ticket over immediately, e-mail a receipt, or put it straight onto a scanned person's account. A customer who wants to pay by card scans the QR on the page and buys on their own phone. See [Shop](/manager-guide/shop/).

![The desk sell page](/assets/images/shop/desk-sell.png)

## Before the day

Work through **The door** card on the Shop page: Stripe connected, admission products on sale, the schedule's days, stations created, and how many registered dancers still have no photo on their ID. Everything the desk needs is on that card.
