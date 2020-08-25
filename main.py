import re
class Instrucao:
    estado: int
    fita: chr
    simbolo: chr
    move: chr

    def __init__(self, estado, fita, simbolo, move):
        self.estado = estado
        self.fita = fita
        self.simbolo = simbolo
        self.move = move

    def __str__(self) -> str:
        return 'estado: {}, fita: {}, simbolo: {}, move: {}'. \
            format(str(self.estado), self.fita, self.simbolo, self.move)


class MT:
    indexX = 0
    indexY = 0
    indexZ = 0
    fitas = {
        'X': [],
        'Y': [],
        'Z': []
    }

    def move_index(self, sentido: chr, index: chr):
        sinal = self.escolhe_sentido(sentido)
        if index == 'X':
            self.indexX += sinal
        elif index == 'Y':
            self.indexY += sinal
        else:
            self.indexZ += sinal

    def __str__(self) -> str:
        return 'fitas: {}, cabeçoteX: {}, cabeçoteY: {}, cabeçoteZ: {}'.format(self.fitas, self.indexX, self.indexY,
                                                                               self.indexZ)

    def escolhe_sentido(self, sentido) -> int:
        if sentido == 'd':
            return 1
        return -1

    def add_valor(self, fita, simbolo):
        index = self.retorna_index(fita)
        if len(self.fitas[fita]) <= index:
            self.fitas[fita].append(simbolo)
        else:
            self.fitas[fita][index] = simbolo

    def retorna_index(self, fita):
        if fita == 'X':
            return self.indexX
        elif fita == 'Y':
            return self.indexY
        else:
            return self.indexZ


if __name__ == '__main__':
    mt = MT()
    f = open('teste.mt')
    for linha in f.readlines():
        l = linha.strip().split(' - - ')
        l0, l1 = l[0].split(' '), l[1].split(' ')
        a = Instrucao(int(l0[0]), l0[1], l0[2], l0[3])
        b = Instrucao(int(l1[0]), l1[1], l1[2], l1[3])
        mt.move_index(a.move, a.fita)
        mt.move_index(b.move, b.fita)
        mt.add_valor(a.fita, a.simbolo)
        mt.add_valor(b.fita, b.simbolo)
    print(mt)
