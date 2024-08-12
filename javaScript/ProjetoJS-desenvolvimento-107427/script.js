let SiteEL = document.querySelector("title")
console.log(SiteEL)
SiteEL.innerText="Loja Online Vende-se"

let tituloEL = document.querySelector("h1")
console.log(tituloEL)
tituloEL.innerText="Loja Online Vende-se"

let prod1EL = document.querySelector("#produto1")
console.log(prod1EL)
prod1EL.innerText = "Produto XPTO"

let txt1EL = document.querySelector("#txt1")
console.log(txt1EL)
txt1EL.innerText = "Descrição do produto XPTO com valores e especificações técnicas. R$89,99"

let imgProd1 = document.querySelector("#txt1")
let img1EL = document.createElement('img')
img1EL.src = 'asset/caixaPreta.png'
imgProd1.appendChild(img1EL)

let prod2EL = document.querySelector("#produto2")
console.log(prod2EL)
prod2EL.innerText = "Produto XYZ"

let txt2EL = document.querySelector("#txt2")
console.log(txt2EL)
txt2EL.innerText = "Descrição do produto XYZ com valores e especificações técnicas. R$99,99"

let imgProd2 = document.querySelector("#txt2")
let img2EL = document.createElement('img')
img2EL.src = 'asset/caixaMadeira.png'
imgProd2.appendChild(img2EL)