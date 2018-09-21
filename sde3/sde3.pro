s1([a, c|A], B) :-
	d(A, B).
d(A, B) :-
	s1(A, C), !,
	B=C.
d([a, c|A], A).
s2([a|A], C) :-
	a(A, B),
	c(B, C).
a([a|A], B) :-
	a(A, C), !,
	B=C.
a([a|A], A).
c([c|A], B) :-
	c(A, C), !,
	B=C.
c([c|A], A).
s3(A, C) :-
	g(A, B),
	h(B, C).
g([c|A], B) :-
	g(A, C), !,
	B=C.
g([c|A], A).
h([a|A], B) :-
	h(A, C), !,
	B=C.
h([a|A], A).
none(A) :- not(s1(A,[])),not(s2(A,[])),not(s3(A,[])).
