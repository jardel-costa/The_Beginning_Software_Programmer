
def calRank (vitorias, derrotas):
    resultado = vitorias - derrotas
    return resultado

nome = " "
vitorias = 0
derrotas = 0

print("E aí, galera, preparem os corações para a adrenalina!")
print(" ")
print("Mas antes da gente mergulhar nessa batalha épica...")
print(" ")
nome=str(input("Me diga aí, qual o nome desse gladiador que vai botar pra quebrar hoje? "))
print(f"{nome}, sejam bem-vindos ao circuito mundial, onde só os guerreiros de verdade sobrevivem!")
print("")
derrotas=int(input(f"E aí, {nome}, sei que a derrota faz parte do jogo, mas pra gente te acompanhar com a máxima energia, precisamos saber quantas batalhas você já perdeu! Conta pra gente, quantas vezes você teve que se reerguer e voltar mais forte? "))
print("")
vitorias=int(input(f"Agora vamos falar de coisa boa, {nome}! Quantas vezes você já sentiu o gosto da vitória, a emoção de levar a taça pra casa? Conta pra gente, quantas vezes você já fez a torcida explodir de alegria? "))
print("A torcida tá faminta por ação, bora mostrar pra que veio!")

rank = calRank(vitorias,derrotas)

if (rank<10):
    nivel="Ferro"
elif (rank>=11 and rank<=20):
    nivel="Bronze"
elif (rank>=21 and rank<=50):
    nivel="Prata"
elif (rank>=51 and rank<=80):
    nivel="Ouro"
elif (rank>=81 and rank<=90):
    nivel="Diamante"
elif (rank>=91 and rank<=100):
    nivel="Lendário"
elif (rank>=101):
    nivel="Imortal"
else:
    print(f"Eita, {nome}, parece que a inscrição deu um nó! Confere aí se a informação tá certinha, e tenta de novo!")

if (rank>1 and rank<10):
    print(f"O {nome} tá começando a trilhar o caminho da glória! Com um saldo de {rank} vitórias, ")
    print("ele já  mostrou  que  tem  fome  de  vencer  e  está  pronto  pra  deixar  sua  marca  nesse  circuito!  ")
    print("A  gente  tá  de  olho  pra  ver  ele  escalar  esse  ranking  e  mostrar  o  seu  valor!")
elif(rank>=10):    
    print(f"Olha só, galera! O {nome}, com um saldo de {rank} vitórias, tá escalando o ranking como um foguete! ")
    print(f"Ele tá com a classificação {nivel} no circuito mundial! Eita, que nível é esse, hein?! Se liga na fera!")       
elif (rank == 0):
    print(f"O {nome} está pronto para escrever sua história! Com um saldo zerado, ")
    print("ele chega cheio de energia e determinação pra começar a construir sua legenda no mundo dos games! ")
    print("A torcida tá animada pra ver esse novo astro brilhar no céu do circuito!")
else:
    rank = -(rank)
    print(f"Eita, {nome}, parece que você já passou por algumas batalhas duras! Com um saldo de {rank} derrotas,")
    print("você tem uma história rica de superação e aprendizado! Mas não se preocupe,")
    print("a gente tá aqui pra torcer por você e ver você se reerguer mais forte do que nunca!")