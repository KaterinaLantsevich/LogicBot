room(kitchen).
room(bedroom).
room(living_room).
room(hallway).
door(hallway, kitchen).
door(hallway, bedroom).
door(hallway, living_room).


connected(From, To) :- door(To, From).
connected(From, To) :- door(From, To).