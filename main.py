import re
import sys

pattern = re.compile('[a-z]+')


class Instrucao:
    estado: int
    fita: chr
    simbolo: chr
    move: chr

    def __init__(self, estado, fita, simbolo: str, move):
        if not pattern.fullmatch(simbolo):
            raise Exception("rejeita")
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

    negativoX = 0
    negativoY = 0
    negativoZ = 0

    fitas = {
        'X': [],
        'Y': [],
        'Z': []
    }

    def __init__(self, fitaX):
        self.fitas['X'] = fitaX

    def __str__(self) -> str:
        return 'fitas: {}, cabeçoteX: {}, cabeçoteY: {}, cabeçoteZ: {}'.format(self.fitas, self.indexX, self.indexY,
                                                                               self.indexZ)

    def move_index(self, sentido: chr, index: chr):
        sinal = self.escolhe_sentido(sentido)
        indexAux = 0
        if index == 'X':
            self.indexX += sinal
            indexAux = self.indexX
        elif index == 'Y':
            self.indexY += sinal
            indexAux = self.indexY
        else:
            self.indexZ += sinal
            indexAux = self.indexZ
        if indexAux < 0 and sentido == 'e':
            fita_branco = []
            self.soma_negativo(index, abs(indexAux))
            for i in range(0, abs(indexAux)):
                fita_branco.append('_')
            self.fitas[index] = fita_branco + self.fitas[index]

    def escolhe_sentido(self, sentido) -> int:
        if sentido == 'd':
            return 1
        if sentido == 'i':
            return 0
        return -1

    def add_valor(self, fita, simbolo):
        index = self.retorna_index(fita)

        if len(self.fitas[fita]) <= index:
            self.fitas[fita].append(simbolo)
        else:
            self.fitas[fita][index] = simbolo

    def escreve_fita(self, i: Instrucao):
        self.add_valor(i.fita, i.simbolo)
        self.move_index(i.move, i.fita)

    def retorna_index(self, fita):
        if fita == 'X':
            return self.indexX + self.negativoX
        elif fita == 'Y':
            return self.indexY + self.negativoY
        else:
            return self.indexZ + self.negativoZ

    def soma_negativo(self, fita, valor: int):
        if fita == 'X':
            self.negativoX += valor
        elif fita == 'Y':
            self.negativoY += valor
        else:
            self.negativoZ += valor


if __name__ == '__main__':
    # options = sys.argv[1]
    options = '-resume'
    stepParameter = 0
    logfile = ''
    file = ''
    entrada = ''

    # • –step <n> Executa n computações e para, mostrando o conteúdo das três fitas, então reabre
    # o prompt para ler novo valor para <n> antes de continuar a simulação. Caso seja fornecido
    # o valor 0 para n a simulação termina imediatamente, caso seja fornecido um valor negativo o
    # programa considera a opção –resume.
    # • –resume Executa o programa até o fim, mostra o conteúdo das três fitas e o resultado do
    # reconhecimento: ACEITA ou REJEITA. Essa é a opção padrão e será considerada se nenhuma
    # opção –step for fornecida.
    # • –debug <arquivo log> A simulação produz um relatório mostrando por linha as instruções
    # executadas, as entradas e saídas dos blocos.
    # • –help Exibe mensagem explicando o formato da linha de comando.

    if options == '-step':
        stepParameter = int(sys.argv[2])
        file = sys.argv[3]
        entrada = sys.argv[4]
        if stepParameter == 0:
            print("Insira um valor válido para <n>")
            exit(-1)
        ##call to step function
    elif options == '-debug':
        logfile = sys.argv[2]
        file = sys.argv[3]
        entrada = sys.argv[4]
    elif options == '-resume':
        file = sys.argv[2]
        entrada = sys.argv[3]
    elif options == '-help':
        print("simuladorMT <opções> <arquivo> <entrada>")
        exit(0)
    else:
        print("Digite uma entrada válida para a MT, em caso de dúvidas, digite '-help'")
        exit(1)

    contComputacao = 0

    fita_x = []

    for e in entrada:
        if e == ';':
            break
        fita_x.append(e)
    mt = MT(fita_x)
    lista_transicao = {}
    estado_atual = -1
    fim_aceita = -1
    fim_rejeita = -1
    alias = []
    with open(file) as f:
        nome_transicao = ''
        for linha in f.readlines():
            if linha.strip() == '':
                continue
            if linha.__contains__(';'):
                linha = linha.strip().split(';')[0]
                if linha == '':
                    continue
            if linha.__contains__('inicio'):
                linhaAux = linha.strip().split(' ')
                nome_transicao = linhaAux[1]
                lista_transicao[nome_transicao] = []
                estado_atual = int(linhaAux[-1])
                continue
            if linha.__contains__('$'):
                aliasAux = linha.strip().replace('\'', '').replace('\"', '').split(' ')[2]
                for al in aliasAux:
                    alias.append(al)
                continue
            elif linha.__contains__('aceita'):
                fim_aceita = int(linha.strip().split(' ')[0])
            elif linha.__contains__('rejeita'):
                fim_rejeita = int(linha.strip().split(' ')[0])
            elif linha.__contains__('fim'):
                pass
            else:
                l = []
                if ' -- ' in linha:
                    l = linha.strip().split(' -- ')
                else:
                    l = linha.strip().split(' ')

                if not l[1].__contains__(' '):
                    lista_transicao[l[1]] = []
                    continue
                l0, l1 = l[0].split(' '), l[1].split(' ')
                try:
                    a = Instrucao(int(l0[0]), l0[1], l0[2], l0[3])
                    b = Instrucao(int(l1[0]), l1[1], l1[2], l1[3])
                    lista_transicao['main'].append((a, b))
                except Exception as e:
                    print(e)
                    break
    for a in lista_transicao['main']:
        print("{} -- {}".format(a[0], a[1]))
    continua = True
    while continua:
        lados = []
        i = 0
        if estado_atual == fim_aceita or estado_atual == fim_rejeita:
            continua = False
            break

        for a in lista_transicao['main']:
            if a[0].estado == estado_atual:
                lados.append(a)

        for l in range(0, len(lados)):
            lado_e = lados[l][0]
            lado_d = lados[l][1]
            aux = mt.fitas.get(lado_e.fita)[mt.retorna_index(lado_e.fita)]
            aux2 = lado_e.simbolo
            if aux == aux2:
                mt.move_index(lado_e.move, lado_e.fita)
                mt.escreve_fita(lado_d)
                estado_atual = lado_d.estado
                break
            elif l + 1 not in range(0, len(lados)):
                continua = False
                print('REJEITA')
                break
    print(lista_transicao['copiaX'])
    print(mt.fitas)
