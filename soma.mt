$d = '1234567890+-=gx'

inicio main 0
    0 copiaX 40

    40 Y + i -- 13 Y * i
    40 Y - i -- 41 Y * i
    40 Y * i -- 40 Y * e

    42 Y = e -- 43 Y * i
    42 Y g i -- 43 Y * i
    42 Y _ e -- 42 Y * i

    43 Y 0 i -- 17 Y x e!
    43 Y 1 i -- 18 Y x e!
    43 Y 2 i -- 19 Y x e!
    43 Y 3 i -- 20 Y x e!
    43 Y 4 i -- 21 Y x e!
    43 Y 5 i -- 22 Y x e!
    43 Y 6 i -- 23 Y x e!
    43 Y 7 i -- 24 Y x e!
    43 Y 8 i -- 25 Y x e!
    43 Y 9 i -- 26 Y x e!
    43 Y x i -- 27 Y * e!
    43 Y g i -- 44 Y _ e!
    43 Y _ i -- 16 Z 1 i!
    43 Y * i -- 14 Y * i

    1 Y = e -- 2 Y * i
    1 Y g i -- 2 Y * i
    1 Y _ e -- 1 Y * i

    2 Y 0 i -- 3 Y x e
    2 Y 1 i -- 4 Y x e
    2 Y 2 i -- 5 Y x e
    2 Y 3 i -- 6 Y x e
    2 Y 4 i -- 7 Y x e
    2 Y 5 i -- 8 Y x e
    2 Y 6 i -- 9 Y x e
    2 Y 7 i -- 10 Y x e
    2 Y 8 i -- 11 Y x e
    2 Y 9 i -- 12 Y x e
    2 Y x i -- 27 Y * e
    2 Y g i -- 39 Y _ e
    2 Y _ i -- 16 Z 1 i
    2 Y * i -- 14 Y * i

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
    39 somaAux 13
    44 subtraiAux 41
    13 cabecoteCertoY 1
    41 cabecoteCertoY 42
    14 rejeita
    15 aceita
    16 inverteResultado 15
    17 subtrai0 41
    18 subtrai1 41
    19 subtrai2 41
    20 subtrai3 41
    21 subtrai4 41
    22 subtrai5 41
    23 subtrai6 41
    24 subtrai7 41
    25 subtrai8 41
    26 subtrai9 41

    27 Y + i -- 28 Y * e
    27 Y - i -- 28 Y * e
    27 Y x i -- 27 Y * e
    27 Y * i -- 2 Y * i

    ;Este bloco verifica o restante dos números

    28 Y x i -- 28 Y * e
    28 Y _ i -- 16 Y * e
    28 Y 0 i -- 29 Y x e
    28 Y 1 i -- 30 Y x e
    28 Y 2 i -- 31 Y x e
    28 Y 3 i -- 32 Y x e
    28 Y 4 i -- 33 Y x e
    28 Y 5 i -- 34 Y x e
    28 Y 6 i -- 35 Y x e
    28 Y 7 i -- 36 Y x e
    28 Y 8 i -- 37 Y x e
    28 Y 9 i -- 38 Y x e
    28 Y * i -- 2 Y * i


    29 Y * i -- 28 Z 0 d
    30 Y * i -- 28 Z 1 d
    31 Y * i -- 28 Z 2 d
    32 Y * i -- 28 Z 3 d
    33 Y * i -- 28 Z 4 d
    34 Y * i -- 28 Z 5 d
    35 Y * i -- 28 Z 6 d
    36 Y * i -- 28 Z 7 d
    37 Y * i -- 28 Z 8 d
    38 Y * i -- 28 Z 9 d
fim main

inicio copiaX 0
	0 removeBrancoY 1
	1 voltaCabecoteY 2
	2 removeBrancoZ 3
	3 retorne
fim copiaX

inicio cabecoteCertoY 0
    0 Y g i -- 1 Z * i
    0 Y = i -- 1 Z * i
    0 Y * d -- 0 Z * i
    1 retorne
fim cabecoteCertoY

inicio removeBrancoY 0
	0 X _ d -- 0 X * i
	0 X 0 d -- 0 Y 0 d
	0 X 1 d -- 0 Y 1 d
	0 X 2 d -- 0 Y 2 d
	0 X 3 d -- 0 Y 3 d
	0 X 4 d -- 0 Y 4 d
	0 X 5 d -- 0 Y 5 d
	0 X 6 d -- 0 Y 6 d
	0 X 7 d -- 0 Y 7 d
	0 X 8 d -- 0 Y 8 d
	0 X 9 d -- 0 Y 9 d
	0 X + d -- 0 Y + d
	0 X - d -- 0 Y - d
	0 X = d -- 1 Y = d
	1 retorne
fim removeBrancoY

inicio removeBrancoZ 0
    0 Y _ d -- 0 Z * i
    0 Y 0 d -- 0 Z 0 d
    0 Y 1 d -- 0 Z 1 d
    0 Y 2 d -- 0 Z 2 d
    0 Y 3 d -- 0 Z 3 d
    0 Y 4 d -- 0 Z 4 d
    0 Y 5 d -- 0 Z 5 d
    0 Y 6 d -- 0 Z 6 d
    0 Y 7 d -- 0 Z 7 d
    0 Y 8 d -- 0 Z 8 d
    0 Y 9 d -- 0 Z 9 d
    0 Y - d -- 0 Z - d
    0 Y + d -- 0 Z + d
    0 Y = d -- 1 Z = d
    1 retorne
fim removeBrancoZ

inicio somaAux 0
   0 Y + i -- 1 Y * e
   0 Y * i -- 0 Y * e

   1 Y 0 i -- 3 Y 1 i
   1 Y 1 i -- 3 Y 2 i
   1 Y 2 i -- 3 Y 3 i
   1 Y 3 i -- 3 Y 4 i
   1 Y 4 i -- 3 Y 5 i
   1 Y 5 i -- 3 Y 6 i
   1 Y 6 i -- 3 Y 7 i
   1 Y 7 i -- 3 Y 8 i
   1 Y 8 i -- 3 Y 9 i
   1 Y 9 i -- 2 Y 0 e
   1 Y x i -- 1 Y * e
   1 Y _ i -- 2 Y * i

   2 Y _ i -- 3 Y 1 e
   2 Y * i -- 1 Y * i

   3 retorne

  14 Y _ i -- 3 Y g i
  14 Y * d -- 14 Y * i
fim somaAux


inicio soma0 0

    0 Y + i -- 1 Y * e
    0 Y _ d -- 1 Z * i
    0 Y * i -- 0 Y * e

	1 Y 0 i -- 2 Y x i
	1 Y 1 i -- 5 Y x i
	1 Y 2 i -- 6 Y x i
    1 Y 3 i -- 7 Y x i
    1 Y 4 i -- 8 Y x i
    1 Y 5 i -- 9 Y x i
    1 Y 6 i -- 10 Y x i
    1 Y 7 i -- 11 Y x i
    1 Y 8 i -- 12 Y x i
    1 Y 9 i -- 13 Y x i
    1 Y x i -- 1 Y * e
    1 Y _ i -- 3 Z 0 d


    2 Y x i -- 3 Z 0 d
    5 Y x i -- 3 Z 1 d
    6 Y x i -- 3 Z 2 d
    7 Y x i -- 3 Z 3 d
    8 Y x i -- 3 Z 4 d
    9 Y x i -- 3 Z 5 d
    10 Y x i -- 3 Z 6 d
    11 Y x i -- 3 Z 7 d
    12 Y x i -- 3 Z 8 d
    13 Y x i -- 3 Z 9 d

    3 retorne

fim soma0


inicio soma1 0

    0 Y + i -- 1 Y * e
    0 Y _ d -- 1 Z * i
    0 Y * i -- 0 Y * e

    1 Y 0 i -- 2 Y x i
    1 Y 1 i -- 5 Y x i
    1 Y 2 i -- 6 Y x i
    1 Y 3 i -- 7 Y x i
    1 Y 4 i -- 8 Y x i
    1 Y 5 i -- 9 Y x i
    1 Y 6 i -- 10 Y x i
    1 Y 7 i -- 11 Y x i
    1 Y 8 i -- 12 Y x i
    1 Y 9 i -- 13 Y x i
    1 Y x i -- 1 Y * e
    1 Y _ i -- 3 Z 1 d

    2 Y x i -- 3 Z 1 d
    5 Y x i -- 3 Z 2 d
    6 Y x i -- 3 Z 3 d
    7 Y x i -- 3 Z 4 d
    8 Y x i -- 3 Z 5 d
    9 Y x i -- 3 Z 6 d
    10 Y x i -- 3 Z 7 d
    11 Y x i -- 3 Z 8 d
    12 Y x i -- 3 Z 9 d
    13 Y x i -- 14 Z 0 d
    3 retorne


    14 Y _ i -- 3 Y g i
    14 Y * d -- 14 Y * i
fim soma1

inicio soma2 0
    0 Y + i -- 1 Y * e
    0 Y _ d -- 1 Z * i
    0 Y * i -- 0 Y * e

    1 Y 0 i -- 2 Y x i
    1 Y 1 i -- 5 Y x i
    1 Y 2 i -- 6 Y x i
    1 Y 3 i -- 7 Y x i
    1 Y 4 i -- 8 Y x i
    1 Y 5 i -- 9 Y x i
    1 Y 6 i -- 10 Y x i
    1 Y 7 i -- 11 Y x i
    1 Y 8 i -- 12 Y x i
    1 Y 9 i -- 13 Y x i
    1 Y x i -- 1 Y * e
    1 Y _ i -- 3 Z 2 d

    2 Y x i -- 3 Z 2 d
    5 Y x i -- 3 Z 3 d
    6 Y x i -- 3 Z 4 d
    7 Y x i -- 3 Z 5 d
    8 Y x i -- 3 Z 6 d
    9 Y x i -- 3 Z 7 d
    10 Y x i -- 3 Z 8 d
    11 Y x i -- 3 Z 9 d
    12 Y x i -- 14 Z 0 d
    13 Y x i -- 14 Z 2 d

    3 retorne

    14 Y _ i -- 3 Y g i
    14 Y * d -- 14 Y * i
fim soma2

inicio soma3 0

    0 Y + i -- 1 Y * e
    0 Y _ d -- 1 Z * i
    0 Y * i -- 0 Y * e



    1 Y 0 i -- 2 Y x i
    1 Y 1 i -- 5 Y x i
    1 Y 2 i -- 6 Y x i
    1 Y 3 i -- 7 Y x i
    1 Y 4 i -- 8 Y x i
    1 Y 5 i -- 9 Y x i
    1 Y 6 i -- 10 Y x i
    1 Y 7 i -- 11 Y x i
    1 Y 8 i -- 12 Y x i
    1 Y 9 i -- 13 Y x i
    1 Y x i -- 1 Y * e
    1 Y _ i -- 3 Z 3 d

    2 Y x i -- 3 Z 3 d
    5 Y x i -- 3 Z 4 d
    6 Y x i -- 3 Z 5 d
    7 Y x i -- 3 Z 6 d
    8 Y x i -- 3 Z 7 d
    9 Y x i -- 3 Z 8 d
    10 Y x i -- 3 Z 9 d
    11 Y x i -- 14 Z 0 d
    12 Y x i -- 14 Z 1 d
    13 Y x i -- 14 Z 2 d

    3 retorne

    14 Y _ i -- 3 Y g i
    14 Y * d -- 14 Y * i
fim soma3

inicio soma4 0

    0 Y + i -- 1 Y * e
    0 Y _ d -- 1 Z * i
    0 Y * i -- 0 Y * e

    1 Y 0 i -- 2 Y x i
	1 Y 1 i -- 5 Y x i
	1 Y 2 i -- 6 Y x i
    1 Y 3 i -- 7 Y x i
    1 Y 4 i -- 8 Y x i
    1 Y 5 i -- 9 Y x i
    1 Y 6 i -- 10 Y x i
    1 Y 7 i -- 11 Y x i
    1 Y 8 i -- 12 Y x i
    1 Y 9 i -- 13 Y x i
    1 Y x i -- 1 Y * e
    1 Y _ i -- 3 Z 4 d

    2 Y x i -- 3 Z 4 d
    5 Y x i -- 3 Z 5 d
    6 Y x i -- 3 Z 6 d
    7 Y x i -- 3 Z 7 d
    8 Y x i -- 3 Z 8 d
    9 Y x i -- 3 Z 9 d
    10 Y x i -- 14 Z 0 d
    11 Y x i -- 14 Z 1 d
    12 Y x i -- 14 Z 2 d
    13 Y x i -- 14 Z 3 d
    3 retorne

    14 Y _ i -- 3 Y g i
    14 Y * d -- 14 Y * i
fim soma4

inicio soma5 0

   0 Y + i -- 1 Y * e
   0 Y _ d -- 1 Z * i
   0 Y * i -- 0 Y * e


    1 Y 0 i -- 2 Y x i
    1 Y 1 i -- 5 Y x i
    1 Y 2 i -- 6 Y x i
    1 Y 3 i -- 7 Y x i
    1 Y 4 i -- 8 Y x i
    1 Y 5 i -- 9 Y x i
    1 Y 6 i -- 10 Y x i
    1 Y 7 i -- 11 Y x i
    1 Y 8 i -- 12 Y x i
    1 Y 9 i -- 13 Y x i
    1 Y x i -- 1 Y * e
    1 Y _ i -- 3 Z 5 d

    2 Y x i -- 3 Z 5 d
    5 Y x i -- 3 Z 6 d
    6 Y x i -- 3 Z 7 d
    7 Y x i -- 3 Z 8 d
    8 Y x i -- 3 Z 9 d
    9 Y x i -- 14 Z 0 d
    10 Y x i -- 14 Z 1 d
    11 Y x i -- 14 Z 2 d
    12 Y x i -- 14 Z 3 d
    13 Y x i -- 14 Z 4 d

    3 retorne

    14 Y _ i -- 3 Y g i
    14 Y * d -- 14 Y * i
fim soma5

inicio soma6 0

    0 Y + i -- 1 Y * e
    0 Y _ d -- 1 Z * i
    0 Y * i -- 0 Y * e


    1 Y 0 i -- 3 Y x i
	1 Y 1 i -- 5 Y x i
	1 Y 2 i -- 6 Y x i
    1 Y 3 i -- 7 Y x i
    1 Y 4 i -- 8 Y x i
    1 Y 5 i -- 9 Y x i
    1 Y 6 i -- 10 Y x i
    1 Y 7 i -- 11 Y x i
    1 Y 8 i -- 12 Y x i
    1 Y 9 i -- 13 Y x i
    1 Y x i -- 1 Y * e
    1 Y _ i -- 3 Z 6 d

    2 Y x i -- 3 Z 6 d
    5 Y x i -- 3 Z 7 d
    6 Y x i -- 3 Z 8 d
    7 Y x i -- 3 Z 9 d
    8 Y x i -- 14 Z 0 d
    9 Y x i -- 14 Z 1 d
    10 Y x i -- 14 Z 2 d
    11 Y x i -- 14 Z 3 d
    12 Y x i -- 14 Z 4 d
    13 Y x i -- 14 Z 5 d

    3 retorne

    14 Y _ i -- 3 Y g i
    14 Y * d -- 14 Y * i
fim soma6

inicio soma7 0

    0 Y + i -- 1 Y * e
    0 Y _ d -- 1 Z * i
    0 Y * i -- 0 Y * e


    1 Y 0 i -- 2 Y x i
    1 Y 1 i -- 5 Y x i
    1 Y 2 i -- 6 Y x i
    1 Y 3 i -- 7 Y x i
    1 Y 4 i -- 8 Y x i
    1 Y 5 i -- 9 Y x i
    1 Y 6 i -- 10 Y x i
    1 Y 7 i -- 11 Y x i
    1 Y 8 i -- 12 Y x i
    1 Y 9 i -- 13 Y x i
    1 Y x i -- 1 Y * e
    1 Y _ i -- 3 Z 7 d

    2 Y x i -- 3 Z 7 d
    5 Y x i -- 3 Z 8 d
    6 Y x i -- 3 Z 9 d
    7 Y x i -- 14 Z 0 d
    8 Y x i -- 14 Z 1 d
    9 Y x i -- 14 Z 2 d
    10 Y x i -- 14 Z 3 d
    11 Y x i -- 14 Z 4 d
    12 Y x i -- 14 Z 5 d
    13 Y x i -- 14 Z 6 d

    3 retorne

    14 Y _ i -- 3 Y g i
    14 Y * d -- 14 Y * i
fim soma7

inicio soma8 0

    0 Y + i -- 1 Y * e
    0 Y _ d -- 1 Z * i
    0 Y * i -- 0 Y * e



	1 Y 0 i -- 2 Y x i
    1 Y 1 i -- 5 Y x i
    1 Y 2 i -- 6 Y x i
    1 Y 3 i -- 7 Y x i
    1 Y 4 i -- 8 Y x i
    1 Y 5 i -- 9 Y x i
    1 Y 6 i -- 10 Y x i
    1 Y 7 i -- 11 Y x i
    1 Y 8 i -- 12 Y x i
    1 Y 9 i -- 13 Y x i
    1 Y x i -- 1 Y * e
    1 Y _ i -- 3 Z 8 d

    2 Y x i -- 3 Z 8 d
    5 Y x i -- 3 Z 9 d
    6 Y x i -- 14 Z 0 d
    7 Y x i -- 14 Z 1 d
    8 Y x i -- 14 Z 2 d
    9 Y x i -- 14 Z 3 d
    10 Y x i -- 14 Z 4 d
    11 Y x i -- 14 Z 5 d
    12 Y x i -- 14 Z 6 d
    13 Y x i -- 14 Z 7 d

    3 retorne

    14 Y _ i -- 3 Y g i
    14 Y * d -- 14 Y * i
fim soma8

inicio soma9 0

    0 Y + i -- 1 Y * e
    0 Y _ d -- 1 Z * i
    0 Y * i -- 0 Y * e

    1 Y 0 i -- 2 Y x i
    1 Y 1 i -- 5 Y x i
    1 Y 2 i -- 6 Y x i
    1 Y 3 i -- 7 Y x i
    1 Y 4 i -- 8 Y x i
    1 Y 5 i -- 9 Y x i
    1 Y 6 i -- 10 Y x i
    1 Y 7 i -- 11 Y x i
    1 Y 8 i -- 12 Y x i
    1 Y 9 i -- 13 Y x i
    1 Y x i -- 1 Y * e
    1 Y _ i -- 3 Z 9 d

    2 Y x i -- 3 Z 9 d
    5 Y x i -- 14 Z 0 d
    6 Y x d -- 14 Z 1 d
    7 Y x i -- 14 Z 2 d
    8 Y x i -- 14 Z 3 d
    9 Y x i -- 14 Z 4 d
    10 Y x i -- 14 Z 5 d
    11 Y x i -- 14 Z 6 d
    12 Y x i -- 14 Z 7 d
    13 Y x i -- 14 Z 8 d

    14 Y _ i -- 3 Y g i
    14 Y * d -- 14 Z * i
    3 retorne
fim soma9

inicio voltaCabecoteY 0
	0 Y * e -- 1 X * i
	1 Y _ d -- 2 X * i
	1 Y * e -- 1 X * i
	2 retorne
fim voltaCabecoteY




inicio inverteResultado 0
    0 Z = i -- 1 Z * d!
    0 Z * i -- 0 Z * e!

    1 Z 0 d -- 1 Y 0 d
    1 Z 1 d -- 1 Y 1 d
    1 Z 2 d -- 1 Y 2 d
    1 Z 3 d -- 1 Y 3 d
    1 Z 4 d -- 1 Y 4 d
    1 Z 5 d -- 1 Y 5 d
    1 Z 6 d -- 1 Y 6 d
    1 Z 7 d -- 1 Y 7 d
    1 Z 8 d -- 1 Y 8 d
    1 Z 9 d -- 1 Y 9 d
    1 Z _ i -- 2 Y * i

    2 Z = d -- 3 Y * e
    2 Z * e -- 2 Z * i

    3 Y 0 e -- 3 Z 0 d
    3 Y 1 e -- 3 Z 1 d
    3 Y 2 e -- 3 Z 2 d
    3 Y 3 e -- 3 Z 3 d
    3 Y 4 e -- 3 Z 4 d
    3 Y 5 e -- 3 Z 5 d
    3 Y 6 e -- 3 Z 6 d
    3 Y 7 e -- 3 Z 7 d
    3 Y 8 e -- 3 Z 8 d
    3 Y 9 e -- 3 Z 9 d
    3 Y _ i -- 4 Z * i

    4 retorne
fim inverteResultado

inicio subtrai9 0
    0 Y - i -- 1 Y * e
    0 Y _ d -- 1 Z * i
    0 Y * i -- 0 Y * e

    1 Y 0 i -- 2 Y x i
    1 Y 1 i -- 5 Y x i
    1 Y 2 i -- 6 Y x i
    1 Y 3 i -- 7 Y x i
    1 Y 4 i -- 8 Y x i
    1 Y 5 i -- 9 Y x i
    1 Y 6 i -- 10 Y x i
    1 Y 7 i -- 11 Y x i
    1 Y 8 i -- 12 Y x i
    1 Y 9 i -- 13 Y x i
    1 Y x i -- 1 Y * e
    1 Y _ i -- 3 Z 0 d


    2 Y x i -- 14 Z 1 d
    5 Y x i -- 14 Z 2 d
    6 Y x i -- 14 Z 3 d
    7 Y x i -- 14 Z 4 d
    8 Y x i -- 14 Z 5 d
    9 Y x i -- 14 Z 6 d
    10 Y x i -- 14 Z 7 d
    11 Y x i -- 14 Z 8 d
    12 Y x i -- 14 Z 9 d
    13 Y x i -- 3 Z 0 d

    3 retorne

    14 Y _ i -- 3 Y g i
    14 Y * d -- 14 Y * i
fim subtrai9

inicio subtrai8 0
    0 Y - i -- 1 Y * e
    0 Y _ d -- 1 Z * i
    0 Y * i -- 0 Y * e

    1 Y 0 i -- 2 Y x i
    1 Y 1 i -- 5 Y x i
    1 Y 2 i -- 6 Y x i
    1 Y 3 i -- 7 Y x i
    1 Y 4 i -- 8 Y x i
    1 Y 5 i -- 9 Y x i
    1 Y 6 i -- 10 Y x i
    1 Y 7 i -- 11 Y x i
    1 Y 8 i -- 12 Y x i
    1 Y 9 i -- 13 Y x i
    1 Y x i -- 1 Y * e
    1 Y _ i -- 3 Z 1 d

    2 Y x i -- 14 Z 2 d
    5 Y x i -- 14 Z 3 d
    6 Y x i -- 14 Z 4 d
    7 Y x i -- 14 Z 5 d
    8 Y x i -- 14 Z 6 d
    9 Y x i -- 14 Z 7 d
    10 Y x i -- 14 Z 8 d
    11 Y x i -- 14 Z 9 d
    12 Y x i -- 3 Z 0 d
    13 Y x i -- 3 Z 1 d
    3 retorne

    14 Y _ i -- 3 Y g i
    14 Y * d -- 14 Y * i
fim subtrai8

inicio subtrai7 0
    0 Y - i -- 1 Y * e
    0 Y _ d -- 1 Z * i
    0 Y * i -- 0 Y * e

    1 Y 0 i -- 2 Y x i
    1 Y 1 i -- 5 Y x i
    1 Y 2 i -- 6 Y x i
    1 Y 3 i -- 7 Y x i
    1 Y 4 i -- 8 Y x i
    1 Y 5 i -- 9 Y x i
    1 Y 6 i -- 10 Y x i
    1 Y 7 i -- 11 Y x i
    1 Y 8 i -- 12 Y x i
    1 Y 9 i -- 13 Y x i
    1 Y x i -- 1 Y * e
    1 Y _ i -- 3 Z 1 d

    2 Y x i -- 14 Z 3 d
    5 Y x i -- 14 Z 4 d
    6 Y x i -- 14 Z 5 d
    7 Y x i -- 14 Z 6 d
    8 Y x i -- 14 Z 7 d
    9 Y x i -- 14 Z 8 d
    10 Y x i -- 14 Z 9 d
    11 Y x i -- 3 Z 0 d
    12 Y x i -- 3 Z 1 d
    13 Y x i -- 3 Z 2 d
    3 retorne


    14 Y _ i -- 3 Y g i
    14 Y * d -- 14 Y * i
fim subtrai7


inicio subtrai6 0
    0 Y - i -- 1 Y * e
    0 Y _ d -- 1 Z * i
    0 Y * i -- 0 Y * e

    1 Y 0 i -- 2 Y x i
    1 Y 1 i -- 5 Y x i
    1 Y 2 i -- 6 Y x i
    1 Y 3 i -- 7 Y x i
    1 Y 4 i -- 8 Y x i
    1 Y 5 i -- 9 Y x i
    1 Y 6 i -- 10 Y x i
    1 Y 7 i -- 11 Y x i
    1 Y 8 i -- 12 Y x i
    1 Y 9 i -- 13 Y x i
    1 Y x i -- 1 Y * e
    1 Y _ i -- 3 Z 1 d

    2 Y x i -- 14 Z 4 d
    5 Y x i -- 14 Z 5 d
    6 Y x i -- 14 Z 6 d
    7 Y x i -- 14 Z 7 d
    8 Y x i -- 14 Z 8 d
    9 Y x i -- 14 Z 9 d
    10 Y x i -- 3 Z 0 d
    11 Y x i -- 3 Z 1 d
    12 Y x i -- 3 Z 2 d
    13 Y x i -- 3 Z 3 d
    3 retorne


    14 Y _ i -- 3 Y g i
    14 Y * d -- 14 Y * i
fim subtrai6

inicio subtrai5 0
    0 Y - i -- 1 Y * e
    0 Y _ d -- 1 Z * i
    0 Y * i -- 0 Y * e

    1 Y 0 i -- 2 Y x i
    1 Y 1 i -- 5 Y x i
    1 Y 2 i -- 6 Y x i
    1 Y 3 i -- 7 Y x i
    1 Y 4 i -- 8 Y x i
    1 Y 5 i -- 9 Y x i
    1 Y 6 i -- 10 Y x i
    1 Y 7 i -- 11 Y x i
    1 Y 8 i -- 12 Y x i
    1 Y 9 i -- 13 Y x i
    1 Y x i -- 1 Y * e
    1 Y _ i -- 3 Z 1 d

    2 Y x i -- 14 Z 5 d
    5 Y x i -- 14 Z 6 d
    6 Y x i -- 14 Z 7 d
    7 Y x i -- 14 Z 8 d
    8 Y x i -- 14 Z 9 d
    9 Y x i -- 3 Z 0 d
    10 Y x i -- 3 Z 1 d
    11 Y x i -- 3 Z 2 d
    12 Y x i -- 3 Z 3 d
    13 Y x i -- 3 Z 4 d
    3 retorne

    14 Y _ i -- 3 Y g i
    14 Y * d -- 14 Y * i
fim subtrai5

inicio subtrai4 0
    0 Y - i -- 1 Y * e
    0 Y _ d -- 1 Z * i
    0 Y * i -- 0 Y * e

    1 Y 0 i -- 2 Y x i
    1 Y 1 i -- 5 Y x i
    1 Y 2 i -- 6 Y x i
    1 Y 3 i -- 7 Y x i
    1 Y 4 i -- 8 Y x i
    1 Y 5 i -- 9 Y x i
    1 Y 6 i -- 10 Y x i
    1 Y 7 i -- 11 Y x i
    1 Y 8 i -- 12 Y x i
    1 Y 9 i -- 13 Y x i
    1 Y x i -- 1 Y * e
    1 Y _ i -- 3 Z 1 d

    2 Y x i -- 14 Z 6 d
    5 Y x i -- 14 Z 7 d
    6 Y x i -- 14 Z 8 d
    7 Y x i -- 14 Z 9 d
    8 Y x i -- 3 Z 0 d
    9 Y x i -- 3 Z 1 d
    10 Y x i -- 3 Z 2 d
    11 Y x i -- 3 Z 3 d
    12 Y x i -- 3 Z 4 d
    13 Y x i -- 3 Z 5 d
    3 retorne

    14 Y _ i -- 3 Y g i
    14 Y * d -- 14 Y * i
fim subtrai4

inicio subtrai3 0
    0 Y - i -- 1 Y * e
    0 Y _ d -- 1 Z * i
    0 Y * i -- 0 Y * e

    1 Y 0 i -- 2 Y x i
    1 Y 1 i -- 5 Y x i
    1 Y 2 i -- 6 Y x i
    1 Y 3 i -- 7 Y x i
    1 Y 4 i -- 8 Y x i
    1 Y 5 i -- 9 Y x i
    1 Y 6 i -- 10 Y x i
    1 Y 7 i -- 11 Y x i
    1 Y 8 i -- 12 Y x i
    1 Y 9 i -- 13 Y x i
    1 Y x i -- 1 Y * e
    1 Y _ i -- 3 Z 1 d

    2 Y x i -- 14 Z 7 d
    5 Y x i -- 14 Z 8 d
    6 Y x i -- 14 Z 9 d
    7 Y x i -- 3 Z 0 d
    8 Y x i -- 3 Z 1 d
    9 Y x i -- 3 Z 2 d
    10 Y x i -- 3 Z 3 d
    11 Y x i -- 3 Z 4 d
    12 Y x i -- 3 Z 5 d
    13 Y x i -- 3 Z 6 d
    3 retorne

    14 Y _ i -- 3 Y g i
    14 Y * d -- 14 Y * i
fim subtrai3

inicio subtrai2 0
    0 Y - i -- 1 Y * e
    0 Y _ d -- 1 Z * i
    0 Y * i -- 0 Y * e

    1 Y 0 i -- 2 Y x i
    1 Y 1 i -- 5 Y x i
    1 Y 2 i -- 6 Y x i
    1 Y 3 i -- 7 Y x i
    1 Y 4 i -- 8 Y x i
    1 Y 5 i -- 9 Y x i
    1 Y 6 i -- 10 Y x i
    1 Y 7 i -- 11 Y x i
    1 Y 8 i -- 12 Y x i
    1 Y 9 i -- 13 Y x i
    1 Y x i -- 1 Y * e
    1 Y _ i -- 3 Z 1 d

    2 Y x i -- 14 Z 8 d
    5 Y x i -- 14 Z 9 d
    6 Y x i -- 3 Z 0 d
    7 Y x i -- 3 Z 1 d
    8 Y x i -- 3 Z 2 d
    9 Y x i -- 3 Z 3 d
    10 Y x i -- 3 Z 4 d
    11 Y x i -- 3 Z 5 d
    12 Y x i -- 3 Z 6 d
    13 Y x i -- 3 Z 7 d
    3 retorne

    14 Y _ i -- 3 Y g i
    14 Y * d -- 14 Y * i
fim subtrai2


inicio subtrai1 0
    0 Y - i -- 1 Y * e
    0 Y _ d -- 1 Z * i
    0 Y * i -- 0 Y * e

    1 Y 0 i -- 2 Y x i
    1 Y 1 i -- 5 Y x i
    1 Y 2 i -- 6 Y x i
    1 Y 3 i -- 7 Y x i
    1 Y 4 i -- 8 Y x i
    1 Y 5 i -- 9 Y x i
    1 Y 6 i -- 10 Y x i
    1 Y 7 i -- 11 Y x i
    1 Y 8 i -- 12 Y x i
    1 Y 9 i -- 13 Y x i
    1 Y x i -- 1 Y * e
    1 Y _ i -- 3 Z 1 d

    2 Y x i -- 14 Z 9 d
    5 Y x i -- 3 Z 0 d
    6 Y x i -- 3 Z 1 d
    7 Y x i -- 3 Z 2 d
    8 Y x i -- 3 Z 3 d
    9 Y x i -- 3 Z 4 d
    10 Y x i -- 3 Z 5 d
    11 Y x i -- 3 Z 6 d
    12 Y x i -- 3 Z 7 d
    13 Y x i -- 3 Z 8 d
    3 retorne

    14 Y _ i -- 3 Y g i
    14 Y * d -- 14 Y * i
fim subtrai1

inicio subtrai0 0
    0 Y - i -- 1 Y * e
    0 Y _ d -- 1 Z * i
    0 Y * i -- 0 Y * e

    1 Y 0 i -- 2 Y x i
    1 Y 1 i -- 5 Y x i
    1 Y 2 i -- 6 Y x i
    1 Y 3 i -- 7 Y x i
    1 Y 4 i -- 8 Y x i
    1 Y 5 i -- 9 Y x i
    1 Y 6 i -- 10 Y x i
    1 Y 7 i -- 11 Y x i
    1 Y 8 i -- 12 Y x i
    1 Y 9 i -- 13 Y x i
    1 Y x i -- 1 Y * e
    1 Y _ i -- 3 Z 1 d

    2 Y x i -- 3 Z 0 d
    5 Y x i -- 3 Z 1 d
    6 Y x i -- 3 Z 2 d
    7 Y x i -- 3 Z 3 d
    8 Y x i -- 3 Z 4 d
    9 Y x i -- 3 Z 5 d
    10 Y x i -- 3 Z 6 d
    11 Y x i -- 3 Z 7 d
    12 Y x i -- 3 Z 8 d
    13 Y x i -- 3 Z 9 d
    3 retorne

    14 Y _ i -- 3 Y g i
    14 Y * d -- 14 Y * i
fim subtrai0

inicio subtraiAux 0
   0 Y - i -- 1 Y * e
   0 Y * i -- 0 Y * e

   1 Y 0 i -- 3 Y 9 i
   1 Y 1 i -- 3 Y 0 i
   1 Y 2 i -- 3 Y 1 i
   1 Y 3 i -- 3 Y 2 i
   1 Y 4 i -- 3 Y 3 i
   1 Y 5 i -- 3 Y 4 i
   1 Y 6 i -- 3 Y 5 i
   1 Y 7 i -- 3 Y 6 i
   1 Y 8 i -- 3 Y 7 i
   1 Y 9 i -- 2 Y 8 e
   1 Y x i -- 1 Y * e
   1 Y _ i -- 2 Y * i

   2 Y _ i -- 3 Y * e
   2 Y * i -- 1 Y * i

   3 retorne

  14 Y _ i -- 3 Y g i
  14 Y * d -- 14 Y * i
fim subtraiAux


inicio verificaMaior 0
    0 Y - i -- 1 Y * d
    0 Y * i -- 0 Y * e

    1 Y 0 i -- 2 Y * e
    1 Y 1 i -- 3 Y * e
    1 Y 2 i -- 4 Y * e
    1 Y 3 i -- 5 Y * e
    1 Y 4 i -- 6 Y * e
    1 Y 5 i -- 7 Y * e
    1 Y 6 i -- 8 Y * e
    1 Y 7 i -- 9 Y * e
    1 Y 8 i -- 10 Y * e
    1 Y 9 i -- 11 Y * e

    2 Y * i -- 31 Y * i

    3 Y 0 i -- 31 Y * i
   ;3 Y 1 i -- 31 Y * i
    3 Y * i -- 32 Y * i

    4 Y 0 i -- 31 Y * i
    4 Y 1 i -- 31 Y * i
    ;4 Y 2 i -- 31 Y * i
    4 Y * i -- 32 Y * i

    5 Y 0 i -- 31 Y * i
    5 Y 1 i -- 31 Y * i
    5 Y 2 i -- 31 Y * i
    ;5 Y 3 i -- 31 Y * i
    5 Y * i -- 32 Y * i

    6 Y 0 i -- 31 Y * i
    6 Y 1 i -- 31 Y * i
    6 Y 2 i -- 31 Y * i
    6 Y 3 i -- 31 Y * i
    6 Y * i -- 32 Y * i

    30 retorne
    31 CabecoteCertoY 30
    32 inverteNumero 30
fim verificaMaior

inicio inverteNumero 0
    0 Y - i -- 1 Y * d
    0 Y * i -- 0 Y * e

    1 Y 0 i -- 2 Y _ d
    1 Y 1 i -- 3 Y _ d
    1 Y 2 i -- 4 Y _ d
    1 Y 3 i -- 5 Y _ d
    1 Y 4 i -- 6 Y _ d
    1 Y 5 i -- 7 Y _ d
    1 Y 6 i -- 8 Y _ d
    1 Y 7 i -- 9 Y _ d
    1 Y 8 i -- 10 Y _ d
    1 Y 9 i -- 11 Y _ d
    1 Y _ i -- 1 Y * d
    1 Y = i -- 12 Y * i

    2 Y = d -- 0 Y 0 i
    2 Y * i -- 0 Y * d
    3 Y = d -- 0 Y 1 i
    3 Y * i -- 0 Y * d
    4 Y = d -- 0 Y 2 i
    4 Y * i -- 0 Y * d
    5 Y = d -- 0 Y 3 i
    5 Y * i -- 0 Y * d
    6 Y = d -- 0 Y 4 i
    6 Y * i -- 0 Y * d
    7 Y = d -- 0 Y 5 i
    7 Y * i -- 0 Y * d
    8 Y = d -- 0 Y 6 i
    8 Y * i -- 0 Y * d
    9 Y = d -- 0 Y 7 i
    9 Y * i -- 0 Y * d
    10 Y = d -- 0 Y 8 i
    10 Y * i -- 0 Y * d
    11 Y = d -- 0 Y 9 i
    11 Y * i -- 0 Y * d
    12 Y - i -- 13 Y * e

    13 Y _ i -- 14 Y - d
    13 Y * i -- 13 Y * e

    14 Y 0 i -- 15 Y _ d
    14 Y 1 i -- 16 Y _ d
    14 Y 2 i -- 17 Y _ d
    14 Y 3 i -- 18 Y _ d
    14 Y 4 i -- 19 Y _ d
    14 Y 5 i -- 20 Y _ d
    14 Y 6 i -- 21 Y _ d
    14 Y 7 i -- 22 Y _ d
    14 Y 8 i -- 23 Y _ d
    14 Y 9 i -- 24 Y _ d

    15 Y = d -- 0 Y 0 i
    16 Y * i -- 0 Y * d
    3 Y = d -- 0 Y 1 i
    3 Y * i -- 0 Y * d
    4 Y = d -- 0 Y 2 i
    4 Y * i -- 0 Y * d
    5 Y = d -- 0 Y 3 i
    5 Y * i -- 0 Y * d
    6 Y = d -- 0 Y 4 i
    6 Y * i -- 0 Y * d
    7 Y = d -- 0 Y 5 i
    7 Y * i -- 0 Y * d
    8 Y = d -- 0 Y 6 i
    8 Y * i -- 0 Y * d
    9 Y = d -- 0 Y 7 i
    9 Y * i -- 0 Y * d
    10 Y = d -- 0 Y 8 i
    10 Y * i -- 0 Y * d
    11 Y = d -- 0 Y 9 i
    11 Y * i -- 0 Y * d
    12 Y - i -- 13 Y * e

    30 retorne
fim inverteNumero