<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista de Contatos - Scriptlet</title>
</head>
<%@ page
	import="java.util.*,
		br.com.caelum.agenda.dao.*,
		br.com.caelum.agenda.modelo.* "%>
<body>
	<table>
		<%
		ContatoDAO dao = new ContatoDAO();
		List<Contato> contatos = dao.getLista();
		
		SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
		
		for(Contato contato : contatos) {
		%>
			<tr>
				<td><%=contato.getNome() %></td>
				<td><%=contato.getEmail() %></td>
				<td><%=contato.getEndereco() %></td>
				<td><%=contato.getDataNascimento().getTime() %></td>
			</tr>
		<%
		}
		%>	
	</table>

</body>
</html>