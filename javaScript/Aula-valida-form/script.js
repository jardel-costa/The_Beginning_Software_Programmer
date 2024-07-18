// ---------- VALIDAÇÃO USERNAME ---------- //
let usernameInput = document.getElementById("username");
let usernameLabel = document.querySelector('label[for="username"]');
let usernameHelper = document.getElementById("username-helper");

// Mostrar popup de campo obrigatório
usernameInput.addEventListener("focus", function(){
  usernameLabel.classList.add("required-popup")
})

// Ocultar popup de campo obrigatório
usernameInput.addEventListener("blur", function(){
    usernameLabel.classList.remove("required-popup")
  })
  

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