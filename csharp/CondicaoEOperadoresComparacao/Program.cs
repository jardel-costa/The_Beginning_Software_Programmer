// Console.write("Por favor, digite sua idade: ");
// int idade = Convert.toInt32(Console.ReadLine());

// if (idade >= 18)
// {
//     Console.WriteLine("Parabéns! Você já é maior de idade e pode tirar CNH.");  
// }
// else
// {
//     Console.WriteLine("Calma, jovem! Falta um pouco para você poder dirigir.");
// }

// Cosole.WriteLine("Obrigado por participar do nosso programa!");
// Console.WriteLine("Pressione qualquer tecla para sair...");

Console.Write("Digite a sua idade, por favor: ");
int age = Convert.ToInt32(Console.ReadLine());

    if (age < 12)
{
    Console.WriteLine("Você é uma criança. Vai brincar!");
}
    else if (age < 18)
{
    Console.WriteLine("Você é um adolescente. Estude muito!");
}
    else
{
    Console.WriteLine("Você é um adulto. Já pode tirar CNH. Trabalhe duro!");
}