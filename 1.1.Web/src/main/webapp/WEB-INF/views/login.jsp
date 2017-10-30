<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>
<%@ page session="false" %>
<html>
<head>
	<title>Login Intranet</title>
</head>
<body>
	<div align="center">
		<h3>LOGIN INTRANET</h3>
	</div>
	<div align="center">
	<frm:form method="POST" action="VerificarAcceso">
		<table border="1">
			<tr>
				<td>Usuario:</td>
				<td><frm:input path="UserName" type="text"></frm:input></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><frm:input path="Password" type="text"></frm:input></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="Ingresar"/>
					<input type="reset" value="Limpiar"/>
				</td>
			</tr>
		</table>
		<%
			if(request.getParameter("msg")!=null){
				out.print("<p>"+request.getParameter("msg")+"</p>"); 
			}
		%>
	</frm:form>
	</div>
	<div align="center">
		<a href="${pageContext.request.contextPath}/CRUDTipoMaterial/Lista">CRUD Tipo Material</a>
	</div>
</body>
</html>
