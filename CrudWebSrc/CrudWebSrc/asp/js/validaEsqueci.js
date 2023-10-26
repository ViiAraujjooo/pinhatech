function validarEsqueci(){
    // só permitirá o envio se os dados forem fornecidos    
    var retorno = false;
    if(document.fesqueci.fone.value == ""){
      alert("Forneca o fone do usuario");
      document.fesqueci.fone.focus();
    } else if(document.fesqueci.senha.value == "") {
      alert("Forneaa a senha do usuario");
      document.fesqueci.senha.focus();
    } else {
	    alert("Login Alterado com Sucesso"); 	
	    retorno = true;
    }
    return retorno;
}