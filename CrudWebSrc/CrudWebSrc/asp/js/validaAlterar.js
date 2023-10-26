function validarAlterar(){
    // só permitirá o envio se os dados forem fornecidos    
    var retorno = false;
    if(document.falterar.login.value == ""){
      alert("Forneca o login do usuario");
      document.falterar.login.focus();
    } else if(document.falterar.senha.value == "") {
      alert("Forneca a senha do usuario");
      document.falterar.senha.focus();
    } else if(document.falterar.status.value == "") {
      alert("Forneca a status do usuario");
      document.falterar.status.focus();
    } else if(document.falterar.tipo.value == "") {
      alert("Forneca a tipo do usuario");
      document.falterar.tipo.focus();
    } else {
    	alert("Dados Valido Alterados Com Sucesso"); 	
	    retorno = true;
    }
    return retorno;
}