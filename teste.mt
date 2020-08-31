$d = 'abcdefghijklmno'

inicio main 0
    0 X * e -- 7 Y a i
    0 X b d -- 6 Y a d
    0 X c d -- 2 Y a d
    1 X a d -- 5 Y * d
    2 X c e -- 3 Z a d
    3 X b d -- 5 Y d d
    4 X e d -- 4 Y e d
    7 copiaX 5
    5 aceita
    6 rejeita
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


