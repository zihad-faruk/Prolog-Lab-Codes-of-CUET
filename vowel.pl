vowel:-D=[a,v,e,i,1,4],check(D,0).
check([],Count):-write(Count).

check([H|T],Count):-((H==a),Count1 is Count+1,check(T,Count1));((H==e),Count1 is Count+1,check(T,Count1));((H==i),Count1 is Count+1,check(T,Count1));((H==o),Count1 is Count+1,check(T,Count1));((H==u),Count1 is Count+1,check(T,Count1));check(T,Count).
