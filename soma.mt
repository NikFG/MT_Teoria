$d = '1234567890+-=g'

inicio main 0
    0 copiaX 1
    1 Y = e -- 2 Y * i
    1 Y _ i -- 16 Z * i
    2 Y 0 e -- 3 Y x i
    2 Y 1 e -- 4 Y x i
    2 Y 2 e -- 5 Y x i
    2 Y 3 e -- 6 Y x i
    2 Y 4 e -- 7 Y x i
    2 Y 5 e -- 8 Y x i
    2 Y 6 e -- 9 Y x i
    2 Y 7 e -- 10 Y x i
    2 Y 8 e -- 11 Y x i
    2 Y 9 e -- 12 Y x i
    2 Y x e -- 2 Y * i
    2 Y * e -- 2 Y 14 i
    3 soma0 13
    4 soma1 13
    5 soma2 13
    6 soma3 13
    7 soma4 13
    8 soma5 13
    9 soma6 13
    10 soma7 13
    11 soma8 13
    12 soma9 13
    13 voltaCabecote 1
    14 rejeita
    15 aceita
    16 inverteResultado 15
    17 subtrai0 13
    18 subtrai1 13
    19 subtrai2 13
    20 subtrai3 13
    21 subtrai4 13
    22 subtrai5 13
    23 subtrai6 13
    24 subtrai7 13
    25 subtrai8 13
    26 subtrai9 13
fim main

inicio copiaX 0
	0 removeBrancoY 1
	1 X _ i -- 2 X * e
	1 X * d -- 1 X * i
	2 retorne
fim copiaX

inicio removeBrancoY 0
	0 retorne
fim removeBrancoY

inicio removeBrancoZ 0
	0 retorne
fim removeBrancoZ

inicio soma0 0
	0 Y + e -- 1 Y * i
	0 Y g e -- 3 Y _ i
	0 Y * e -- 0 Y * i
	1 Y 0 e -- 2 Z 0 d
    1 Y 1 e -- 2 Z 1 d
    1 Y 2 e -- 2 Z 2 d
    1 Y 3 e -- 2 Z 3 d
    1 Y 4 e -- 2 Z 4 d
    1 Y 5 e -- 2 Z 5 d
    1 Y 6 e -- 2 Z 6 d
    1 Y 7 e -- 2 Z 7 d
    1 Y 8 e -- 2 Z 8 d
    1 Y 9 e -- 2 Z 9 d
    2 retorne
    3 soma1 2
fim soma0

inicio soma1 0
	0 Y + e -- 1 Y * i
	0 Y g e -- 3 Y _ i
	0 Y * e -- 0 Y * i
	1 Y 0 e -- 2 Z 1 d
    1 Y 1 e -- 2 Z 2 d
    1 Y 2 e -- 2 Z 3 d
    1 Y 3 e -- 2 Z 4 d
    1 Y 4 e -- 2 Z 5 d
    1 Y 5 e -- 2 Z 6 d
    1 Y 6 e -- 2 Z 7 d
    1 Y 7 e -- 2 Z 8 d
    1 Y 8 e -- 2 Z 9 d
    1 Y 9 e -- 4 Z 0 d
    2 retorne
    3 soma2 2
    4 Y _ i -- 2 Y g i
    4 Y * d -- 4 Y * i
fim soma1

inicio soma3 0
	0 Y + e -- 1 Y * i
	0 Y g e -- 3 Y _ i
	0 Y * e -- 0 Y * i
	1 Y 0 e -- 2 Z 3 d
    1 Y 1 e -- 2 Z 4 d
    1 Y 2 e -- 2 Z 5 d
    1 Y 3 e -- 2 Z 6 d
    1 Y 4 e -- 2 Z 7 d
    1 Y 5 e -- 2 Z 8 d
    1 Y 6 e -- 2 Z 9 d
    1 Y 7 e -- 4 Z 0 d
    1 Y 8 e -- 4 Z 1 d
    1 Y 9 e -- 4 Z 2 d
    2 retorne
    3 soma4 2
    4 Y _ i -- 2 Y g i
    4 Y * d -- 3 Y * i
fim soma3

inicio soma6 0
	0 Y + e -- 1 Y * i
	0 Y g e -- 3 Y _ i
	0 Y * e -- 0 Y * i
	1 Y 0 e -- 2 Z 6 d
    1 Y 1 e -- 2 Z 7 d
    1 Y 2 e -- 2 Z 8 d
    1 Y 3 e -- 2 Z 9 d
    1 Y 4 e -- 2 Z 0 d
    1 Y 5 e -- 2 Z 1 d
    1 Y 6 e -- 2 Z 2 d
    1 Y 7 e -- 2 Z 3 d
    1 Y 8 e -- 2 Z 4 d
    1 Y 9 e -- 2 Z 5 d
    2 retorne
    3 soma7 2
    4 Y _ i -- 2 Y g i
    4 Y * d -- 3 Y * i
fim soma6


inicio soma8 0
	0 Y + e -- 1 Y * i
	0 Y g e -- 3 Y _ i
	0 Y * e -- 0 Y * i
	1 Y 0 e -- 2 Z 9 d
    1 Y 1 e -- 2 Z 0 d
    1 Y 2 e -- 2 Z 1 d
    1 Y 3 e -- 2 Z 2 d
    1 Y 4 e -- 2 Z 3 d
    1 Y 5 e -- 2 Z 4 d
    1 Y 6 e -- 2 Z 5 d
    1 Y 7 e -- 2 Z 6 d
    1 Y 8 e -- 2 Z 7 d
    1 Y 9 e -- 2 Z 8 d
    2 retorne
    3 soma9 2
    4 Y _ i -- 2 Y g i
    4 Y * d -- 3 Y * i
fim soma8

inicio soma9 0
	0 Y + e -- 1 Y * i
	0 Y * e -- 0 Y * i
	1 Y 0 e -- 2 Z 9 d
    1 Y 1 e -- 3 Z 0 d
    1 Y 2 e -- 3 Z 1 d
    1 Y 3 e -- 3 Z 2 d
    1 Y 4 e -- 3 Z 3 d
    1 Y 5 e -- 3 Z 4 d
    1 Y 6 e -- 3 Z 5 d
    1 Y 7 e -- 3 Z 6 d
    1 Y 8 e -- 3 Z 7 d
    1 Y 9 e -- 3 Z 8 d
    2 retorne
    3 soma0 2
    4 Y _ i -- 2 Y g i
    4 Y * d -- 3 Y * i
fim soma9

inicio voltaCabecote 0
	0 retorne
fim voltaCabecote

inicio inverteResultado 0
	0 Y x e -- 1 Z * e
	1 Z 0 e -- 1 Y 0 d
    1 Z 1 e -- 1 Y 1 d
    1 Z 2 e -- 1 Y 2 d
    1 Z 3 e -- 1 Y 3 d
    1 Z 4 e -- 1 Y 4 d
    1 Z 5 e -- 1 Y 5 d
    1 Z 6 e -- 1 Y 6 d
    1 Z 7 e -- 1 Y 7 d
    1 Z 8 e -- 1 Y 8 d
    1 Z 9 e -- 1 Y 9 d
    1 Z = i -- 2 Y * i
    2 Y _ d -- 3 Z * d
    2 Y * e -- 2 Y * i
    3 Y 0 d -- 3 Z 0 d
    3 Y 1 d -- 3 Z 1 d
    3 Y 2 d -- 3 Z 2 d
    3 Y 3 d -- 3 Z 3 d
    3 Y 4 d -- 3 Z 4 d
    3 Y 5 d -- 3 Z 5 d
    3 Y 6 d -- 3 Z 6 d
    3 Y 7 d -- 3 Z 7 d
    3 Y 8 d -- 3 Z 8 d
    3 Y 9 d -- 3 Z 9 d
    3 Y * i -- 4 Z * i
    4 retorne
fim inverteResultado

inicio subtrai9 0
    0 Y - e -- 1 Y * i
    0 Y g e -- 3 Y _ i
    0 Y * e -- 0 Y * i
    1 Y 0 e -- 2 Z 9 d
    1 Y 1 e -- 2 Z 8 d
    1 Y 2 e -- 2 Z 7 d
    1 Y 3 e -- 2 Z 6 d
    1 Y 4 e -- 2 Z 5 d
    1 Y 5 e -- 2 Z 4 d
    1 Y 6 e -- 2 Z 3 d
    1 Y 7 e -- 2 Z 2 d
    1 Y 8 e -- 2 Z 1 d
    1 Y 9 e -- 2 Z 0 d
    2 retorne
    3 subtrai8 2
fim subtrai9

inicio subtrai8 0
    0 Y - e -- 1 Y * i
    0 Y g e -- 3 Y _ i
    0 Y * e -- 0 Y * i
    1 Y 0 e -- 2 Z 8 d
    1 Y 1 e -- 2 Z 7 d
    1 Y 2 e -- 2 Z 6 d
    1 Y 3 e -- 2 Z 5 d
    1 Y 4 e -- 2 Z 4 d
    1 Y 5 e -- 2 Z 3 d
    1 Y 6 e -- 2 Z 2 d
    1 Y 7 e -- 2 Z 1 d
    1 Y 8 e -- 2 Z 0 d
    1 Y 9 e -- 2 Z 9 d
    2 retorne
    3 subtrai7 2
fim subtrai8

inicio subtrai7 0
    0 Y - e -- 1 Y * i
    0 Y g e -- 3 Y _ i
    0 Y * e -- 0 Y * i
    1 Y 0 e -- 2 Z 7 d
    1 Y 1 e -- 2 Z 6 d
    1 Y 2 e -- 2 Z 5 d
    1 Y 3 e -- 2 Z 4 d
    1 Y 4 e -- 2 Z 3 d
    1 Y 5 e -- 2 Z 2 d
    1 Y 6 e -- 2 Z 1 d
    1 Y 7 e -- 2 Z 0 d
    1 Y 8 e -- 2 Z 9 d
    1 Y 9 e -- 2 Z 8 d
    2 retorne
    3 subtrai6 2
fim subtrai7


inicio subtrai6 0
    0 Y - e -- 1 Y * i
    0 Y g e -- 3 Y _ i
    0 Y * e -- 0 Y * i
    1 Y 0 e -- 2 Z 6 d
    1 Y 1 e -- 2 Z 5 d
    1 Y 2 e -- 2 Z 4 d
    1 Y 3 e -- 2 Z 3 d
    1 Y 4 e -- 2 Z 2 d
    1 Y 5 e -- 2 Z 1 d
    1 Y 6 e -- 2 Z 0 d
    1 Y 7 e -- 2 Z 9 d
    1 Y 8 e -- 2 Z 8 d
    1 Y 9 e -- 2 Z 7 d
    2 retorne
    3 subtrai5 2
fim subtrai6

inicio subtrai5 0
    0 Y - e -- 1 Y * i
    0 Y g e -- 3 Y _ i
    0 Y * e -- 0 Y * i
    1 Y 0 e -- 2 Z 5 d
    1 Y 1 e -- 2 Z 4 d
    1 Y 2 e -- 2 Z 3 d
    1 Y 3 e -- 2 Z 2 d
    1 Y 4 e -- 2 Z 1 d
    1 Y 5 e -- 2 Z 0 d
    1 Y 6 e -- 2 Z 9 d
    1 Y 7 e -- 2 Z 8 d
    1 Y 8 e -- 2 Z 7 d
    1 Y 9 e -- 2 Z 6 d
    2 retorne
    3 subtrai4 2
fim subtrai5

inicio subtrai4 0
    0 Y - e -- 1 Y * i
    0 Y g e -- 3 Y _ i
    0 Y * e -- 0 Y * i
    1 Y 0 e -- 2 Z 4 d
    1 Y 1 e -- 2 Z 3 d
    1 Y 2 e -- 2 Z 2 d
    1 Y 3 e -- 2 Z 1 d
    1 Y 4 e -- 2 Z 0 d
    1 Y 5 e -- 2 Z 9 d
    1 Y 6 e -- 2 Z 8 d
    1 Y 7 e -- 2 Z 7 d
    1 Y 8 e -- 2 Z 6 d
    1 Y 9 e -- 2 Z 5 d
    2 retorne
    3 subtrai3 2
fim subtrai4

inicio subtrai3 0
    0 Y - e -- 1 Y * i
    0 Y g e -- 3 Y _ i
    0 Y * e -- 0 Y * i
    1 Y 0 e -- 2 Z 3 d
    1 Y 1 e -- 2 Z 2 d
    1 Y 2 e -- 2 Z 1 d
    1 Y 3 e -- 2 Z 0 d
    1 Y 4 e -- 2 Z 9 d
    1 Y 5 e -- 2 Z 8 d
    1 Y 6 e -- 2 Z 7 d
    1 Y 7 e -- 2 Z 6 d
    1 Y 8 e -- 2 Z 5 d
    1 Y 9 e -- 2 Z 4 d
    2 retorne
    3 subtrai2 2
fim subtrai3

inicio subtrai2 0
    0 Y - e -- 1 Y * i
    0 Y g e -- 3 Y _ i
    0 Y * e -- 0 Y * i
    1 Y 0 e -- 2 Z 2 d
    1 Y 1 e -- 2 Z 1 d
    1 Y 2 e -- 2 Z 0 d
    1 Y 3 e -- 2 Z 9 d
    1 Y 4 e -- 2 Z 8 d
    1 Y 5 e -- 2 Z 7 d
    1 Y 6 e -- 2 Z 6 d
    1 Y 7 e -- 2 Z 5 d
    1 Y 8 e -- 2 Z 4 d
    1 Y 9 e -- 2 Z 3 d
    2 retorne
    3 subtrai1 2
fim subtrai2


inicio subtrai1 0
    0 Y - e -- 1 Y * i
    0 Y g e -- 3 Y _ i
    0 Y * e -- 0 Y * i
    1 Y 0 e -- 2 Z 1 d
    1 Y 1 e -- 2 Z 0 d
    1 Y 2 e -- 2 Z 9 d
    1 Y 3 e -- 2 Z 8 d
    1 Y 4 e -- 2 Z 7 d
    1 Y 5 e -- 2 Z 6 d
    1 Y 6 e -- 2 Z 5 d
    1 Y 7 e -- 2 Z 4 d
    1 Y 8 e -- 2 Z 3 d
    1 Y 9 e -- 2 Z 2 d
    2 retorne
    3 subtrai0 2
fim subtrai1

inicio subtrai0 0
    0 Y - e -- 1 Y * i
    0 Y g e -- 3 Y _ i
    0 Y * e -- 0 Y * i
    1 Y 0 e -- 2 Z 0 d
    1 Y 1 e -- 2 Z 9 d
    1 Y 2 e -- 2 Z 8 d
    1 Y 3 e -- 2 Z 7 d
    1 Y 4 e -- 2 Z 6 d
    1 Y 5 e -- 2 Z 5 d
    1 Y 6 e -- 2 Z 4 d
    1 Y 7 e -- 2 Z 3 d
    1 Y 8 e -- 2 Z 2 d
    1 Y 9 e -- 2 Z 1 d
    2 retorne
    3 subtrai9 2
fim subtrai0