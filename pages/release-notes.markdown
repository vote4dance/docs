---
layout: page
title: Release notes
permalink: /release-notes/
---

<h1>Release notes</h1>
{: .no_toc }

## Table of Contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---
## 2025-09-24
 🛠️ **Improvements**
* Filter registrations fix
* Winner screen, badge for others bigger
* Judging slider get more screen space
* Manager round guide support round size margin
* Supervisor show upcoming schedule menu

## 2025-09-15
 🛠️ **Improvements**
* Filter registrations based on status, ignore cancelled as default
* Disabled pay later for registration
* Support judge score summary without skating on internal placements
* Round table show icons for hide results setting
* Judging sheets can hide placement and score to avoid comparison
* Federation class rules can use copy/paste
* Checkin registration only show active entries

## 2025-08-25
 🛠️ **Improvements**
* Fixed problem with manually creating a registration
* Jack'n'Jill, allow duplicate start number to be copied to final class
* Speaker schedule will default to correct date
* Manager now uses mobile friendly Drawer as menu
* New rules for DSF september

## 2025-06-26
 🛠️ **Improvements**
* Introduce a new event check-in page 

## 2025-06-23
 🛠️ **Improvements**
* Dance teams can set role as leader or follower
* Registration periods are now sortable
* Added NOK as currency
* Organizations can be in draft before publishing
* User organizations are listed on top
* Checkin can print start numbers

## 2025-06-11
 🛠️ **Improvements**
* Screens top3 is now default placement presentation
* Screens will reduce center space and be more compact in height
* Screens per heat will display names when 10 or less competitors
* Screens and speaker schedule will show times
* Speaker judges show grouped by competition
* Competition registration will only show main registration button
* Registration fixed problem with multiple registrations per entry
* Registration account problem updating from user profile
* Registration can request both country and show name

## 2025-05-31
 🛠️ **Improvements**
* Screens will show names in live mode and less than 12 teams
* Manager also allow manager level to send notifications
* Manager fix for some forms not being able to save data
* Creating a danceteam will close search dialog on click

## 2025-05-28
 🛠️ **Improvements**
* Registration period fix to enable remove classes with only deleted teams
* Fix so judges can see which classes they judge

## 2025-05-27
 🛠️ **Improvements**
* Fixed schedule with wrong page data per day

## 2025-05-26
 🛠️ **Improvements**
* Registration clarify text to create dancer
* Manager fix for match-race not creating rounds without manual change

## 2025-05-22
 🛠️ **Improvements**
* DSF summary rounds will not include rounds with qualifier
* Flags are not supported on all platforms (Windows 10), fallback to image instead of letters
* Registrations fix to show registrations correctly per competition in user accounts

## 2025-05-15
 🛠️ **Improvements**
* Screens can display podium top 3
* Registration help texts
* Floor code display fixes

## 2025-05-12
 🛠️ **Improvements**
* User profile registrations more mobile friendly
* User registrations fixed double rows in child competitions
* Registration checkin support scan QR codes

## 2025-05-07
 🛠️ **Improvements**
* Federation classes are now sortable
* Ranking lists can be manually corrected
* Support registration form
* Clarify text when heat count or specific heat
* Manager added missing round qualifier setting
* Manager allow teams to not be prioritized
* Floors can have both name and letter code
* Checkin can be open during competition to cancel participants
* Supervisor only show judging status when round is active
* Supervisor show hidden marks
* Supervisor fix sorting by start number
* Supervisor and speaker only show valid schedule tabs
* Judge schedule with information on when they are judging

## 2025-04-18
 🛠️ **Improvements**
* Manager fixed problem with judges not being changeable
* Manager checkin preview pre-cancelled teams correctly
* Manager print team start number fixed problem with filter on number 
* Speaker and supervisor first pass with schedule

## 2025-04-14
 🛠️ **Improvements**
* Supervisor app first iteration
* Manager confirm round warning if no targets have been set or if final has shared placements
* Manager print results now include sideskating states
* WDSF AJS fix for floating-point precision causing values to be off from tolerance
* WDSF API fix for uploading judges
* WDSF API support download specific teams

## 2025-04-07
 🛠️ **Improvements**
* Manager fix for round guide unable to set round hide settings type
* Manager round names fixed with blank space as first letter
* Manager assign start numbers can take either registration or person id into account when re-using
* Registrations stop if user birthdate is not set
* Registration status name change from Created to Preliminary
* Registration count on multiple competitions were wrong
* Registration send email on status change
* Registration only allow team change on those without entries
* Screens will now only move to next round when marked as done early for matches
* Speaker has judge list in overview

## 2025-03-31
 🛠️ **Improvements**
* Judging type 1-5 with reversed numbers
* Judging type acrobatics updated UI and corrected acro step
* Judging partial slider for component now automatically closes after timer
* Judging type partial highlight which component is active
* Judging slider popup menu moved from above to below competitors
* Judging type full (10-0) now include result position
* Heat screen jump to next round if all heats are marked as done
* Manager fixed bug with warning for judges not being displayed properly
* Manager round will not allow empty space in first part of round name

## 2025-03-24
 🛠️ **Improvements**
* Registration can use organization name and country
* Registration menu fix for not updating count
* WDSF API updates
* DSF summary rounds, corrected problem with rounds not being displayed

## 2025-03-17
 🛠️ **Improvements**
* Manager search teams show cancelled status
* Searched teams can be duplicated
* Ranking show correct updated time
* Manager change class now chunked into groups of 20
* Organization can sign registrations
* Manager sider fixed checkin button style
* Registration QR code print larger image
* Registration status and import update
* Registration bug fix where team could not be created with different setup
* Registration send email to participants
* Result print and preview update with details
* Competition validator only check normal rounds and update properly in ver 2

## 2025-03-05
 🛠️ **Improvements**
* Organizations can handle federation membership
* Ranking cleanup outdated teams

## 2025-02-25
 🛠️ **Improvements**
* Participant lists are now fetched per class for better performance
* Speaker gets a floating button for displaying competition name and blank
* Manager duplicating teams will remember start number
* Support for team groups in ver 2
* Judging cache cleanup (max 10 rounds)
* WCS chief judge separation fix
* WCS shuffle team updates
* WDSF API support in ver 2
* Support registration team without dancers
* Screen heat show placeholder after all heats are done

## 2025-02-12
 🛠️ **Improvements**
* Improved results download with class sorting and localization
* Judging increased font size in slider and placement buttons
* Judging adjusted summary yellow line in bright mode
* Judging TCI summary sorted by points
* Judging rows and summary a bit more compact for less scrolling
* Live-placement updated to moving rows for screens
* Updates for AJS
* Manager can assign start numbers
* Manager checkin can handle team with different status and show table summary
* Manager enabled heat reverse order with only 1 heat
* Speaker heat will only count dancers that are not cancelled
* Show judges on competition before start date, setting per federation
* Federation round guide can also remove rounds
* Public teams should display class when sorted by start number

## 2025-02-04
 🛠️ **Improvements**
* Judging partial more compact in layout
* Judging partial can have summary override disabled
* Fix for judging save state not appearing in heat correctly
* Localization fixes for Swedish summary and acro names
* Judges will see available judging components and descriptions in round overview
* Include show name in standard placement judging
* Checkin updates for manager ver 2
* Speaker clarify empty heat with info when there are unpublished results
* Group prioritize can now have empty names (will use class name)

## 2025-02-03
 🛠️ **Improvements**
* Corrected registration price when using per registration
* Fix for creating a dance team not updating in registration list
* Registration list in profile view had missing class label

## 2025-01-28
 🛠️ **Improvements**
* Version 2 for lineup
* Speaker only show "Waiting for judges" automatically if there is 1 heat and first round in list
* Screen lineup added federation logo
* Speaker can display teams for redance on screen
* West Coast Swing - Yes, alternates support slider and assign values based on score, also for Chief Judge
* Closed competitions will now show button to publish all results

## 2025-01-23
 🛠️ **Improvements**
* Speaker results can be sorted by class order
* Removed "Blank Screen" from speaker results, can display round name instead
* Judging only show comments when available
* Fixed some tooltips not showing

## 2025-01-20
 🛠️ **Improvements**
* Judges will not be visible unless results have been published
* Login show home button when no redirect is found
* Screen help text for zoom and fullscreen
* Slightly more contrast to light theme
* Manager can print round results
* Support for invoice with card payment
* Support merge and separate classes in ver 2
* Manager can not delete round with teams in it from table
* Manager multi edit button disabled when no valid rounds are selected
* Manager send through a bit more clear save button
* Documentation update

---
## 2024-12-27
 🛠️ **Improvements**
* Screen for group results only display name of group instead of "Through to ..."
* Basic support for merging and shifting teams (leaders+followers)
* Heat count should not include cancelled teams
* Can prioritize alternates and send teams through in ver 2
* Events now get some default schedule points on creation
* Basic judging statistics in ver 2
* Manager can change settings during active round
* Manager moved schedule and round beat to first section in round settings
* Change version and theme from user menu
* Audience voting can be displayed on screens in ver 2
* Can change schedule visibility from ver 2
* Manager can copy and delete teams
* Speaker will see judge status right away with only 1 heat
* Green screens can display specific heat
* Screens can be scaled with browser zoom
* Practice competitions are now more limited
* Language change update on sign in
* All country selectors sorted and searchable
* Support any judging with disabled placement
* Fixed wrong name on parent judging label
* Full rating (1D) can support step and limit
* Added Danssport Vlaanderen vzw as federation