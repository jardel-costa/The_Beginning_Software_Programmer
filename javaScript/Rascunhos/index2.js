//const emailCorreto = 'jardel.costa@gmail.com'
//const idCorreto = 'jardel.costa'
//let passCorreto = 'qwerty'
//const permissaoCorreto = true

//let emailUser = 'jardel.costa@gmail.com'
//let idUser = "jardel.costa"
//let passUser = 'qwerty'

const emailCorreto = 'diego@gmail.com'
const idCorreto = 'diego'
let passCorreto = '12345'
const permissaoCorreto = false

let emailUser = 'diego@gmail.com'
let idUser = "dieg"
let passUser = '12345'


if (emailUser == emailCorreto && idUser == idCorreto && passCorreto == passUser){

    if (permissaoCorreto) {
        console.log("Bem-vindo(a) à área de administrador" )
        console.log("Por favor, insira sua nova senha")
}
    else {
        console.log("Bem-vindo(a) ao Sistema")
        console.log("Por favor, insira sua nova senha")

    }
}
else{
    console.log("Username / senha incorreto")
}