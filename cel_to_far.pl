cel_to_far:-write('Enter the temperature in celcius: '),read(X),process(X).
process(stop):- !.
process(N):-Output is ((9/5)*N)+32,write(Output),nl,cel_to_far.
