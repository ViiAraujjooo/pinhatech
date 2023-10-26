function validarListar(){
    // só permitirá o envio se os dados forem fornecidos    
    var retorno = false;
    if(document.flistar.login.value == ""){
      alert("Forneca o LOGIN do usuario");
      document.flistar.login.focus();
    } else {
	retorno = true;
    }
    return retorno;
}