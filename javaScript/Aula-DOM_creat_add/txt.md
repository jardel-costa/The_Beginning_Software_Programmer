
## Para adicionar um elemento à lista não ordenada, seguiremos três etapas:

1. criar um elemento HTML;

2. popular e manipular esse elemento HTML;

3. adicionar o elemento HTML no DOM.

________________________________________________________________________

<ul>
<li> <strong> Primeira Etapa </strong> </li>
</ul>

Sabemos que nossa lista não ordenada contém elementos li, portanto, vamos criar um li e salvá-lo em uma variável para facilitar sua manipulação na próxima etapa.

Iniciaremos chamando o objeto “Document” e usando o método dele .createElement(). Esse método recebe como argumento uma string com o nome do elemento que queremos criar.

O nome do elemento será o mesmo que usaremos para abrir e fechar as tags dos elementos HTML. Assim, passamos como argumento o valor “li”:

`document.createElement("li");`

Esse método é uma função que retorna o elemento li adicionado na lista. Para conseguir manipulá-lo, iremos salvar o retorno do método em uma variável, declarando ela e usando o operador de atribuição “=”. Observe a imagem.

Além disso, iremos imprimir o elementoJavaScript com um console.log() para acompanhar o seu desenvolvimento pelo terminal do navegador.

`let elementoJS = window.document.createElement("li");`

`console.log(elementoJS);`

Para checar esse desenvolvimento, você deve executar o nosso projeto no navegador com a ferramenta LiveServer e abrir o terminal. Agora, um elemento div vazio deve ser encontrado onde iremos criar um li para manipulá-lo. Observe as etapas a seguir:

Agora, com o nosso elemento li criado e salvo na variável elementoJavaScript, podemos começar a manipulá-lo.

Iniciaremos usando a propriedade innerText para adicionar o texto “JavaScript” nele. Veja na imagem como isso pode ser feito.

_________________________________________________________________________
<ul>
<li> <strong> Segunda Etapa </strong> </li>
</ul>
Agora, com o nosso elemento li criado e salvo na variável elementoJavaScript, podemos começar a manipulá-lo.

Iniciaremos usando a propriedade innerText para adicionar o texto “JavaScript” nele. Veja na imagem como isso pode ser feito.

Se você observar o terminal no navegador, temos agora um elemento li com o texto JavaScript entre as tags de abertura e fechamento:

Ao salvar as mudanças e voltar no terminal do navegador, devemos ver nosso elemento completo, com seu respectivo texto e id:

_________________________________________________________________________
<ul>
<li> <strong> Terceira Etapa </strong> </li>
</ul>

Com o elemento criado, populado e manipulado, podemos adicioná-lo ao nosso site.

Para fazer isso, precisamos capturar o seu elemento pai via DOM e salvá-lo em uma variável.

Nesse caso, o elemento pai é a lista não ordenada com a classe Lista-linguagens. Sabendo disso, usaremos o método .querySelector para capturá-lo e guardá-lo dentro de uma variável. Veja a imagem.