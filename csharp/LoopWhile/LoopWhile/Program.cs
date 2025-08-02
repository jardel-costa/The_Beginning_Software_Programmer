// Adivinhe a Senha

string senhaSecreta = "csharp123";
string palpite = "";

// O loop continua enquanto o palpite for diferente da senha secreta

while (palpite != senhaSecreta)
{

    Console.Write("Digite a senha: ");
    palpite = Console.ReadLine() ?? "";

    // Obs: Se você colocar "palpite = Console.ReadLine();" na linha acima aparecerá O erro CS8600, 
    // que ocorre porque Console.ReadLine() pode retornar null, mas você está atribuindo diretamente
    // a uma variável do tipo string não anulável. Para corrigir, use o operador de coalescência nula (??)
    // para garantir que palpite nunca seja null, como esta acima.

    if (palpite != senhaSecreta)
    {

        Console.WriteLine("Senha incorreta! Tente novamente.");

    }

}

// Este codigo só será executado quando o loop terminar (ou seja, quando a senha estiver correta)

Console.WriteLine("Acesso liberado! Bem-vindo ao sistema.");


