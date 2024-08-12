let h1EL = document.querySelector("h1")

console.log(h1EL)
console.log(h1EL.innerText)
h1EL.innerText="Titulo da página"

let ulEL = document.querySelector("ul")

ulEL.innerHTML= `
<ul>
    <li>Elemento Lista</li>
    <li>Elemento Lista</li>
    <li>Elemento Lista</li>
</ul>
`
console.log(ulEL.innerHTML)

let aEL = document.querySelector("a")

console.log(aEL)
console.log(aEL.innerText)
aEL.innerText="Link da página"

let olEL = document.querySelector("ol")

olEL.innerHTML= `
<ol>
    <li><a href="https://prozeducacao.com.br" target="_blank">Elemento Lista com Link</a></li>
    <li><a href="https://prozeducacao.com.br" target="_blank">Elemento Lista com Link</a></li>
    <li><a href="https://prozeducacao.com.br" target="_blank">Elemento Lista com Link</a></li>
</ol>
`
console.log(olEL.innerHTML)

