<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>
<%@ page session="false" %>
<html>
<title>Nuevo Tipo de Material</title>
<head>
<body>
	<div align="center">
	<h3>INGRESAR NUEVO TIPO MATERIAL</h3>
	<frm:form method="POST" action="GuardarTipoMaterial">
		<table border="1">
			<tr>
				<td></td>
				<td><frm:input path="descripcion" type="text"></frm:input></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="Guardar"/>
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
	<a href="${pageContext.request.contextPath}/CRUDTipoMaterial/Lista">Volver</a>
	</div>
</body>
</html>
