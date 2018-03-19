prime:- write('Enter the number you want to check'),read(X),check(X,2).
check(X,X):-write('Prime').
check(X,Y):- Result is mod(X,Y),((Result=0),write('Not prime'));Y1 is Y+1,check(X,Y1).
