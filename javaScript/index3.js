let user = {
    id: 5, 
    nome: 'Jardel Costa',
    email: 'jardel.costa@gmail.com',
    senha: 12345,
    admin: true
}

console.log(`Nome: ${user.nome}`)
console.log(`Senha: ${user.senha}`)

console.log(user['senha'])

user.nome = "Joice Costa"
