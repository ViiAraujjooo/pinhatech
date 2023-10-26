<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="CrudWeb.asp.contacesso.menu" %>
<%@ Import Namespace="CrudWeb.src.model.bean" %>
<%@ Import Namespace="CrudWeb.src.controller" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<%
	Usuario usuEnt = new Usuario(Request["login"],Request["senha"]);
	ControllerUsuario contUsu = new ControllerUsuario();
	Boolean valida = contUsu.Validar(usuEnt);
%>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" type="text/css" href="..\css\formato.css">
<script type="text/javascript" src="..\js\validaLogin.js"></script>
<script type="text/javascript" src="..\js\util.js"></script>
<title>Sistema XPTO</title>
</head>
<body>
<center>
<table>
	<tr>
		<td>Login</td>
		<td>Senha</td> 
	</tr>
	<tr>
		<td><%=Request["login"]%></td>
		<td><%=Request["senha"]%></td> 
	</tr>
</table>
<%if (valida) { %>	
	<table>
		<tr>
			<td><input type="button" name="Novo" value="Novo" onclick="abrirTela('../usuario/inserir.html')"></td>
			<td><input type="button" name="Listar" value="Listar" onclick="abrirTela('../usuario/listar.html')"></td> 
		</tr>
    </table>
<%} else { %>	
	<table>
		<tr>
			<td>Usuario Invalido</td> 
		</tr>
    </table>
<% } %>	

</center>
</body>
</html>