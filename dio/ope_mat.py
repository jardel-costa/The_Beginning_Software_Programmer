# Vamos solicitar como entrada dois números e depois vamos realizar uma operação simples entre eles.

num1 = int(input('Digite o primeiro número: '))
num2 = int(input('Digite o segundo número: '))
soma = num1 + num2
print('A soma dos números é: ', soma)

'''

Explicação:

1. A função `input()` é utilizada para receber dados do usuário. O resultado é uma string.
2. Em seguida, é feito o casting da string para um inteiro usando a função `int()`.
3. A soma dos dois números é realizada e o resultado é armazenado na variável `soma`.
4. A função `print()` é utilizada para exibir uma mensagem na tela, e o resultado da soma é exibido usando o operador `+`.

Observe que o operador `+` é usado para concatenar strings, enquanto para somar números é utilizado o operador `+`.

'''