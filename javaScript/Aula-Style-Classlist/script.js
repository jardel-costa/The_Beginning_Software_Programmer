const main = document.querySelector('main')
console.log(main)
main.style.backgroundColor = 'gray'

const h2 = document.querySelector('h2')
console.log(h2)
h2.style.color = 'yellow'

const button = document.querySelector("button")
console.log(button)
button.style.background = 'black'
button.style.color = 'white'

//const userNameInput = document.querySelector("#login-usuario")
//console.log(userNameInput)
//userNameInput.classList.add('error')

//const errorVisible = document.querySelectorAll(".error-text")
//console.log(errorVisible[0])
//errorVisible[0].classList.add('visible')

const VerdeVermelho = document.querySelector("#login-senha")
console.log(VerdeVermelho)
VerdeVermelho.classList.add("error")

const VermelhoVerde = document.querySelector("#login-usuario")
console.log(VermelhoVerde)
VermelhoVerde.classList.add("correct")

const errorVisible = document.querySelectorAll(".error-text")
console.log(errorVisible[1])
errorVisible[1].classList.add('visible')
