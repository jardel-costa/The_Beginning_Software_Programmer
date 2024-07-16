const linkPerfil = document.getElementById("link-perfil");
const navPerfil = document.getElementById("nav-perfil");

document.addEventListener("keyup", (e) => {
  console.log(e.key);
  console.log(e.code)
  
  if (e.code == "Digit1") {
    navPerfil.style.display = "block";
  }
  if (e.code == "Backspace") {
    navPerfil.style.display = "none";
  }
});

//linkPerfil.addEventListener("mouseover", ()=> {
//  navPerfil.style.display = "block"
//})