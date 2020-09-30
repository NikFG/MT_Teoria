import re
import sys

pattern = re.compile('\$[a-z]')


class Instrucao:
    estado: int
    fita: chr
    simbolo: chr
    move: chr
    funcao: str
    break_point: bool

    def __init__(self, funcao, estado, fita, simbolo: str, move, break_point):
        self.estado = estado
        self.fita = fita
        self.simbolo = simbolo
        self.move = move
        self.funcao = funcao
        self.break_point = break_point

    def __str__(self) -> str:
        return '{}: {} {} {} {}'. \
            format(self.funcao, str(self.estado), self.fita, self.simbolo, self.move)


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

    def __str__(self) -> str:
        return 'fitas: {}, cabeçoteX: {}, cabeçoteY: {}, cabeçoteZ: {}'.format(self.fitas, self.indexX, self.indexY,
                                                                               self.indexZ)

    def move_index(self, sentido: chr, index: chr):
        sinal = self.escolhe_sentido(sentido)
        indexAux = 0
        if index == 'X':
            self.indexX += sinal
            indexAux = self.indexX + self.negativoX
        elif index == 'Y':
            self.indexY += sinal
            indexAux = self.indexY + self.negativoY
        else:
            self.indexZ += sinal
            indexAux = self.indexZ + self.negativoZ

        if indexAux >= len(self.fitas[index]) and sentido == 'd':
            self.fitas[index] = self.fitas[index] + ['_']
        if indexAux < 0 and sentido == 'e':
            # fita_branco = []
            self.soma_negativo(index, abs(indexAux))

            # for i in range(0, abs(indexAux)):
            #     fita_branco.append('_')
            self.fitas[index] = ['_'] + self.fitas[index]

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
        if i.simbolo != '*':
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

    def print_fita(self, fita):
        print('Fita {}: '.format(fita), end='')
        for i in range(0, len(self.fitas[fita])):
            if i == self.retorna_index(fita):
                print('[' + self.fitas[fita][i] + ']', end='')
            else:
                print(self.fitas[fita][i], end='')
        print()


if __name__ == '__main__':
    varAlias = ''
    options = ''
    if sys.argv[1] != '-step' and sys.argv[1] != '-debug' and sys.argv[1] != '-help':
        options = '-resume'
    else:
        options = sys.argv[1]
    stepParameter = 0
    logfile = ''
    file = ''
    entrada = ''
    arquivoLog = ''
    if options == '-step':
        stepParameter = int(sys.argv[2])
        file = sys.argv[3]
        entrada = sys.argv[4:]
        if stepParameter == 0:
            print("Insira um valor válido para <n>")
            exit(-1)
    elif options == '-debug':
        logfile = sys.argv[2]
        file = sys.argv[3]
        entrada = sys.argv[4]
    elif options == '-resume':
        file = sys.argv[2]
        entrada = sys.argv[3]
        stepParameter = 1000
    elif options == '-help':
        print("Exemplo de entrada válida:")
        print("simuladorMT.py <opções> <arquivo> <entrada>")
        print(
            "Opções:\n'–step <n>': Executa <n> computações e para, onde <n> é a quantidade de computações\n'–resume': Executa o programa até o fim\n'–debug <arquivo log>' A simulação produz um relatório mostrando por linha as instruções executadas, as entradas e saídas dos blocos")
        exit(0)
    else:
        print("Digite uma entrada válida para a MT, em caso de dúvidas, digite '-help'")
        exit(1)

    contComputacao = 0
    if options == '-debug':
        arquivoLog = open(logfile, "w")
    fita_x = []
    for e in entrada:
        if e == ' ':
            e = '_'
        fita_x.append(e)
    mt = MT()
    lista_transicao = {}
    estados_iniciais = {}
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
                estados_iniciais[nome_transicao] = int(linhaAux[-1])
                if nome_transicao == 'main':
                    estado_atual = int(linhaAux[-1])
                continue
            if linha.__contains__('$') and varAlias == '':
                aliasSplited = linha.strip().replace('\'', '').replace('\"', '').split(' ')
                if not pattern.fullmatch(aliasSplited[0]):
                    print(aliasSplited)
                    print('PADRÃO DE ALIAS NÃO ACEITO')
                    exit(-1)
                varAlias = aliasSplited[0]
                for al in aliasSplited[2]:
                    alias.append(al)

                for fx in fita_x:
                    if fx not in alias and fx != ' ' and fx != '+' and fx != '-' and fx != '=' and fx != '_':
                        print('Caracter {} não está no alias'.format(fx))
                        exit(-1)
                mt.fitas['X'] = fita_x
                continue
            elif linha.__contains__('aceita'):
                fim_aceita = int(linha.strip().split(' ')[0])
            elif linha.__contains__('rejeita'):
                fim_rejeita = int(linha.strip().split(' ')[0])
            elif linha.__contains__('fim'):
                continue
            else:
                l = []
                if ' -- ' in linha:
                    l = linha.strip().split(' -- ')
                else:
                    l = linha.strip().split(' ')

                break_point = False

                for k in l:
                    if k.__contains__('!'):
                        l = [s.replace('!', '') for s in l]
                        break_point = True

                if not l[1].__contains__(' '):
                    if l[1] == 'retorne':
                        a = Instrucao('retorne', int(l[0]), '', '', 'i', break_point)
                        b = Instrucao('retorne', -1, '', '', 'i', break_point)
                        lista_transicao[nome_transicao].append((a, b))
                        continue
                    elif l[1] == 'pare':
                        a = Instrucao('pare', int(l[0]), '', '', 'i', break_point)
                        b = Instrucao('pare', -1, '', '', 'i', break_point)
                        lista_transicao[nome_transicao].append((a, b))
                        continue

                    a = Instrucao(nome_transicao, int(l[0]), '', '', 'i', break_point)
                    b = Instrucao(l[1], int(l[2]), '', '', 'i', break_point)
                    lista_transicao[nome_transicao].append((a, b))
                    continue

                l0, l1 = l[0].split(' '), l[1].split(' ')
                a = Instrucao(nome_transicao, int(l0[0]), l0[1], l0[2], l0[3], break_point)
                b = Instrucao(nome_transicao, int(l1[0]), l1[1], l1[2], l1[3], break_point)
                lista_transicao[nome_transicao].append((a, b))

    ordem_execucao = ['main']
    lista_retorna = []
    continua = True
    while continua:
        lados = []
        i = 0
        if (estado_atual == fim_aceita or estado_atual == fim_rejeita) and (ordem_execucao[-1] == 'main'):
            continua = False
            break

        for a in lista_transicao[ordem_execucao[-1]]:
            if a[0].estado == estado_atual:
                lados.append(a)

        for l in range(0, len(lados)):
            lado_e = lados[l][0]
            lado_d = lados[l][1]
            if lado_e.funcao == 'pare':
                mt.print_fita('X')
                mt.print_fita('Y')
                mt.print_fita('Z')
                print("_______________________________"
                      "______________________________________________________________")
                print('PARE')
                print("____________________"
                      "_________________________________________________________________________")
                exit(0)
            if lado_e.funcao == 'retorne' and lado_d.funcao == 'retorne':
                if options == '-debug':
                    linhaParaEscrever = str(ordem_execucao[-1]) + " : " + str(lado_e.estado) + " retorne\n"
                    teste = arquivoLog.write(linhaParaEscrever)
                ordem_execucao.pop()
                estado_atual = lista_retorna[-1]
                lista_retorna.pop()
                break
            if lado_e.funcao != lado_d.funcao:
                if options == '-debug':
                    linhaParaEscrever = str(ordem_execucao[-1]) + " : " + str(lado_e.estado) + " " + str(
                        lado_d.funcao) + " " + str(lado_d.estado) + "\n"
                    teste = arquivoLog.write(linhaParaEscrever)
                ordem_execucao.append(lado_d.funcao)
                lista_retorna.append(lado_d.estado)
                estado_atual = estados_iniciais[ordem_execucao[-1]]
                break

            aux = mt.fitas.get(lado_e.fita)[mt.retorna_index(lado_e.fita)]
            aux2 = lado_e.simbolo

            if aux != varAlias and aux not in alias and aux != '*' and aux != '_':
                print('Caracter {} inválido'.format(aux))
                exit(-1)
            if aux2 != varAlias and aux2 not in alias and aux2 != '*' and aux2 != '_':
                print('Caracter inválido')

            if options != '-step' or contComputacao != stepParameter:
                if aux2 == varAlias:
                    lado_d.simbolo = aux
                    aux2 = aux
                if aux == aux2 or aux2 == '*' or aux == ' ':
                    contComputacao += 1
                    if options == '-debug':
                        teste = arquivoLog.write(
                            "{}: {} {} {} {} --- {} {} {} {}\n".format(str(ordem_execucao[-1]), lado_e.estado,
                                                                       lado_e.simbolo, lado_e.fita, lado_e.move,
                                                                       lado_d.estado, lado_d.simbolo, lado_d.fita,
                                                                       lado_d.move))

                    mt.move_index(lado_e.move, lado_e.fita)
                    mt.escreve_fita(lado_d)
                    if lado_d.estado != '*':
                        estado_atual = lado_d.estado

                    if lado_d.break_point:
                        print("\nSimulador de Máquina de Turing Suave ver 1.0")
                        print("Desenvolvido como trabalho prático para a disciplina de Teoria da Computação")
                        print("Lucas Oliveira Silva, 0040498 - IFMG - Formiga, 2020")
                        print("Nikollas Ferreira Gonçalves, 0040890 - IFMG - Formiga, 2020\n")
                        print("---- breakpoint ----")
                        mt.print_fita('X')
                        mt.print_fita('Y')
                        mt.print_fita('Z')
                        print(
                            "_____________________________________________________________________________________________")
                        opcao = int(input('Opção ? ( 0=termina , −1=resume ) : '))
                        if opcao == 0:
                            exit(0)
                        elif opcao == -1:
                            stepParameter = 0
                    break
                elif l + 1 not in range(0, len(lados)):
                    continua = False
                    print("\nSimulador de Máquina de Turing Suave ver 1.0")
                    print("Desenvolvido como trabalho prático para a disciplina de Teoria da Computação")
                    print("Lucas Oliveira Silva, 0040498 - IFMG - Formiga, 2020")
                    print("Nikollas Ferreira Gonçalves, 0040890 - IFMG - Formiga, 2020\n")
                    print('REJEITA')
                    mt.print_fita('X')
                    mt.print_fita('Y')
                    mt.print_fita('Z')
                    print(
                        "_____________________________________________________________________________________________")
                    print('FIM DA SIMULAÇÃO.')
                    exit()
                    if options == '-resume' and contComputacao == stepParameter:
                        print("\nSimulador de Máquina de Turing Suave ver 1.0")
                        print("Desenvolvido como trabalho prático para a disciplina de Teoria da Computação")
                        print("Lucas Oliveira Silva, 0040498 - IFMG - Formiga, 2020")
                        print("Nikollas Ferreira Gonçalves, 0040890 - IFMG - Formiga, 2020\n")
                        print(
                            "_____________________________________________________________________________________________")
                        opcao = int(input(
                            'Já foram executadas ' + str(
                                contComputacao) + ' computações. Deseja continuar ? ( 0=termina , −1=resume ) : '))
                        if opcao == 0:
                            mt.print_fita('X')
                            mt.print_fita('Y')
                            mt.print_fita('Z')
                            exit(0)
                        elif opcao == -1:
                            stepParameter += 1000
                    break
            elif options == '-step' and contComputacao == stepParameter:
                print("\nSimulador de Máquina de Turing Suave ver 1.0")
                print("Desenvolvido como trabalho prático para a disciplina de Teoria da Computação")
                print("Lucas Oliveira Silva, 0040498 - IFMG - Formiga, 2020")
                print("Nikollas Ferreira Gonçalves, 0040890 - IFMG - Formiga, 2020\n")
                mt.print_fita('X')
                mt.print_fita('Y')
                mt.print_fita('Z')
                print("_____________________________________________________________________________________________")
                opcao = int(input('Opção ? ( n=passos , 0=termina , −1=resume ) : '))
                if opcao == 0:
                    exit(0)
                elif opcao == -1:
                    stepParameter = 0
                else:
                    stepParameter += opcao

    print("\nSimulador de Máquina de Turing Suave ver 1.0")
    print("Desenvolvido como trabalho prático para a disciplina de Teoria da Computação")
    print("Lucas Oliveira Silva, 0040498 - IFMG - Formiga, 2020")
    print("Nikollas Ferreira Gonçalves, 0040890 - IFMG - Formiga, 2020\n")
    if options == '-debug':
        arquivoLog.close()
        arquivoLogRead = open(logfile, "r")
        print(arquivoLogRead.read())
    else:
        print('ACEITA')
        print("_____________________________________________________________________________________________")
        mt.print_fita('X')
        mt.print_fita('Y')
        mt.print_fita('Z')

        print("_____________________________________________________________________________________________")
        print('FIM DA SIMULAÇÃO.')
