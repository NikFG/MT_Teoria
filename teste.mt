$d = 'abcdefghijklmno1234567890+-='

inicio main 0
    0 soma 5
    5 aceita
    6 rejeita
    8 pare
fim main

inicio copiaX 0
    0 X * e -- 1 Z a i
    1 blablabla 2
    2 retorne
fim copiaX

inicio blablabla 0
    0 Y * d -- 1 X b i
    1 retorne
fim blablabla

inicio soma 0
	0 X $d d -- 1 Z $d d ;com erro
	0 X _ d -- 0 Z _ i
	0 X * i -- 5 Z _ i
	1 X $d d -- 1 Z $d d
	1 X + d -- 2 Z + d
	1 X - d -- 2 Z - d
	1 X _ d -- 1 Z _ i
	1 X * i -- 5 Z _ i
	2 X $d d -- 3 Z $d d
	2 X _ d -- 2 Z _ i
	2 X * i -- 5 Z _ i
	3 X $d d -- 3 Z $d d
	3 X = d -- 4 Z = d
	3 X _ d -- 3 Z _ i
	3 X * i -- 5 Z _ i
	4 aceita
	5 rejeita
fim soma