// ---------- VALIDAÇÃO ---------- //
let usernameInput = document.getElementById("username");
let usernameLabel = document.querySelector('label[for="username"]');
let usernameHelper = document.getElementById("username-helper");

let emailInput = document.getElementById("email");
let emailLabel = document.querySelector('label[for="email"]');
let emailHelper = document.getElementById("email-helper");


function mostrarPopup(input, label){

// Mostrar popup de campo obrigatório
input.addEventListener("focus", function(){
  label.classList.add("required-popup")
})
// Ocultar popup de campo obrigatório
usernameInput.addEventListener("blur", function(){
    usernameLabel.classList.remove("required-popup")
  })
}

mostrarPopup(usernameInput, usernameLabel)

// Validar valor do input
usernameInput.addEventListener("change", function(evento){
  let valor = evento.target.value

  if(valor.length < 3){
    usernameInput.classList.remove("correct")
    usernameInput.classList.add("error")
    usernameHelper.classList.add("visible")
    usernameHelper.innerText = "Username precisa ter 3 caracteres ou mais"
  }
  else{
    usernameInput.classList.add("correct")
    usernameInput.classList.remove("error")
    usernameHelper.classList.remove("visible")
    
  }
})

mostrarPopup(emailInput, emailLabel)

emailInput.addEventListener("change", function(evento){
  let valor = evento.target.value

  if(valor.includes("@") && valor.includes(".com")){
    emailInput.classList.add("correct")
    emailInput.classList.remove("error")
    emailHelper.classList.remove("visible")
    emailHelper.innerText = "E-mail inválido"
  }
  else{
    emailInput.classList.remove("correct")
    emailInput.classList.add("error")
    emailHelper.classList.add("visible")
    
  }
})