<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>
<jsp:include page="/WEB-INF/views/masterpage/masterintranetheader.jsp"></jsp:include>
<h3>Mantenedor Tipo de Materiales</h3>
</div>
</div>
<div class="clearfix"></div>
<div class="row">
<div class="col-md-12 col-sm-12 col-xs-12">
<div class="x_panel">
<div class="x_title">
<h2>Constructora Bectek</h2>
<div class="clearfix"></div>
</div>
<div class="x_content">
	<a href="${pageContext.request.contextPath}/CRUDTipoMaterial/Nuevo" class="btn btn-success">Nuevo</a>
	<br/>
	<%
		if(request.getParameter("msg")!=null){
			out.print("<p style=color:green;>"+request.getParameter("msg")+"</p>");
		}
	%>
<div class="table-responsive">
	<table class="table table-striped projects">
		<thead>
		<tr>
			<th>Id</th>
			<th>Descripción</th>
		</tr>
		</thead>
		<tbody>
			<c:forEach items= "${listaTM}" var= "list">
			<tr>
				<td><c:out value="${list.idtipomaterial}"/></td>
				<td><c:out value="${list.descripcion}"/></td>
				<td>
				<frm:form method="GET" action="Elimina">
					<button name="btnEliminar" value="${list.idtipomaterial}" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i>ELIMINA</button>
				</frm:form>
				<frm:form method="GET" action="Editar">
					<button name="btnEditar" value="${list.idtipomaterial}"  class="btn btn-info btn-xs" ><i class="fa fa-pencil"></i>EDITA</button>
				</frm:form>
				</td>			
			</tr>
			</c:forEach>
		</tbody>
	</table>
	</div>
<jsp:include page="/WEB-INF/views/masterpage/masterintranetfooter.jsp"></jsp:include>	