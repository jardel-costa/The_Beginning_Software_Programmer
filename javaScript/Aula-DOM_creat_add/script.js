const elementoJS = window.document.createElement("li");

elementoJS.innerText = "JavaScript";
elementoJS.id = "ling-js";

const listaLinguagens = window.document.querySelector(".lista-linguagens");
listaLinguagens.appendChild(elementoJS);

console.log(elementoJS);