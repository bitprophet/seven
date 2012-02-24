author(tolkien).
author(scalzi).
author(leguin).

book(the_two_towers).
book(the_hobbit).
book(old_mans_war).
book(left_hand).
book(earthsea).

authored(leguin, left_hand).
authored(leguin, earthsea).
authored(scalzi, old_mans_war).
authored(tolkien, the_two_towers).
authored(tolkien, the_hobbit).

books(Author) :- authored(Author, Book).
