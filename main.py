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
    fitas = {
        'X': [],
        'Y': [],
        'Z': []
    }

    def copiaX(self, i: int):
        self.fitas.get('Y').append(self.fitas.get('X')[i])
        self.fitas.get('Z').append(self.fitas.get('X')[i])
        self.fitas.get('X')[i] = '*'


def split(palavra):
    return [char for char in palavra]


if __name__ == '__main__':
    index = 0
    d = '1234'
    mt = MT()
    mt.fitas['X'] = split(d)
    for i in range(0, len(d)):
        mt.copiaX(i)
    print(mt.fitas)
