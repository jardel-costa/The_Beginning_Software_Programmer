
// post 02
const post2 = document.getElementById('post02')
console.log(post2)

// formulario
const form = document.getElementById('formulario')
console.log(form)

// section com ambos os posts
const posts = document.getElementById('posts')
console.log(posts)

//datas dos posts
const dateposts = document.getElementsByClassName("post-data")
let outerHTML = dateposts.outerHTML
console.log(dateposts);
console.log("post-data 1: " + dateposts[0].outerHTML);
console.log("post-data 2: " + dateposts[1].outerHTML);

//textos dos posts
const txts = document.getElementsByClassName("post-texto")
let outerHTML = txts.outerHTML
console.log(txts)
console.log("post-texto 1: " + txts[0].outerHTML);
console.log("post-texto 2: " + txts[1].outerHTML);

//listas com links das redes sociais
const links = document.getElementsByClassName("lista_redes")
let outerHTML = links.outerHTML
console.log(links)
console.log("post-link 1: " + links[0].outerHTML)   
