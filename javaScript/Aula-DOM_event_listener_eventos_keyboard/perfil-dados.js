const linkPagPrincipal = document.querySelector('a')
console.log(linkPagPrincipal)
 
document.addEventListener("keyup", (e) => {
    console.log(e.code)
 
    if(e.code == "Backspace"){
        linkPagPrincipal.click()
    }
} )