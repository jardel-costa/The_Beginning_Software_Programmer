

let quantidadeSubtotal = document.getElementById("quantidade-subtotal");
let valorSubtotal = document.getElementById("valor-subtotal");

let subtotalInfo = {
  quantidade: 1,
  valor: 11.66,
};

//quantidadeSubtotal.innerText = subtotalInfo.quantidade + " itens";
//valorSubtotal.innerText = subtotalInfo.valor;

// Seleção botões

// Botão Add
let btnAddProd01 = document.querySelector("#btn-adicionar-produto-01")
console.log(btnAddProd01)

// Botão Sub
let btnSubProd01 = document.querySelector("#btn-subtrair-produto-01")
console.log(btnSubProd01)

// Seleção Qtde "input"
let qtdeProd01 = document.querySelector("#quantidade-produto-01")
console.log(qtdeProd01)

// Funções:

//Add
function adicionarProduto() {
    //qtdeProd01.value = Number(qtdeProd01.value) + 1;
    qtdeProd01.value++
    subtotalInfo.quantidade++;
    quantidadeSubtotal.innerText = subtotalInfo.quantidade + " itens";
    valorSubtotal.innerText = (subtotalInfo.valor*subtotalInfo.quantidade).toFixed(2);
} 

//Sub
function subtrairProduto() {
  if (qtdeProd01.value > 0) {
    //qtdeProd01.value = Number(qtdeProd01.value) - 1;
    qtdeProd01.value--
    subtotalInfo.quantidade--;
    quantidadeSubtotal.innerText = subtotalInfo.quantidade + " itens";
    valorSubtotal.innerText = (subtotalInfo.valor*subtotalInfo.quantidade).toFixed(2);
  }
  
} 

// Eventos

//Add
btnAddProd01.addEventListener("click", adicionarProduto)

//Sub
btnSubProd01.addEventListener("click", subtrairProduto)
