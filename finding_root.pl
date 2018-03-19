root:- write('Enter the values'),nl,read(A),read(B),read(C),root_func(A,B,C).
root_func(A,B,C):-D is (B*B) - (4*A*C),((D<0) , write("There is no real roots");R1 is    ((-B + sqrt(D)))/(2*A),R2 is ((-B-sqrt(D))/(2*A)),write("First root: "),write(R1),nl,write("2nd root: "),write(R2)).

