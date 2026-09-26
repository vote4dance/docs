---
layout: page
title: Club transfers
permalink: /federation/club-transfers/
parent: Federation
nav_order: 12
---

# Club transfers

This page is for **federation staff**. It covers every way a dancer or a competitor moves from one
club to another in Vote4Dance: who can start the move, where you approve it, when it takes effect,
and what changes afterwards.

> **Read this first.** Vote4Dance records "which club" in **four separate places**, and changing
> one never changes the others. A complete club change is usually two or three separate actions.
> The [scenario table](#which-record-do-i-change) below tells you which actions you need.

---

## The four records

| Record | What it answers | Who changes it | Federation step? |
|---|---|---|---|
| **Club membership** | Is this dancer a member of the club? | The dancer (**Join organization** / **Leave organization**) and the club's staff | None. You are not involved. |
| **Licence organization** | Which club does this dancer's federation licence name? | You, with **Change organization** on the licence | Yes: an immediate reissue |
| **Team ownership** | Which club owns this group or formation? | You (**Move**, **Release to independent**), or the owning club files a request that you **Approve** | Yes: immediate, or approved and dated |
| **Representation rows** | Which club does a competitor represent when no licence says so? | You, on the organization's **Transfers** tab | Yes: immediate |

There is a fifth, narrower record. When the rule **Ask which organization each dancer represents**
is on, the registrant picks a club per dancer on each registration. That choice lives on the
registration only. See [Registration](#registration-which-club-a-dancer-represents).

Couples created by the **result import** also carry their club as a **tag in their name**, for
example `Anna Berg & Erik Holm (DKV)`. The public ranking shows that name, and no club change
updates it. See [Couples created by the result import](#couples-created-by-the-result-import).

### How they fit together

- **Licences decide representation.** A competitor represents the club that holds the **most
  active dancer licences** among its members. A tie goes to the older licence. Representation rows
  only count when *no* member has an active dancer licence in your federation, which is why they
  are tagged **Temporary**.
- **Ownership decides who manages a team.** The owning club's coaches edit the lineup, register
  the team and cancel its entries. On an owned team's entries, the club shown is always the owner.
- **Membership decides almost nothing on the federation side.** It does not move a licence, a team
  or a representation row. It matters for the registration club choice, and for which club the
  public dancer profile shows.

---

## Which record do I change?

| The situation | What you do |
|---|---|
| A dancer with a club licence moves to a new club | [Change the licence's organization](#moving-a-dancers-licence-to-a-new-club). If the dancer dances in a couple, do it for both partners, or the couple's club may not change. See [How they fit together](#how-they-fit-together). |
| A couple **created by the result import** (DSF) changes club | [Couples created by the result import](#couples-created-by-the-result-import): two steps, the club and the club tag in the name |
| A couple or solo with **no active licences** needs a club | [Assign organization](#assign-organization) on the organization's Transfers tab |
| A club-owned group or formation moves to another club, and you decide it now | [Move](#move-a-team-now) in **Teams owned by the organization** |
| The owning club has asked to move one of its teams | [Approve or reject](#approving-a-clubs-transfer-request) under **Pending transfers** |
| A club-owned couple leaves its club and competes on its own | [Release to independent](#release-to-independent). This only works for teams of two or fewer. |
| A dancer only changed which club they train at | Nothing on your side. Membership is between the dancer and the clubs. If the licence should follow, see the first row. |
| A club is leaving your federation | See [When a club leaves the federation](#when-a-club-leaves-the-federation) |

---

## Couples created by the result import

This is the usual case in federations that import results, such as DSF: the couple already exists
because a result file created it, and now one or both dancers change club.

**A club change for these couples is two things,** and you have to do both:

1. **The club affiliation**: which club the federation screens show the couple under. You set it on
   the club's **Transfers** tab.
2. **The club tag in the couple's name**: what the public sees in the **ranking**. When the import
   created the couple, it named it after the result file, for example `Anna Berg & Erik Holm (DKV)`.
   That name is plain text. It does **not** follow the club affiliation, and later imports never
   change it. You change it by renaming the couple, on the same page.

### Step by step

1. Open the **new** club: `Federation → Members → Organizations → [new club]`
2. Tab **Transfers**
3. **Assign organization**
   - **Competitor**: the couple
   - **Organization**: the new club
   - **Reason (optional)**: the date and your decision reference
4. **OK**. The couple now appears on this tab with the tag **Temporary**.
5. On that row, **Rename competitor**
6. In **Competitor name**, write the names with the **new club's tag**:
   `Anna Berg & Erik Holm (NEWCLUB)`. Keep the existing spelling and order of the names, and
   change only the tag.
7. Save. The next time the ranking is opened, it shows the new name, on every line the couple
   has, including results danced for the old club.
8. Check the result: the couple is on the new club's **Transfers** tab, and the public ranking
   shows the new tag.

Use the club's **tag**, the short code the result files use, not its full name. It is the same
format the import writes: the names joined with `&`, then the tag in brackets.

### Before you start: check whether the couple has licences

The import tries to give the couple's dancers a free dancer licence at the result file's club. The
licence note is `ranking_import_team_bootstrap`. This only works for dancers who are linked to the
couple with an account, for example after claiming their results, so many imported couples have
no licences at all.

Open the **old** club's **Transfers** tab and look at the couple's rows:

| The old club lists the couple as… | What it means | What to do |
|---|---|---|
| Not at all, or **Temporary** only | No active licences. The club affiliation comes from Transfers rows. | Follow the steps above. |
| **Licensed** | At least one dancer has an active dancer licence at the old club. Licences always win over Transfers rows, so **Assign organization alone changes nothing**. | Move the licences as well. See below. |

**Moving the licences** of a couple that is listed as **Licensed**:

- **The new club is an approved licence issuer:** use **Change organization** on each dancer's
  licence. See [Moving a dancer's licence to a new club](#moving-a-dancers-licence-to-a-new-club).
- **It is not an approved issuer:** clubs created by the import are approved into the federation
  but are not issuers, so the reissue is refused with "This organization isn't an approved issuer
  for this federation." Two ways forward:
  - approve the club as an issuer first, then reissue; or
  - if the licence is only the import's free placeholder, **Edit** it, set its status to
    **Cancelled**, and save. Once no dancer holds an active licence, the Transfers row from
    **Assign organization** decides the club.

Move or cancel **both** dancers' licences: the club with the most active licences wins.

### What stays with the old club

- **Results and entries already danced** keep the old club's tag in the results. The ranking
  shows the couple's current name instead, which is why renaming updates every ranking line.
- **The old club's Transfers tab** still lists the couple's old **Temporary** row, marked active.
  It no longer counts, because the newest active row wins. It cannot be ended or deleted. If you
  would rather not have it there, use **Change organization** on the *old* row instead of
  **Assign organization** on the new club. That moves the row to the new club, but you lose the
  record of where the couple came from.
- **The result files** keep saying whatever the organizer's system says. If a later file still
  tags the couple with the old club, nothing changes on your side: the import only names a couple
  when it creates it. Ask the organizer to update the dancers' club in their system.

### Only one dancer changes club

The couple has one club affiliation and one tag. Decide which club the couple represents and
follow the steps for that club. If your rules allow a couple to represent two clubs, write both
tags the way your result files do, for example `(DKV/SDK)`. Only the name carries both; the
affiliation is always a single club.

---

## Who can do what

Every change on this page needs the **Administrator** or **Owner** role. Viewers and Managers can
open the same pages and read the history, but cannot change anything.

| Action | Where | Role needed |
|---|---|---|
| Read the Transfers tab | Organization → **Transfers** | Any federation role |
| See the Action Center counter | **Overview** | Manager, Administrator, Owner |
| **Assign organization**, **Change organization** (representation row), **Rename competitor** | Organization → **Transfers** | Administrator, Owner |
| **Move**, **Release to independent**, **Approve** / **Reject** a pending transfer | Organization → **Teams & integration** | Administrator, Owner |
| **Change organization** on an active licence (reissue) | **Licenses** → **Edit** | Administrator, Owner |

Managers see a note in place of these buttons saying they need an Administrator. Managers can edit
a licence, but its organization field is locked while the licence is active. If a Manager on your
staff handles transfers, give them Administrator, or route the change to someone who has it. See
[Federation Staff Roles](/federation/staff-roles/).

---

## Where transfers live

Everything about one club is on that club's page:

`Federation → Members → Organizations → [club]`

| Tab | What you do there for transfers |
|---|---|
| **Overview** | The **Representation summary** ("*n* active rows of *m* total") |
| **Transfers** | The card **Competitor transfers and representation**: representation rows and licence rows for this club, **Assign organization**, **Change organization**, **Rename competitor** |
| **Licenses** | The club's licences |
| **Teams & integration** | The card **Teams owned by the organization**: owned teams, **Move**, **Release to independent**, and **Pending transfers** with **Approve** / **Reject** |

> **There is no federation-wide transfer list.** Pending transfer requests are listed per club, on
> the *owning* club's **Teams & integration** tab. The Action Center counter on **Overview**
> ("Representation changes awaiting confirmation") tells you how many are waiting, and opens the
> club list (**Members → Organizations**). From there, open each club that owns groups or
> formations.

---

## Moving a club-owned team

Groups and formations belong to the club that created them. Couples and solos are usually
independent: they have no owning club, and are capped at two members. An owned team:

- is hidden from the public competitor list and search;
- can only be edited, registered and cancelled by its owning club's approved coaches, managers and
  administrators;
- always registers under its owning club.

Moving ownership is how such a team changes club. The owning club cannot do it alone, and the
receiving club cannot start it. Either you move the team, or the owning club asks and you approve.

### Move a team now

1. Open the **current** owner: `Federation → Members → Organizations → [club]`
2. **Teams & integration** → **Teams owned by the organization**
3. On the team's row, choose the new club in **Move to organization…**
   The list holds every club linked to your federation, including clubs still pending federation
   approval. Check the destination's status before you choose it.
4. Press **Move**. You see "Ownership updated".

The move is **immediate** and dated today. Your action is the approval, so there is no pending
step and no second confirmation. The UI has no reason field, so record the decision reference
outside the system (see [Auditing](#auditing-a-transfer-afterwards)).

### Release to independent

Use this when a club-owned couple or solo leaves its club and should compete without one.

1. Same card, on the team's row, press **Release to independent**
2. Confirm "The team leaves the organization and becomes an independent competitor. Continue?"

The button is disabled for teams of more than two members: "Only competitors with at most 2
members can be released from their organization". A group or formation always needs an owning
club, so move it to another club instead.

### Approving a club's transfer request

A club's approved **Coach**, **Manager** or **Administrator** can ask to move a team their club
owns to another club in your federation. The request names the destination club and an
**effective date**, and optionally a reason.

> Clubs cannot file this request from the club screens yet. Today it is filed through the API or
> by Vote4Dance support. The club-side permission guide already lists it as "Move a competitor
> owned by the organization to another organization, for federation approval". Tell your clubs
> how to reach you until the screen exists.

**What arrives:**

- The Action Center counter **Representation changes awaiting confirmation** goes up by one.
- The request appears under **Pending transfers** on the **owning** club's **Teams & integration**
  tab. The row shows the team, "Source club → Destination club" and the effective date
  (YYYY-MM-DD).

**What to check before deciding.** The system does not check any of this for you:

- The **effective date** fits your transfer rules: allowed dates, submission deadline, quarantine.
  See [Transfer windows, deadlines and quarantine](#transfer-windows-deadlines-and-quarantine).
  If the club gave no date or an invalid one, the date is **today**.
- The **destination club** is approved in your federation. A pending club passes.
- There is **no other pending request** for the same team. Duplicates are possible. If you approve
  two, the one with the latest effective date wins.
- Both clubs are still in your federation. A request can only be filed between two clubs linked
  to the same federation ("Transfers must stay within one federation"). Nothing re-checks this
  when you approve.
- The receiving club **agrees**. The receiving club is never asked in the system, so confirm with
  them directly.

**Deciding:**

| You press | What happens |
|---|---|
| **Approve** | The request becomes **active**. If the effective date is today or earlier, ownership moves **immediately**. If it is in the future, it moves in the nightly run on that date (below). |
| **Reject** | The request becomes **rejected** and nothing moves. |

Only pending requests can be decided: "Only pending transfers can be decided". Once you approve a
request, you cannot undo it in the UI. To reverse it, **Move** the team back from the new owner's
page.

Neither the club nor anyone else can **withdraw** a request. A request the club no longer wants
has to be **rejected**.

### When a dated transfer takes effect

An approved transfer with a future effective date is applied by a nightly job at **03:10 server
time**, on or after the effective date. Until then the old club still owns the team, including its
entries in competitions before that date.

The nightly run skips a transfer and marks it **ended** when the requesting club no longer owns
the team, for example because you moved it in the meantime. The reason then carries
"[superseded: source no longer owns the team]". Nothing moves, and nobody is notified.

### What an ownership change does, and does not do

| | After the move |
|---|---|
| **The team itself** | Keeps the same competitor record, so its **class memberships, promotion points and rankings** stay attached. There is no carryover to set. |
| **Lineup** | Untouched. No member is added or removed, and members do not have to be members of the new club. Ask the new club to review the lineup. |
| **Who manages it** | The new club's staff, immediately: editing, registering and cancelling entries. The old club loses access at the same moment. |
| **New entries** | Register under the new club. |
| **Existing entries** | **Keep the old club's name** on start lists, results and statistics. The club is stamped on the entry when it is made. To change an upcoming entry, the new club can cancel and re-register it, where the event allows. |
| **Licences** | Unchanged. If a class requires members to be licensed through the owning club, the team's next registration is blocked until you move the licences too: "All members must be licensed through the owning organization for this class". |
| **Notifications** | None. No email or push goes to either club or to the dancers, so tell them yourself. |

---

## Moving a dancer's licence to a new club

The club named on an **active** licence cannot be edited in place. "Change organization" on the
licence **reissues** it instead.

1. `Federation → Licenses`, find the licence in **Needs your approval** or **All other licenses**
2. **Edit**, pick the new club in **Organization**, and **Save**
3. Confirm: "Change organization for this license?" — "*New club* will represent *dancer* on this
   license starting today, valid through *end date*. The previous license under *old club* will be
   closed and kept for history."
4. Press **Change organization**. You see "Organization changed".

**What happens, in one step:**

- A **new active licence** is issued under the new club, valid **from today** through the old
  licence's end date. The dancer pays nothing again: the payment status and your federation
  approval carry over.
- The **old licence** is set to **Cancelled**. Its note gets
  "[Replaced by license #*n* on *date* — organization changed]", so the history stays readable.
- **Representation follows.** Once most of a team's active dancer licences name the new club, the
  team represents the new club from that day.

A licence that names **no club yet**, such as a self-service licence, is not reissued. Picking a
club in **Edit** simply adds it to the same licence, with no confirmation.

**It does not** change club membership, team ownership or representation rows. The **payer
organization** on the licence is also carried over unchanged: it still names the old club.

**It is refused when:**

| Message | Why |
|---|---|
| "Only active licenses can have their organization changed." | The licence is pending, suspended, expired or cancelled. For a licence that is not active, the organization can simply be edited. |
| "The new organization must be different from the current one." | Nothing to change. |
| "This organization isn't an approved issuer for this federation." | Approve the new club as a **license issuer** first. See [Manage issuer role on organizations](/federation-licenses/federation-admin/#6-manage-issuer-role-on-organizations). |
| "Organization cannot be changed on an active license. Cancel this license and issue a new one." | You saved an organization change on an active licence without going through the confirmation. Use the flow above. |

> **Couples: reissue both partners.** Representation follows the majority of active dancer
> licences, and a tie goes to the older licence. If you reissue only one partner of a couple, the
> couple keeps representing the old club until the second licence moves too.

---

## Representation rows

The organization's **Transfers** tab, card **Competitor transfers and representation**, lists every
competitor linked to this club by either route:

| Tag | Source | Status shown |
|---|---|---|
| **Licensed** | A team member's dancer licence at this club | The **licence's** status. Its date is the licence's valid-from date. |
| **Temporary** | A representation row entered by staff | **pending**, **active**, **ended** or **rejected** |

Active rows sort first. Ownership moves are **not** listed here; see
[Auditing](#auditing-a-transfer-afterwards). With nothing to list, the card says "No competitors
currently represent this organization."

A **Temporary** row only decides a competitor's club while **no member holds an active dancer
licence** in your federation. As soon as one does, the licence wins. Use these rows for
competitors that have no licences: imported results, teams awaiting their first licence, or
federations that do not license dancers.

### Assign organization

1. Organization → **Transfers** → **Assign organization**
2. **Competitor**: the team (required)
3. **Organization**: the club (required)
4. **Reason (optional)**: write the decision reference; this is the only place it is kept
5. **OK**. You see "Organization assigned".

The row is **active from today**. You cannot enter a future or past date, or save it as pending.

A club that is not linked to your federation is refused: "The chosen organization does not belong
to this federation".

Check before saving:

- A club-owned team that has never entered a competition is not in the **Competitor** list. Use
  **Teams owned by the organization** for owned teams instead.

### Change organization

Only on **Temporary** rows. It replaces the row's club and reason. It keeps the row's date and
status, and it rewrites the existing row rather than adding a history entry. For a real transfer
that should stay visible in the history, prefer **Assign organization** on the destination club:
the newest active row wins.

### Rename competitor

On any row. It changes the competitor's name everywhere, without touching its club, licences or
status.

### What you cannot do here

- **Delete** a row
- Set a row's **status** or **effective date**
- Leave a row **pending** until approval

---

## Club membership changes

A dancer joins a club with **Join organization** and leaves with **Leave organization**. The club's
Manager or Administrator approves joins where the club requires it. **You get no queue item and
set no dates.**

Leaving a club does **not**:

- cancel or move the dancer's licence, which still names the old club until you reissue it;
- remove the dancer from a club-owned team's lineup;
- change any representation row.

It **does** change:

- which clubs the dancer can pick when registration asks which club each dancer represents; only
  approved memberships count;
- the club shown on the dancer's public profile.

So when a dancer tells you "I've changed clubs", ask which of the four records they mean. Most of
the time it is the licence.

---

## Registration: which club a dancer represents

A dancer who is an approved member of several clubs can be asked, per registration, which club
they represent.

- **Your side:** the rule **Ask which organization each dancer represents**, under
  `Federation → Rulebook`, at discipline, category or federation class scope. The most specific
  scope wins.
- **Organizer side:** **Organization selection = Required** on a registration period or class.

The choice is stored on that registration and shown to you and the organizer. It does not change
who is billed, and it does not move a licence or a team. Club-owned teams are never asked: they
always register under their owning club.

Registrants can be stopped with:

- "Choose which organization each dancer represents before registering."
- "A chosen organization is not one of the dancer's approved organization memberships."
- "A dancer in this team has no approved organization. This class requires every dancer to
  represent an organization."

---

## Transfer windows, deadlines and quarantine

**None of these are enforced by the platform today.** You enforce them by hand, when you approve a
transfer and before a transferred competitor starts.

In practice:

- Approving a request, moving a team, reissuing a licence and assigning an organization all ignore
  allowed dates, deadlines and quarantine.
- A **pending** transfer does not block the team from competing. It keeps competing for its old
  club until the move takes effect.
- A transferred dancer or team is **not** blocked from competing during a quarantine period. If
  your rules impose one, check entries for recently transferred competitors yourself, before
  approving the start lists.
- No transfer is ever written to the **Enforcement log**. The **transfer** enforcement point
  exists, but nothing uses it yet.
- The rule **Representation scope** (Open, One organization per year, One organization per
  competition, One organization per discipline per event, Majority organization) is recorded but
  not applied. The rule editor says so: "Not enforced by the platform yet".

The Transfers tab may show an alert, **Transfer timing policy** ("Transfers must take effect on
…", "A … transfer must be submitted by …"). That alert is information only.

### Doing it by hand, consistently

1. Write your rules down once: allowed effective dates, submission deadline for each date,
   quarantine length and when it starts, and any exemptions (age, licence type).
2. Ask clubs to send requests with the **effective date** and the **submission date**.
3. Before approving, check the date against the rules. Reject what does not fit, and tell the club
   why; the system sends no message.
4. For a quarantine, keep a list of transferred competitors with their first allowed start date,
   and check it against entries before each competition.

---

## Auditing a transfer afterwards

| To see | Look at |
|---|---|
| Who owns a team now | The club's **Teams & integration** → **Teams owned by the organization** |
| Transfers still waiting | **Pending transfers** on the owning club |
| A licence club change | The **Cancelled** licence with "[Replaced by license #… organization changed]", and the new licence |
| Representation history | The club's **Transfers** tab (licence rows and Temporary rows, with status, date and reason) |
| A registration blocked because of a club | **Members → Enforcement log** (point **registration**) |

**Not visible to federation staff:**

- Past approved, rejected or ended ownership transfers
- Who pressed Move, Approve or Reject

Vote4Dance keeps both. Ask support if you need them.

Until an ownership history view exists, keep your own decision record for every transfer:

- competitor
- from club, to club
- effective date
- date the request was received
- decision and who made it
- reason or reference

This is the same minimum record as the
[team identity exception](/federation-rankings/manual-workflows/#2-team-identity-exception).

---

## When a club leaves the federation

Removing a club from your federation, or the club detaching itself, does **not** move its teams,
licences or pending transfers.

- New transfer requests from that club are refused ("Transfers must stay within one federation").
- An approved transfer with a future date **still takes effect** on its date.

Before removing a club:

1. Move or release its owned teams
2. Decide its pending transfers
3. Reissue or cancel its licences

A club that still owns teams cannot be deleted: "The organization still owns competitors —
transfer or retire them first". A club with representation history can only be retired, not
deleted.

---

## Complete checklists

### A couple moves to a new club

For couples created by the result import, see
[Couples created by the result import](#couples-created-by-the-result-import). For other couples:

1. Reissue **both** partners' dancer licences to the new club (**Change organization** on each)
2. If the couple is club-owned: **Move** it to the new club. For a couple going independent,
   **Release to independent**.
3. If neither partner has an active dancer licence: **Assign organization** on the new club's
   Transfers tab instead of step 1
4. Tell the dancers to **Join organization** at the new club and leave the old one. Registration
   club choice uses membership.
5. Record the decision
6. Check upcoming entries: existing ones still show the old club

### A formation moves to a new club

1. Check the effective date against your rules
2. **Approve** the owning club's request, or **Move** it yourself from the owning club's page
3. If the class requires members licensed through the owning club: reissue the members' licences
   to the new club, **from the effective date**. A reissue always starts today, so do it on the
   day the move takes effect, not before.
4. Tell both clubs. The new club should review the lineup, and existing entries keep the old
   club's name.
5. Record the decision

---

## Troubleshooting

### "The Action Center says a representation change is waiting, but I can't find it"

The counter opens the club list. Pending transfers are listed on the **owning club's** page, under
**Teams & integration → Pending transfers**. Open the clubs that own groups and formations.

### "I can't find Assign organization"

You are probably a **Manager**. These actions need **Administrator** or **Owner**. The Transfers
tab says so where the button would be.

### "This row can't be changed here"

You acted on a row that isn't a **Temporary** representation row, or tried to decide something
that isn't a club's transfer request. Reload the page: the row may have changed since you opened
it.

### "We moved the team but the results still show the old club"

Entries keep the club they were registered under. Only entries made after the move show the new
club.

### "The couple has moved club, but the ranking still shows the old club"

The ranking shows the couple's **name**, and the club tag in brackets is part of it. Rename the
couple: **Rename competitor** on the club's **Transfers** tab. See
[Couples created by the result import](#couples-created-by-the-result-import).

### "The club changed, but the couple still represents the old club"

Representation follows the majority of the members' **active dancer licences**. Check that both
partners' licences were reissued. A Temporary row does not override a licence.

### "The new club can't register the formation"

If the error is "All members must be licensed through the owning organization for this class",
reissue the members' licences to the new club. If the club cannot see the team at all, check the
move actually happened: a future-dated transfer only applies in the 03:10 run on its date.

### "A dancer left the club but is still in its formation"

Leaving a club does not change any lineup. The owning club's coaches remove the dancer from the
team.

### "The club wants to cancel a transfer request"

Clubs cannot withdraw requests. **Reject** it, and ask the club to send a new one if they still
want the move later.

---

## Related

- [Federation admin](/federation-licenses/federation-admin/): licences, issuers and organization
  approval
- [Federation Staff Roles](/federation/staff-roles/): what Administrator and Manager can do
- [Manual Workflows](/federation-rankings/manual-workflows/): ranking carryover exceptions after a
  club change
- [Organization admin](/federation-licenses/organization-admin/): the club side of licences
