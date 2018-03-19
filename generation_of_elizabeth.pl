%facts
male(george).
male(philip).
male(charles).
male(mark).
male(andrew).
male(edward).
male(william).
male(harry).
male(timothy).
male(mike).
male(viscount).
male(peter).
female(louise).
female(elizabeth).
female(camilla).
female(diana).
female(anne).
female(zara).
female(beatrice).
female(eugenie).
female(catherine).
female(autumn).
female(charlotte).
female(savannah).
female(mia).
female(isla).
female(sophie).
female(sarah).
parent(elizabeth,charles).
parent(elizabeth,anne).
parent(elizabeth,andrew).
parent(elizabeth,edward).
parent(philip,charles).
parent(philip,anne).
parent(philip,andrew).
parent(philip,edward).
parent(diana,william).
parent(diana,harry).
parent(charles,william).
parent(charles,harry).
parent(anne,peter).
parent(anne,zara).
parent(mark,peter).
parent(mark,zara).
parent(andrew,beatrice).
parent(andrew,eugenie).
parent(sarah,beatrice).
parent(sarah,eugenie).
parent(edward,viscount).
parent(edward,louise).
parent(sophie,viscount).
parent(sophie,louise).
parent(william,goerge).
parent(william,charlotte).
parent(catherine,goerge).
parent(catherine,charlotte).
parent(peter,savannah).
parent(peter,isla).
parent(autumn,savannah).
parent(autumn,isla).
parent(zara,mia).
parent(mike,mia).
couple(philip,elizabeth).
couple(charles,diana).
couple(charles,camilla).
couple(mark,anne).
couple(andrew,sarah).
couple(william,catherine).
couple(peter,autumn).
couple(mike,zara).
couple(edward,sophie).
couple(timothy,anne).


%Rules
father(X,Y):- parent(X,Y),male(X).
mother(X,Y):- father(Z,Y),couple(Z,X).
brother(X,Y):- father(Z,X),father(Z,Y),male(X),X\=Y.
sister(X,Y):- father(Z,X),father(Z,Y),female(X),X\=Y.
daughter(X,Y):- father(Y,X),female(X).
son(X,Y):- father(Y,X),male(X).

grandchild(X,Y):- (father(Z,X)|mother(Z,X)),parent(Y,Z).
great_grandparents(X,Y):- parent(U,Y),parent(V,U),parent(X,V).

aunt(X,Y):- parent(Z,Y),sister(X,Z).
uncle(X,Y):- parent(Z,Y),brother(X,Z).
first_cousin(X,Y):- parent(Z,X),(aunt(Z,Y)|uncle(Z,Y)).

sister_in_law(X,Y):- (couple(Z,Y)|couple(Y,Z)),sister(X,Z).
brother_in_law(X,Y):- (couple(Z,Y)|couple(Y,Z)),brother(X,Z).



