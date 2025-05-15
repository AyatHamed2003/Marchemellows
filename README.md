# Dart Data Structures Challenges

This repository contains solutions to six Dart programming challenges related to **Stacks** and **Linked Lists**. Each challenge is implemented in a separate Dart file.

---

## Stack Challenges

### 1. Challenge One - Reverse a List (`challenge_one.dart`)

**Description**:  
This challenge reverses a list of integers using a stack.

**Logic**:
- Push all elements to a stack.
- Pop them out to form the reversed list.

---

### 2. Challenge Two - Balanced Parentheses (`challenge_two.dart`)

**Description**:  
This challenge checks whether a string of parentheses is balanced.

**Logic**:
- Use a stack to track opening brackets.
- Match each closing bracket with the top of the stack.
- If stack is empty at the end, it's balanced.

---

## Linked List Challenges

### 3. Challenge Three - Print Linked List in Reverse (`challenge_three.dart`)

**Description**:  
Print the elements of a linked list in reverse using **recursion**.

**Logic**:
- Recursively go to the end of the list.
- Print elements during the unwinding phase.

---

### 4. Challenge Four - Find the Middle Node (`challenge_four.dart`)

**Description**:  
Find the middle node of a linked list.

**Logic**:
- Use two pointers:
  - Slow moves one step.
  - Fast moves two steps.
- When fast reaches the end, slow is in the middle.

---

### 5. Challenge Five - Reverse a Linked List (`challenge_five.dart`)

**Description**:  
Reverse the direction of a linked list.

**Logic**:
- Use three pointers: `previous`, `current`, and `next`.
- Change the direction of the `next` pointer in each iteration.

---

### 6. Challenge Six - Remove All Occurrences (`challenge_six.dart`)

**Description**:  
Remove all nodes that contain a specific value from a linked list.

**Logic**:
- Skip all nodes at the start that have the target value.
- Traverse the list and bypass any matching nodes.

---

## How to Run

To run any file:

```bash
dart run challenge_one.dart
