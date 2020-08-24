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


    def escolhe_sentido(self, sentido) -> int:
    def add_valor(self, fita, simbolo):
        index = self.retorna_index(fita)
        if len(self.fitas[fita]) <= index:
            self.fitas[fita].append(simbolo)
        else:
            self.fitas[fita][index] = simbolo


if __name__ == '__main__':
    index = 0
    d = '1234'
    mt = MT()
    mt.fitas['X'] = split(d)
    for i in range(0, len(d)):
        mt.copiaX(i)
    print(mt.fitas)
