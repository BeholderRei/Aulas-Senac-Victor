
function verificaridade (idade){

if (idade >= 18) {

    return "Pode ser preso";

}
else  {return "Não pode ser preso";
 

}

}

document.write(verificaridade(prompt('Qual e sua idade?')));