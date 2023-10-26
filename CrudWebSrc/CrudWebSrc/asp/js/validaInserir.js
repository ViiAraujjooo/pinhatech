function validarInserir(){
    // só permitirá o envio se os dados forem fornecidos    
    var retorno = false;
    if(document.finserir.login.value == ""){
      alert("Forneca o login do usuario");
      document.finserir.login.focus();
    } else if(document.finserir.senha.value == "") {
      alert("Forneca a senha do usuario");
      document.finserir.senha.focus();
    } else if(document.finserir.status.value == "") {
      alert("Forneca a status do usuario");
      document.finserir.status.focus();
    } else if(document.finserir.tipo.value == "") {
      alert("Forneca a tipo do usuario");
      document.finserir.tipo.focus();
    } else {
    	alert("Dados Valido Inserido Com Sucesso"); 	
	    retorno = true;
    }
    return retorno;
}