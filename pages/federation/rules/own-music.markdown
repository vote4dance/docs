---
layout: page
title: Own music
permalink: /federation-rules/own-music/
parent: Federation Rules
nav_order: 6
---

# Own music

Use this page when your federation's dancers bring their own music to the competition. You decide which classes ask for it, how long a track may be and how long Vote4Dance keeps the files. Dancers then upload an MP3 for each entry from **My registration** (see [Your music](/dancer/my-registration/#your-music)), and the organizer and the DJ download the tracks, named by start number, from the event's **Music** page (see [Music from the dancers](/manager-guide/music/)).

Nothing changes until you set a rule: without **Own music required**, no class asks for music.

## The rules

| Rule | What it does |
|---|---|
| **Own music required** | When it is on, every entry in this scope dances to its own music. Off when no scope sets it. |
| **Track max length (seconds)** | The longest track accepted, in seconds: 90 is 1:30. A longer upload is refused. Leave it empty for no maximum. |
| **Track min length (seconds)** | The shortest track accepted, in seconds. A shorter upload is refused. Leave it empty for no minimum. |
| **Track length tolerance (seconds)** | How many seconds a track may run over the maximum or under the minimum and still be accepted. Leave it empty for none. |
| **Keep music after the competition (days)** | How many days after the competition ends the uploaded tracks are kept before they are deleted. Whole days, from 1 to 365. Leave it empty for 8 days: a week for complaints, plus one. |

The music length in the class rules is something else: it is the time the schedule reserves for the heat, and has nothing to do with the uploaded track.

## Set the rules

1. Choose where the rule should apply. These rules can be set for the whole federation (`Federation → Rulebook`) or on a division, a discipline, a category, an age group or a single class. The most specific place that sets a value wins, and an age group beats a category. See [Where rules are set](/federation/divisions/#rules).
2. Open the **Rules** of that place and find the five rules above.
3. Turn on **Own music required**, and fill in the lengths you need.
4. Save.

For example, to ask for a track of at most 1:30 in every solo class, turn on **Own music required** and type 90 under **Track max length (seconds)** on the solo discipline or category.

Dancers see the result before they register: the class shows a tag such as **Own music · max 1:30**, or **min** or a range when you set both limits.

## What the dancers and the organizer see

- **A track that is too long or too short** is refused, within the tolerance you set, and the dancer is told why and which length the class allows. An earlier file stays in place until a new one passes.
- **The organizer and the DJ** download the files from the event's **Music** page, in Scrutineer (Beta), the new version of the Manager app. Each file starts with the entry's start number. The organizer can give the DJ a login that opens only that page. See [Music from the dancers](/manager-guide/music/).
- **Upload closes with registration.** After that only the organizer can change a track.

## How long files are kept

Vote4Dance deletes the tracks automatically after the competition, so music is not kept longer than needed. The number of days counts from the end of the competition. Tell organizers to download the files before then. After deletion the entry says **The track was removed after the competition.**

The days apply to the class the entry is in, and you can set **Keep music after the competition (days)** at any of the places listed above.
