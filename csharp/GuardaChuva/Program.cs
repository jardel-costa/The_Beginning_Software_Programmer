using System;

Console.Write("Está chovando? (s/n): ");
string estaChovendo = Console.ReadLine();

Console.Write("Você tem guarda-chuva? (s/n): ");
string temGuardaChuva = Console.ReadLine();

if (estaChovendo == "n" || temGuardaChuva == "s")
{

    Console.WriteLine("Otimo! Você não vai se molhar.");

}
else
{

    Console.WriteLine("Eita! Melhor esperar a chuva parar apara não se molhar!");

}

if (estaChovendo == "s" && temGuardaChuva == "n")
{

    Console.WriteLine("Alerta: Você vai se molhar se sair agora!");

}
