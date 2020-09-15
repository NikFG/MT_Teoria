$d = '1234567890'

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
    10 soma7
    11 soma8
    12 soma9
    13 voltaCabecote 1
    14 rejeita
    15 aceita
    16 inverteResultado 15
fim main

inicio copiaX 0
	0 removeBranco 1
	1 retorne
fim copiaX

inicio removeBrancoY 0
	0 retorne
fim removeBrancoY

inicio removeBrancoZ 0
	0 retorne
fim removeBrancoZ

inicio soma0
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
    3 soma1
fim soma0

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
    3 Y _ i -- 2 Y g i
    3 Y * d -- 3 Y * i
fim soma9

X:15+9=
Y:1x+x=[g]
Z:15+9=4[]













;X:10+13=[]
;Y:_23[x]+xx=
;Z:10+13[=]32
;
;1 Y 3 e - 2 
;2 Y + e - 3
;2 Y $d e - 2
;3 Y 0 i - 4 Z 3 d
;3 Y 1

inicio voltaCabecote 0
	0 retorne ; mover pra esquerda e ver se é branco, se for, gg
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

