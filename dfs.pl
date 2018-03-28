%Taking the input of the edges
edge('A','B').
edge('B','C').
edge('B','D').
edge('D','E').
edge('D','F').
edge('F','G').

%The main process
process(S,G):- dfs_path(S,G,[]).



%Method for printing the desired list
print_list([]).
print_list([H|T]):- print(H),print_list(T).



%The path searching follows
dfs_path(G,G,L):- print_list([G|L]).
dfs_path(S,G,L):- edge(S,X), dfs_path(X,G,[S|L]).




