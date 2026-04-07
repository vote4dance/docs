---
layout: page
title: Key Terminology
permalink: /understanding-vote4dance/key-terminology/
parent: Understanding Vote4Dance
nav_order: 3
---

# Key Terminology

As you read documentation and use Vote4Dance, you'll encounter these terms frequently. Understanding them now will make the rest of the docs clearer.

---

## Organization-Related Terms

### **Federation**
A governing body that sets policy, issues licenses, manages rankings, and approves schools/clubs. Often a national or regional association.

### **School/Club**
An organization that represents a group of dancers (like a school team or independent studio). Schools/clubs register with federations and manage their members.

### **Event**
A specific dance competition or showcase. Each event has divisions, classes, rounds, and judges. Events are organized by event organizers using the Manager app.

### **Organization**
The umbrella term for any governing entity in the system: a federation, a school, a studio, a company, etc. The platform uses "organization" generically; context determines whether we mean a federation, school/club, or event-running entity.

---

## License-Related Terms

### **License** / **Issued License**
Proof that a dancer or school is eligible to participate. Some federations require licenses; others don't. If required, licenses are issued for a specific season/year.

### **License Item**
A specific product that can be purchased or approved. Examples: "U10 Dance License", "School Membership", "Competition Fee". Federation admins define what license items are available.

### **Payer Type**
Who pays for a license:
- **Self-service**: The dancer pays for their own license directly
- **Organization-managed**: The school/club pays on behalf of the dancer

### **License Status**
- **Pending**: Applied for but not yet approved or active
- **Approved**: Reviewed and accepted
- **Active**: Can be used for competition or other purposes
- **Expired**: No longer valid

---

## Ranking-Related Terms

### **Ranking**
A list of dancers or teams arranged by score, typically within a division and class. Used to show who did best at a competition or across a season.

### **Division**
A grouping within rankings, usually by age group or skill level (e.g., "U10", "U12", "Open").

### **Class**
A category of performance within a division (e.g., "Solo", "Duet", "Team").

### **Manual Workflow** / **Manual Exception**
When the automatically-calculated ranking result needs to be changed due to a dispute, tie-breaking decision, or administrative override.

---

## Event-Related Terms

### **Manager**
The central control panel where event organizers configure events, assign judges, manage registration, and run live competition rounds. (Not to be confused with event managers as people—"Manager" is the app name.)

### **Judging App (judging3)**
The app where judges enter their scores during live rounds.

### **Speaker App**
The app for floor operations and live announcements during an event.

### **Screens**
Display panels that show current judging status, results, or other event information to the audience.

### **Check-in**
The process where dancers/teams confirm their presence at the event before competition begins.

### **Round**
A distinct judging session within a competition. For example, "Round 1" might be solos, "Round 2" duets, "Round 3" teams. Each round goes through states: Open → Ready → Closed → Confirmed → Published.

---

## Workflow-Related Terms

### **Self-Service**
When a dancer can apply for their own license or perform their own action directly, without needing a school/club admin.

### **Organization-Managed**
When a school/club admin applies for something on behalf of dancers or handles the action for them.

### **Hybrid**
When the application process involves both self-service (dancer initiates) and organization involvement (school approves or handles payment).

---

## System Concepts

### **Approval Flow**
The process of checking, reviewing, and authorizing something (like a license or dancer registration) before it becomes active.

### **Policy**
Rules set by a federation. Examples: "All dancers must be licensed", "Classes map to specific age divisions", "Rankings use this scoring formula".

### **Bootstrap**
An automated setup option in Manager that pre-configures basic event elements (floors, schedules, judges, classes) so you don't start from scratch.

### **Stripe**
The payment processor used by Vote4Dance. If payments are required and Stripe is connected, dancers/admins can pay online.

---

## Relationship Clarifications

### **Event vs Federation**
- **Federation**: Policy and governance layer that multiple events might use
- **Event**: Specific competition run by an organizer, which may or may not use federation policies

### **School/Club vs Organization**
- **School/Club**: A specific role hub for organizations that join federations and have members
- **Organization**: The generic term for any organizing entity (includes federations, schools, event-running companies, etc.)

### **License vs Registration**
- **License**: Permission/proof to participate issued by a federation for a season (might cover multiple events)
- **Registration**: Entry into a specific event

---

## Next Steps

Now that you understand the terminology, go to [System Model](/understanding-vote4dance/system-model/) if you haven't already, or jump to your specific role hub:

- [Organizer](/organizer/)
- [School/Club](/school-club/)
- [Federation](/federation/)
- [Dancer](/dancer/)
- [Scrutineer](/scrutineer/)
