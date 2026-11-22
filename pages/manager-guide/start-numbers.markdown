---
layout: page
title: Start numbers
description: "Give participants their start numbers: number one class or the whole competition, choose how the series runs, and print the numbers."
permalink: /manager-guide/start-numbers/
parent: Registration and sales
nav_order: 5
---

# Start numbers

For organizers and their helpers who give the participants their start numbers. Here you number one class or the whole competition, choose how the series runs, and print the numbers.

Assign start numbers after [the import](/manager-guide/entries-and-participants/#updateimport-participants) and **before** you add participants to rounds. Once a participant of the class is in a round (for the whole competition: any participant), numbering is refused with the message "Cannot delete participant - it has already been added to the competition. Please delete participants from the rounds in question first."

1. Open `Manager → Competition → Participants`.
2. Press **Assign start numbers** at the top of the page to number the whole competition, or **Assign start numbers** in the footer of a class to number that class only. The button in a class is greyed out while participants are ticked.
3. Set the options.
4. Press **Apply**.
5. Press **Print start number** at the top of the page. The print page opens in a new tab.

| Option | What it does |
|---|---|
| **Start with number** | The first number given out. 10 by default. It can be as low as 1; below 10 the dialog warns that single-digit numbers can be mistaken for placements at the prize ceremony. |
| **Start each class on an even ten** | **Enable** by default: every class after the first jumps up to the next ten. |
| **Free numbers between classes** | Numbers left unused before the next class starts. 3 by default; 0 to 100. |
| **Reuse numbers** | **Enable** by default: a dancer keeps the same number across classes, also when you number one class at a time. |
| **Randomize order** | **Enable** by default: the participants of a class get their numbers in a random order. |

To number the whole competition in one unbroken series, set **Start each class on an even ten** to **Disabled** and **Free numbers between classes** to 0. With **Reuse numbers** still on **Enable**, participants who already have a number keep it, so the series will not be continuous; the dialog warns about this. Delete the start numbers first, or set **Reuse numbers** to **Disabled**. The red **Delete** button in the dialog deletes the start numbers of the class, or of the whole competition.

A cancelled participant gets no start number. If it had one, numbering takes it away.

## Printing one number again

When a participant has lost a number or it is damaged, print that one number again:

- **In Manager:** open the participant on `Manager → Competition → Participants` and press the printer button at the top of the panel.
- **In Scrutineer (Beta), during the event:** open **Participants** under **Live** and search for the participant by name or start number. In the **⋮** menu of the entry, choose **Print start number**. The print page opens in a new tab with that number, and **Live** stays open where you were. A withdrawn entry, or one without a number, has no **Print start number**.

## Numbering one class at a time

When you number one class, the numbers in the other classes stay as they are, and the class is numbered around them:

- With **Reuse numbers** on **Enable**, a couple that already has a number in another class gets the same number in this class. A couple with 16 in Juniors gets 16 in Juniors Slow too.
- A number another couple holds in another class is never given out as a new number.
- With **Reuse numbers** on **Enable**, a participant who holds a number that belongs to another couple gets a new number, so two couples don't share one.

A couple is recognised as the same in two classes by the leader of its dance team, or by the person ID of its first dancer.

In Scrutineer (Beta), the options have other names: **Start each class on a round ten** and **Keep a dancer's number across classes**. The dialog also asks **Who gets a new number**:

- **Only entries without a number** gives numbers only to the participants who have none. Everyone else keeps their number, whatever **Keep a dancer's number across classes** is set to.
- **Everyone, from scratch** gives every participant in the class, or in the competition, a number again in one step. With **Keep a dancer's number across classes** on, a couple still gets the number it has in another class. Use it to correct a class that was numbered before its couples had numbers in their other classes.

In Scrutineer (Beta), **Assign start numbers** also has **Numbers to skip**: numbers that are never given out, for example numbers a club keeps for its own dancers. Separate them with commas; a range such as `100-104` skips every number in it, so `13, 66, 100-104` leaves out 13, 66 and 100 to 104. The numbers line at the bottom of the dialog shows the result before you confirm. A participant who already has one of these numbers keeps it. If the round ten a class would start on is in the list, the class starts on the next round ten that isn't. The field is empty each time you open the dialog, so type the list again for every competition in the event. The classic Manager has no such field.

![Assign start numbers with numbers to skip](/assets/images/start-numbers/numbers-to-skip.png)

## Troubleshooting

| What you see | What it means | What to do |
|---|---|---|
| "Cannot delete participant - it has already been added to the competition. Please delete participants from the rounds in question first." when you assign start numbers | Participants are already in a round. | Assign start numbers before you add participants to rounds. For a late participant, type the **Start number** on the participant itself. |
| A couple has one number in one class and another number in the next class | The class was numbered with **Reuse numbers** on **Disabled**, or before November 2026, when numbering one class did not look at the other classes. | Before anyone is in a round: open **Assign start numbers** in the class, press the red **Delete** button, and assign the class again with **Reuse numbers** on **Enable**. In Scrutineer (Beta), choose **Everyone, from scratch** with **Keep a dancer's number across classes** on. |
