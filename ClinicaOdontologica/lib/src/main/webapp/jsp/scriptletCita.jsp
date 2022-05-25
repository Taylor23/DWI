<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/tablas.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<title>Consulta de Citas</title>
</head>
<body>
	<%@ page import="pe.edu.universidad.dao.*"%>
	<%@ page import="pe.edu.universidad.entidades.*"%>
	<%@ page import="java.util.List"%>
	<%
	DaoCita dao = new DaoCita();
	List<Cita> lst = dao.consultarCitas();
	%>
	<br />
	<table border='1'>
		<td>CODIGO</td>
		<td>FECHA</td>
		<td>SERVICIO</td>
		<td>DNI PACIENTE</td>
		<td>CODIGO DOCTOR</td>
		<%
		for (Cita u : lst) {
		%>
		<tr>
			<td><%=u.getCodigo()%></td>
			<td><%=u.getFecha()%></td>
			<td><%=u.getServicio()%></td>
			<td><%=u.getDni_paciente()%></td>
			<td><%=u.getCod_doctor()%></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>