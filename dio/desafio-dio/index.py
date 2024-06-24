nome=""
level=0
nivel=""

nome=str(input("Valente Heroi, diga-me seu nome! Para que a glória de seus feitos seja cantada pelos bardos!:"))
print("Seja bem-vindo ao reino de Aethelmere, Valente Caveleiro!")
print("")
level=int(input("Diga-me, Heroi, qual a sua quantidade de experiência em xp? É um novato em busca de glória, ou um veterano de mil batalhas?"))

if (level<=1000):
    nivel="Ferro"
elif (level>=1001 and level<=2000):
    nivel="Bronze"
elif (level>=2001 and level<=5000):
    nivel="Prata"
elif (level>=5001 and level<=7000):
    nivel="Ouro"
elif (level>=7001 and level<=8000):
    nivel="Platina"
elif (level>=8001 and level<=9000):
    nivel="Ascendente"
elif (level>=9001 and level<=10000):
    nivel="Imortal"
elif (level>=10001):
    nivel="Radiante"
else:
    print("Sua inscrição não parece correta, nobre guerreiro! Verifique se declarou a informação corretamente, e tente novamente. A sorte esteja com você!")

print(f"Um caminho se abre a diante, {nome}, o Heroi!")
print("")
print(f"Com {level} quantidade de experiência, você se encontra no nível de {nivel}.")
print("")
print("A glória o espera, mas cuidado: os desafios são muitos!")
print("")
print("Que a sorte esteja com você, e que seus feitos sejam lembrados por todos!")

