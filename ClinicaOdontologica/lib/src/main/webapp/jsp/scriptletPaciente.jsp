<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/tablas.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<title>Consulta de Pacientes</title>
</head>
<body>
	<%@ page import="pe.edu.universidad.dao.*"%>
	<%@ page import="pe.edu.universidad.entidades.*"%>
	<%@ page import="java.util.List"%>
	<%
	DaoPaciente dao = new DaoPaciente();
	List<Paciente> lst = dao.consultarPacientes();
	%>
	<br />
	<table border='1'>
		<td>DNI</td>
		<td>NOMBRES</td>
		<td>APELLIDOS</td>
		<td>EDAD</td>
		<%
		for (Paciente u : lst) {
		%>
		<tr>
			<td><%=u.getDni()%></td>
			<td><%=u.getNombres()%></td>
			<td><%=u.getApellidos()%></td>
			<td><%=u.getEdad()%></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>