# LogicBot 🤖

A learning project exploring Prolog, symbolic AI, and logical reasoning through a small virtual robot world.

The project is developed step by step to understand how facts and rules represent knowledge and how Prolog answers queries.

## Project status

Early development. The current version describes an apartment and determines which rooms are directly connected by a door.

## Current features

- Four rooms represented by `room/1` facts.
- Three doors represented by `door/2` facts.
- Bidirectional connections derived using `connected/2` rules.
- Queries with variables to explore the apartment through backtracking.

The hallway has a door to each of the kitchen, bedroom, and living room. Each door is recorded once. The two `connected/2` rules allow the connection to be queried in either direction.

## Requirements

Developed with SICStus Prolog 4.10.1 on macOS.

## Running the project

In a terminal, change to the project directory. If the project is in your home folder, run the following.

```bash
cd ~/LogicBot
```

Start SICStus Prolog using the path to your installation. The development setup uses the following executable.

```bash
/usr/local/sicstus4.10.1/bin/sicstus
```

At the SICStus prompt `| ?-`, load the file.

```prolog
consult('logicbot.pl').
```

Keep the filename spelling consistent when loading the file.

## Example queries

List the rooms. Enter `;` followed by Enter to request another answer.

```prolog
room(Room).
```

The answers are `kitchen`, `bedroom`, `living_room`, and `hallway`.

Find the rooms connected to the hallway by the recorded door facts.

```prolog
door(hallway, Room).
```

The answers are `kitchen`, `bedroom`, and `living_room`.

Check the connection in either direction. Both queries succeed.

```prolog
connected(kitchen, hallway).
connected(hallway, kitchen).
```

Enter each query separately. SICStus may display `true ?` when a solution has been found and an alternative remains to be explored. Press Enter to accept that solution.

## Planned development

- Represent the robot's location and objects in the apartment.
- Find routes through multiple rooms.
- Plan actions to reach a goal.
- Handle closed doors and obstacles.
- Explain the reasoning behind a route or decision.

## Learning focus

Knowledge representation, facts, rules, queries, unification, and backtracking. Recursion and planning will be explored as the project develops.