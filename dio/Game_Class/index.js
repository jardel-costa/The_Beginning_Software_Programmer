class PersonaHeroe{
	constructor(nome, idade, tipo){
    	this.nome = nome
        this.idade = idade
        this.tipo = tipo      
    }
    
    atackType() {
    	let ataque = " ";
    	if (this.tipo === "mago")
        	ataque = "magia";
        else if (this.tipo === "guerreiro")
        	ataque = "espada";
        else if (this.tipo === "monge")
        	ataque = "artes marciais";
        else if (this.tipo === "ninja")
        	ataque = 'shuriken';
        console.log(`O ${this.tipo} atacou usando ${ataque}!!!`);
        
    }
}

let nomeTest = "Conan";
let idadeTest = 33;
let tipoTest = "guerreiro";

let PersonaHeroeTest = new PersonaHeroe (nomeTest, idadeTest, tipoTest)

console.log("O Heroe " + PersonaHeroeTest.nome + ", pertencente a classe " + PersonaHeroeTest.tipo + ", com " + PersonaHeroeTest.idade + " anos de idade.")

console.log(" ");

PersonaHeroeTest.atackType();