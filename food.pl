food(apple).
food(chicken).
food(X):- eat(X),not_killed_by(X).

bill_eat(peanuts).
eat(peanuts).
not_killed_by(peanuts).



jhon_eat(X):- food(X).
jhon_likes(X):-food(X).
sue_eat(X):-bill_eat(X).
jhon_and_sue_eat(X):- jhon_eat(X),sue_eat(X).

