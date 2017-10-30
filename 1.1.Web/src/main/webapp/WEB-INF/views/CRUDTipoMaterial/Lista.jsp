<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista de Tipo Material</title>
</head>
<body>
	<div align="center">
		<h3>Lista de Tipo Material</h3>
	</div>
	<br/>
	<a href="${pageContext.request.contextPath}/CRUDTipoMaterial/Nuevo">Nuevo</a>
	<br/>
	<table border="1" style="width: 100%">
		<thead>
		<tr>
			<th></th>
			<th></th>
			<th></th>
			<th></th>
		</tr>
		</thead>
		<tbody align="center">
			<c:forEach items= "${listaTM}" var= "list">
			<tr>
				<td><c:out value="${list.idtipomaterial}"/></td>
				<td><c:out value="${list.descripcion}"/></td>
				<frm:form method="GET" action="Elimina">
					<td><button name="btnEliminar" value="${list.idtipomaterial}">ELIMINA</button></td>
				</frm:form>
				<frm:form method="GET" action="Editar">
					<td><button name="btnEditar" value="${list.idtipomaterial}">EDITA</button></td>
				</frm:form>
				
			</tr>
			</c:forEach>
		</tbody>
	</table>
		<div align="center">
			<a href="${pageContext.request.contextPath}/">Volver</a>
		</div>
</body>
</html>