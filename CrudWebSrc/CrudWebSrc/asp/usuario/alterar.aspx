<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="retornolistar.aspx.cs" Inherits="CrudWeb.asp.usuario.WebForm2" %>
<%@ Import Namespace="CrudWeb.src.model.bean" %>
<%@ Import Namespace="CrudWeb.src.controller" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<%
	Usuario usuEnt = new Usuario(Convert.ToInt32(Request["ID"]));
	ControllerUsuario contUsu = new ControllerUsuario();
	Usuario usuSaida = contUsu.Buscar(usuEnt);
%>
<head runat="server">
<link rel="stylesheet" type="text/css" href="..\css\formato.css">
<script type="text/javascript" src="..\js\validaAlterar.js"></script>
<script type="text/javascript" src="..\js\util.js"></script>
<title>Sistema XPTO</title>
</head>
<body>
<center>
<form name="falterar" action="../usuario/validaalterar.aspx" method="post" onsubmit="return validarAlterar()">
  Id:<br>
  <input type="text" name="idL" value="<%=usuSaida.Id %>" disabled="true"><br>
  Login:<br>
  <input type="text" name="login" value="<%=usuSaida.Login %>"><br>
  Senha:<br>
  <input type="password" name="senha" value="<%=usuSaida.Senha %>"><br>
  Status:<br>
  <input type="text" name="status" value="<%=usuSaida.Status %>"><br>
  Tipo:<br>
  <input type="text" name="tipo" value="<%=usuSaida.Tipo %>"><br>
  <input type="hidden" name="ID" value="<%=usuSaida.Id %>"><br>
  <input type="submit" value="Submit">
</form>
</center>

</body>
</html>