function validarLogin(){
    // só permitirá o envio se os dados forem fornecidos    
    var retorno = false;
    if(document.flogin.login.value == ""){
      alert("Forneca o nome do usuario");
      document.flogin.login.focus();
    } else if(document.flogin.senha.value == "") {
      alert("Forneaa a senha do usuario");
      document.flogin.senha.focus();
    } else {
	    alert("Login Valido"); 	
	    retorno = true;
    }
    return retorno;
}