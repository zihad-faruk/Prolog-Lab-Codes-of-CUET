root:- write('Enter the values'),nl,read(A),read(B),read(C),root_func(A,B,C).
cel_to_far:-write('Enter the temperature in celcius: '),read(X),process(X).
volume:-write('Enter the value: '),read(X),vol_func(X).


process(N):-Output is ((9/5)*N)+32,write(Output),nl.
root_func(A,B,C):-D is (B*B) - (4*A*C),((D<0) , write("There is no real roots");R1 is    ((-B + sqrt(D)))/(2*A),R2 is ((-B-sqrt(D))/(2*A)),write("First root: "),write(R1),nl,write("2nd root: "),write(R2)).
vol_func(X):- Vol is X*X*X,Ar is 6*X*X,nl,write('Volume is : '),write(Vol),nl,write('Area is :'),write(Ar).
