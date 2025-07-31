// Este é um comentário. O computador ignora tudo que vem depois de "//" na mesma linha.

// namespace é como um sobrenome para organizar nosso código.
namespace MinhaJornadaCSharp
{
    // class é a planta de um objeto. Por enquanto, pense nela como o bloco principal do nosso programa.
    internal class Program
    {
        // Main é o ponto de entrada. É aqui que nosso programa começa a rodar.
        static void Main(string[] args)
        {
            // O comando que escreve uma linha no console (a tela preta).
            Console.WriteLine("Olá, Mundo! Comecei minha jornada.");

            // Dentro do nosso Main
            string nome = "Gandalf"; // Uma caixa do tipo texto chamada "nome" com o valor "Gandalf"
            int idade = 2019;       // Uma caixa do tipo inteiro chamada "idade" com o valor 2019
            double altura = 1.98;   // Uma caixa do tipo decimal chamada "altura"
            bool ehMago = true;      // Uma caixa do tipo lógico chamada "ehMago" com o valor verdadeiro

            // Agora podemos usar essas caixas!
            Console.WriteLine("O nome do personagem é: " + nome); // O "+" aqui junta os textos
            Console.WriteLine("Sua idade é: " + idade + " anos.");
            Console.WriteLine("Ele é um mago? " + ehMago);

            Console.Write("Por favor, digite seu nome: "); // Usamos Write para o cursor ficar na mesma linha
            string nomeUsuario = Console.ReadLine(); // Lê o que o usuário digitou e guarda na variável

            Console.WriteLine("Olá, " + nomeUsuario + "! Seja bem-vindo(a) ao C#.");

            Console.Write("Agora, digite sua idade: ");
            string idadeTexto = Console.ReadLine(); // Lê a idade como TEXTO

            // "Pegadinha" do professor! Não podemos fazer contas com texto.
            // Precisamos CONVERTER o texto para número.
            int idadeNumero = Convert.ToInt32(idadeTexto);

            int idadeDaquiDezAno = idadeNumero + 10;
            Console.WriteLine("Daqui a 10 anos, você terá " + idadeDaquiDezAno + " anos!");
        }
    }
}
