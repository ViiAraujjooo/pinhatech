<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="retornolistar.aspx.cs" Inherits="CrudWeb.asp.usuario.WebForm2" %>
<%@ Import Namespace="CrudWeb.src.model.bean" %>
<%@ Import Namespace="CrudWeb.src.controller" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<%
	Usuario usuEnt = new Usuario(Request["login"]);
	ControllerUsuario contUsu = new ControllerUsuario();
	List<Usuario> listaUsuSaida = contUsu.Listar(usuEnt);
%>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Sistema XPTO</title>
</head>
<body>
<center>
<table>
  <tr>
    <th>Id</th>
    <th>Login</th>
    <th>Senha</th>
    <th>Status</th>
    <th>Tipo</th>
    <th>Alterar</th>
    <th>Excluir</th>
  </tr>
  <% if (listaUsuSaida.Count > 0) { %>
  <% foreach (Usuario usuSaida in listaUsuSaida) { %>
  <tr>
        <td><%=usuSaida.Id %></td>
        <td><%=usuSaida.Login %></td>
        <td><%=usuSaida.Senha %></td>
        <td><%=usuSaida.Status %></td>
        <td><%=usuSaida.Tipo %></td>
        <td><a href="../usuario/alterar.aspx?ID=<%=usuSaida.Id %>"><button type="button">Alterar</button></a><br></td>
        <td><a href="../usuario/validaexcluir.aspx?ID=<%=usuSaida.Id %>"><button type="button">Excluir</button></a><br></td>
  </tr>
  <% } %>
  <% } %>
</table>
</center>
</body>

