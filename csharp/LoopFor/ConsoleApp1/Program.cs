
Console.Write("Digite um número inteiro para ver a sua tabuada: ");
int numero = Convert.ToInt32(Console.ReadLine());

// inicialização: int i = 1 (comece a contar do 1)
// condição: i<=10 (continue enquanto 'i' for menor ou igual a 10)
// incremento: i++ (some 1 a 'i' a cada volta do loop)

for (int i = 1; i <= 10; i++)
{

    Console.WriteLine(numero + "x" + i + "=" + (numero * i));

}
