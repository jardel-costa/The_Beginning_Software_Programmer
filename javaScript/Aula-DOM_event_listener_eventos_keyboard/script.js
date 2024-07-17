const linkPerfil = document.getElementById("link-perfil");
const navPerfil = document.getElementById("nav-perfil");
const linkPerfilDados = document.getElementById("link-perfil-dados");

document.addEventListener("keyup", (e) => {
  console.log(e.key);
  console.log(e.code)
  
  if (navPerfil.style.display == "block"){
    if (e.code == "Digit1") {
      linkPerfilDados.click()
    }
  }else if (e.code == "Digit1"){
      console.log("Abra o menu perfil")
      navPerfil.style.display = "block"
  }
  
  if (e.code == "Backspace") {
    navPerfil.style.display = "none"
  }
})

//linkPerfil.addEventListener("mouseover", ()=> {
//  navPerfil.style.display = "block"
//})