---
layout: page
title: Getting a license model in place
permalink: /federation/getting-a-license/
parent: Federation
nav_order: 2
---

# Federation getting a license model in place

For the federation, this step is not about buying one personal license. It's about **defining how licenses will work for everyone else** — your dancers, schools, and officials.

## What this step is for

You'll:
- Decide whether licenses are required at all for your federation
- Define what license items and categories you offer (if needed)
- Choose your licensing model (self-service, organization-managed, or hybrid)
- Set up payment (if required) via Stripe
- Map licenses to competition classes
- Test the complete workflow before going live with competitors

## Who does this step

A **Federation Administrator** (or the person setting up the federation in Vote4Dance).

## Important: Do you actually need licenses?

**Before starting this step, decide:**

| Question | Answer | Path |
|---|---|---|
| Do your dancers need formal approval/vetting before competing? | Yes → License model | No → Skip this |
| Do you need to collect payment or fees centrally? | Yes → License model | No → Skip |
| Do you need to track who's eligible for each competition? | Yes → License model | No → Skip |

**If you answered NO to all:**
- You don't need formal licenses
- Dancers can register without approval
- Skip to next federation setup steps

**If you answered YES to any:**
- Continue with licensing setup below

## Understanding license models

### Model 1: Self-Service (Dancers apply directly)

**Used when:**
- Dancers apply and pay for their own licenses
- No organization involvement in licensing
- Examples: Open/pro level competitions, independent dancers

**Process:**
```
Dancer → "I need a license" → Applies directly in Vote4Dance
→ Pays via Stripe → Automatically approved or manual approval
```

**Federation admin's job:**
- Define license items (e.g., "Open Division $50", "U18 Division $75")
- Decide approval (automatic vs. manual)
- Map which dancers can use which items

### Model 2: Organization-Managed (Schools/clubs apply on behalf of members)

**Used when:**
- Schools/clubs hold institutional licenses
- Examples: School teams, studios, competitive groups

**Process:**
```
School admin → "25 dancers need licenses" → Applies for team license
→ School pays → Automatically approved or manual approval
→ Dancers see license in their account
```

**Federation admin's job:**
- Define license items for organizations (e.g., "High School Team License")
- Approve which schools/clubs are eligible to apply
- Decide if payment is per-team or per-member

### Model 3: Hybrid (Either dancers or organizations can apply)

**Used when:**
- Dancers have a choice
- Examples: "Buy individual licenses OR join a school's team license"

**Process:**
```
Dancer → CHOICE → 
  Option A: Apply directly (self-service)
  Option B: Let their school apply (organization)
```

**Federation admin's job:**
- Define items for both self-service AND organization workflows
- Explain to users when to choose which path

## Step-by-step: Set up your licensing model

### Step 1: Decide your model

**Choose one:**
- [ ] Self-Service only (dancers apply directly)
- [ ] Organization-Managed only (schools apply for members)
- [ ] Hybrid (both available)

**Write this down** — you'll need it for configuration.

### Step 2: Define your license items

License items are the specific things you're offering. Examples:

**Self-Service example items:**
```
• U10-U12 Season License — covers 2026 season, all comps — $50
• U13-U15 Season License — covers 2026 season, all comps — $75
• Open Division Season License — covers 2026 season, all comps — $100
• Single Competition Pass — one event only — $15
• Officials License — judges/scrutineers — $25
```

**Organization-managed example items:**
```
• High School Team License — unlimited members, season-wide — $500
• Independent Studio License — unlimited members, season — $300
• Affiliate Group License — for non-schools — $200
```

**For your federation:**

1. List the types of participants (Dancers, Schools, Studios, Officials, etc.)
2. For each type, list what they need to compete:
   - "U10 dancers need U10 Annual License"
   - "Schools need High School Team License"
   - "Officials need Official License"
3. Decide the pricing for each
4. Document this clearly

### Step 3: Configure in Vote4Dance

To set up these items in the system:

1. Sign in to Vote4Dance federation admin
2. Go to **Federation Settings**
3. Look for **Licenses**, **License Model**, or **License Items**
4. Click **+ Add License Item** or **Create Item**
5. For each item, enter:

| Field | What to Enter | Example |
|---|---|---|
| **Item Name** | Display name for dancers/schools | "U10-U12 Season License" |
| **Code** | Short internal identifier | "U10_SEASON_2026" |
| **Category** | Who this is for | "Dancer" or "Organization" or "Official" |
| **Type** | Season-wide or single-event | "Season" or "Competition" |
| **Cost** | Price (or 0 for free) | "50" = $50 |
| **Expiration** | When this license expires | "12/31/2026" |
| **Description** | What dancers see | "Valid for all competitions in 2026 season" |
| **Approval Required** | Auto-approve or manual? | Auto, or Manual Review |

6. Click **Save Item**
7. Repeat for each license item you want to offer

### Step 4: Enable payment (if you're charging)

If any license items cost money:

1. Go to Federation Settings → **Payment** or **Stripe**
2. Click **Connect Stripe Account**
3. Click **Connect to Stripe**
4. You'll go to Stripe.com
5. Sign in with your Stripe account (create one if needed)
6. Authorize Vote4Dance to process payments
7. Return to Vote4Dance
8. Confirmation: "Stripe connected" should show

### Step 5: Configure approval workflow

Decide how licenses get approved:

**Option A: Automatic approval**
- Applies immediately when payment (if any) completes
- For: Low-friction competitions, open divisions
- Configuration: Set each item to "Auto-Approve"

**Option B: Manual approval**
- Federation admin reviews each application
- For: Vetting required, verification needed
- Configuration: Set each item to "Manual Review"
- Task: You (federation admin) will review applications and click approve/reject

**Option C: Mixed**
- Some items auto-approve, others need review
- Example: Self-service licenses auto-approve, but organization licenses need approval
- Configuration: Set each item individually as needed

### Step 6: Map licenses to competitions (if required)

Some federations say "You need License Type X to compete in Competition Y."

**To set this up:**

1. Go to your competition
2. Look for **Required Licenses** or **License Requirements**
3. Check the box for licenses required
4. Save

**Example:**
```
Northeast Regional Championship 2026
├─ U10 Division: Requires "U10-U12 License"
├─ U13 Division: Requires "U13-U15 License"  
└─ Open Division: Requires "Open License"
```

### Step 7: Test the full workflow

**Before announcing to competitors, test everything yourself:**

#### Test 1: Self-Service (if you offer it)

1. Create a test account (or have someone create one)
2. Pretend to be a dancer
3. Sign in, go to Account → Licenses
4. Click "Apply for License"
5. Select your federation and a license item
6. Apply and complete payment (Stripe test card: 4242 4242 4242 4242)
7. Check: Does the license appear with correct status?
8. If manual approval needed: Go back to federation admin, find the application, click approve
9. Check: Does the license status change to Active?

#### Test 2: Organization-Managed (if you offer it)

1. Create a test organization (or have someone create one)
2. Pretend to be a school admin
3. Sign in, go to your org → Licenses
4. Click "Apply for License"
5. Select your federation and organization license item
6. Apply and complete payment (test Stripe card)
7. Check: Does the application appear?
8. Approve it in federation admin
9. Add a test dancer to the organization
10. Have the dancer sign in
11. Check: Does the dancer see the organization's license in their Account → Licenses?

#### Test 3: Real-world scenario

Pick a real teacher or dancer (someone from your community). Ask them:
- "Can you apply for a [your license item]?"
- "How long did it take?"
- "Where did you get confused?"
- "Does the status show as Active now?"

Document their feedback. Fix any confusing steps.

### Step 8: Publish your licensing model

Document for your community:

**Create a page or email explaining:**
- What licenses your federation requires
- Which license type each competitor should apply for (self-service or give to school)
- How long approval takes (usually 1-3 days for manual)
- Cost for each item
- Link to the applying pages
- FAQ: "What if I'm not sure which license I need?"

## Real-world example: Northeast Dance Federation

**Scenario:** Northeast Dance Federation runs spring and fall competitions. They want member schools to get team licenses but allow independent dancers.

**Their setup:**

| Item | Category | Cost | Approval | Notes |
|---|---|---|---|---|
| High School Team License | Organization | $500 | Manual | Approves schools that are existing members |
| Independent Dancer - U10-U12 | Dancer | $50 | Auto | Self-service, auto-approved |
| Independent Dancer - U13-U15 | Dancer | $75 | Auto | Self-service, auto-approved |
| Official License | Official | $25 | Manual | Federation staff manually approves |

**They communicate:**
```
"Spring 2026 Competition

If you're part of a school team:
→ Your school coach will apply for a High School Team License
→ It covers all team members
→ Cost: $500 for the whole team
→ You don't pay individually

If you're an independent dancer:
→ Go to the Public app
→ Account → Licenses
→ Apply for your age level (U10-U12 or U13-U15)
→ Pay $50 or $75
→ Automatically approved
→ Good for whole season

If you're a judge:
→ Contact federation directly
→ We'll send you an Official License
→ $25, good for whole season
```

## Troubleshooting

### "I added license items but dancers don't see them"

1. Verify the items are in the correct federation
2. Verify the items have "Active" status (not Draft)
3. Verify dancers are searching the right federation
4. Sometimes there's a cache delay — try again in 5 minutes

### "I test-applied but payment wouldn't go through"

1. Use Stripe test card: **4242 4242 4242 4242**
2. Any future date (e.g., 12/25)
3. Any 3-digit CVC (e.g., 123)
4. If it still fails, check Stripe is connected (go to Payment settings)

### "Dancers can apply but approval is stuck 'Pending'"

1. If you chose Manual approval, you must manually review (federation admin)
2. Go to Federation Settings → **Applications** or **Pending Licenses**
3. Find the application
4. Click **Approve** or **Reject**
5. Status updates immediately

### "I want to change an item after people already applied"

1. Generally OK: Change name, description
2. **DO NOT** change the cost after applications (creates confusion)
3. Create a new item instead for the new price/terms
4. Migrate existing applications (contact Vote4Dance support if needed)

## When you're ready

Your licensing model is ready to go live when:
- ✓ All license items are configured
- ✓ Payment (Stripe) is connected (if charging)
- ✓ Approval workflow is set (auto or manual)
- ✓ End-to-end test completed successfully
- ✓ Dancers/schools know which license item to apply for
- ✓ You've communicated the process to your community

**Next:** Promote the license info to your competitors and open registration
