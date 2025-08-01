//Introdução ao C#// Calculadora de IMC (Índice de Massa Corporal)
// Este programa calcula o IMC de uma pessoa com base no peso e altura fornecidos.
Console.WriteLine("Bem-vindo à Calculadora de IMC!");

// Solicita ao usuário que insira seu peso e altura
// e calcula o IMC com a fórmula: IMC = peso / (altura * altura
Console.Write("Digite seu peso em kg, lembre-se de utilizar , e não . por favor: ");
double peso = Convert.ToDouble(Console.ReadLine());
Console.Write("Digite sua altura em metros, lembre-se de utilizar , e não . por favor: ");
double altura = Convert.ToDouble(Console.ReadLine());

// Calcula o IMC
double imc = peso / (altura * altura);

// Classifica o IMC de acordo com os padrões da OMS
if (imc < 18.5)
{
    Console.WriteLine($"Seu IMC é {imc:F2}, que é classificado como: Abaixo do peso.");
}
else if (imc >= 18.5 && imc < 24.9)
{
    Console.WriteLine($"Seu IMC é {imc:F2}, que é classificado como: Peso normal.");
}
else if (imc >= 25 && imc < 29.9)
{
    Console.WriteLine($"Seu IMC é {imc:F2}, que é classificado como: Sobrepeso.");
}
else if (imc >= 30 && imc < 34.9)
{
    Console.WriteLine($"Seu IMC é {imc:F2}, que é classificado como: Obesidade Grau I.");
}
else if (imc >= 35)
{
    Console.WriteLine($"Seu IMC é {imc:F2}, que é classificado como: Obesidade Grau II ou mais.");
}
else
{
    Console.WriteLine($"Seu IMC é {imc:F2}, que é classificado como: Obesidade Grau II ou mais.");
}