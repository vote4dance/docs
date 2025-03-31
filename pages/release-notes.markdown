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