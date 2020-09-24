$d = '1234567890+-=gx'

inicio main 0
    0 copiaX 1

    1 Y = e -- 2 Y * i
    1 Y g i -- 2 Y * i
    1 Y _ e -- 1 Z * i
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
    2 Y g i -- 200 Y _ e
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
    200 somaAux 13
    13 cabecoteCertoY 1
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
    27 Y + i -- 28 Y * e
    27 Y x i -- 27 Y * e
    27 Y * i -- 2 Y * i
    28 Y x i -- 28 Y * e
    28 Y _ i -- 16 Y * i
    28 Y 0 i -- 16 Z 0 i
    28 Y 1 i -- 16 Z 1 i
    28 Y 2 i -- 16 Z 2 i
    28 Y 3 i -- 16 Z 3 i
    28 Y 4 i -- 16 Z 4 i
    28 Y 5 i -- 16 Z 5 i
    28 Y 6 i -- 16 Z 6 i
    28 Y 7 i -- 16 Z 7 i
    28 Y 8 i -- 16 Z 8 i
    28 Y 9 i -- 16 Z 9 i
    28 Y * i -- 2 Y * i

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

   2 Y _ i -- 3 Y 1 i
   2 Y * i -- 1 Y * i

   3 retorne

  14 Y _ i -- 3 Y g i
  14 Y * d -- 14 Y * i
fim somaAux


inicio igualaDigito 0
    0 retorne
fim igualaDigito
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

    2 Y x i -- 3 Z 2 d
    5 Y x i -- 3 Z 3 d
    6 Y x i -- 3 Z 4 d
    7 Y x i -- 3 Z 5 d
    8 Y x i -- 3 Z 6 d
    9 Y x i -- 3 Z 7 d
    10 Y x i -- 3 Z 8 d
    11 Y x i -- 3 Z 9 d
    12 Y x i -- 14 Z 0 d
    13 Y x i -- 14 Z 1 d

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
    0 Z = i -- 1 Z * d
    0 Z * i -- 0 Z * e
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