<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/tablas.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<title>Consulta de Doctores</title>
</head>
<body>
	<%@ page import="pe.edu.universidad.dao.*"%>
	<%@ page import="pe.edu.universidad.entidades.*"%>
	<%@ page import="java.util.List"%>
	<%
	DaoDoctor dao = new DaoDoctor();
	List<Doctor> lst = dao.consultarDoctores();
	%>
	<br />
	<table border='1'>
		<td>CODIGO</td>
		<td>DNI</td>
		<td>NOMBRES</td>
		<td>APELLIDOS</td>
		<td>EDAD</td>
		<td>GENERO</td>
		<%
		for (Doctor u : lst) {
		%>
		<tr>
			<td><%=u.getCodigo()%></td>
			<td><%=u.getDni()%></td>
			<td><%=u.getNombres()%></td>
			<td><%=u.getApellidos()%></td>
			<td><%=u.getEdad()%></td>
			<td><%=u.getGenero()%></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>