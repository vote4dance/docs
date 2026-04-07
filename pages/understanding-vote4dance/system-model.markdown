---
layout: page
title: System Model
permalink: /understanding-vote4dance/system-model/
parent: Understanding Vote4Dance
nav_order: 1
---

# Vote4Dance System Model

Vote4Dance is built around a few key entities and how they relate to each other. Understanding these relationships will help you navigate the platform.

## The Core Entities

### **Federations**

A Federation is the TOP-LEVEL governing body. Examples:
- A national or regional dance association
- A league that sets rules and standards for multiple events
- An organization that issues licenses and certifies dancers/schools

**What federations do:**
- Set policies for licenses (who needs them, how to get them)
- Create and manage dancer/school rankings
- Approve schools/clubs to participate
- Track dancer and school/club compliance

**Important:** You may not have a federation if you're organizing independent, non-competitive events.

---

### **Events**

An Event is a specific dance competition or showcase. Examples:
- "Annual Spring Dance Championship"
- "Local School Dance Showcase"
- "Regional Invitational"

**What happens at an event:**
- Dancers register to compete
- Competitions are organized into divisions, classes, and rounds
- Judges score performances
- Results are published

**Important:** One federation can have many events. One event runs independently but may have federation rules applied to it.

---

### **Schools/Clubs**

A School/Club is an organization that represents a group of dancers. Examples:
- A school's dance team
- A independent dance studio
- A dance club at a university

**What schools/clubs do:**
- Register themselves with a federation (if required)
- Register their dancers for events
- Manage team rosters and licenses
- Apply for licenses on behalf of their members

**Important:** A school/club is an organization entity, not a person. Multiple people from the same school can use the platform to manage its account.

---

### **Dancers**

Individual people who compete or participate.

**What dancers do:**
- Get licensed (if the federation requires it)
- Register for specific events
- Compete and receive rankings
- Transfer between age groups, classes, or teams

---

## How They Connect

```
Federation
├── Policy (licenses required, ranking formulas, approvals needed)
├── License Items (what dancers/schools need to buy)
├── Rankings (division-wide standings)
└── Schools/Clubs
    ├── Member Dancers
    │   ├── Licenses
    │   └── Event Registrations
    └── Team Rosters

Events (run by organizers)
├── Linked to a Federation
├── Divisions/Classes/Rounds
├── Registered Teams from Schools/Clubs
├── Registered Individual Dancers
└── Judging Results
```

---

## The Most Important Relationship

**For an event to run:**

1. Federation sets up policies (if applicable)
2. Organizer creates the event structure
3. Schools/Clubs and dancers register for that event
4. Organizer runs rounds, collects judge scores
5. Results are published, affecting federation rankings (if applicable)

---

## Different Contexts, Different Rules

**If you're part of a federation:**
- Dancers and schools need federation licenses before they can compete
- Rankings might be tracked across multiple events
- The federation approves who can participate

**If you're running an independent event:**
- You may or may not connect to a federation
- You set your own registration requirements
- Rankings are specific to your event

---

## Next Steps

Now that you understand the structure, go to [Finding Your Role](/understanding-vote4dance/finding-your-role/) to identify which role(s) you have in Vote4Dance.
