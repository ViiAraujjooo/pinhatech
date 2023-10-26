<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="validainserir.aspx.cs" Inherits="CrudWeb.asp.usuario.WebForm1" %>
<!DOCTYPE html>
<%@ Import Namespace="CrudWeb.src.model.bean" %>
<%@ Import Namespace="CrudWeb.src.controller" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<%
	Usuario usuEnt = new Usuario(
		Request["login"],Request["senha"],
		Request["status"], Request["tipo"]);
	ControllerUsuario contUsu = new ControllerUsuario();
	Usuario usuSaida = contUsu.Inserir(usuEnt);
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="refresh" content="2; URL='inserir.html'"/> <!-Define o redirecionamento, tempo e URL->
</head>
<body>
Em Processamento
</body>
</html>
