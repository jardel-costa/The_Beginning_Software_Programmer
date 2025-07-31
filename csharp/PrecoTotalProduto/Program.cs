// Tarefa de Casa (Módulo 1):
// Crie um novo "Aplicativo de Console" e faça um programa que:
// Pergunte o nome de um produto.
// Pergunte o preço desse produto.
// Pergunte a quantidade que o cliente vai comprar.
// Calcule o valor total (preço * quantidade).
// Mostre uma mensagem para o usuário como: "O total da sua compra de [NOME DO PRODUTO] foi de R$ [VALOR TOTAL]."
    
    
// A linha que já veio no template. Pode alterar a mensagem!
Console.WriteLine("Bem-vindo ao Programa de Calculo do Valor Total.");


// ---- Módulo 1: Interagindo com o usuário ----

Console.Write("Por favor, digite o nome do produto: ");
string nomeProduto = Console.ReadLine();

Console.Write("Agora, digite o preço deste produto: ");
string precoProduto = Console.ReadLine();

Console.Write("Quantas unidades do produto deseja adicionar ao carrinho: ");
string qtdeProduto = Console.ReadLine();


// Convertendo o texto para número
int precoNumero = Convert.ToInt32(precoProduto);
int qtdeNumero = Convert.ToInt32(qtdeProduto);

int valorTotal = precoNumero * qtdeNumero;
Console.WriteLine("O total da sua compra de " + nomeProduto + " foi de R$ " + valorTotal);

Console.WriteLine("Obrigado pela preferencia e volte sempre!");
// Para o programa não fechar imediatamente após rodar,
// você pode adicionar um ReadLine() no final.
Console.ReadLine();
