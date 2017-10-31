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
<h2>Editar Tipo de Material</h2>
<div class="clearfix"></div>
</div>
<div class="x_content">
	<frm:form method="POST" action="GuardarTipoMaterialE">
		<table border="1">
			<tr>  
         		<frm:hidden path="idtipomaterial" />
				<td>Descripción</td>
				<td><frm:input path="descripcion" /></td>
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
	<div align="center">
		<a href="${pageContext.request.contextPath}/CRUDTipoMaterial/Lista">Volver</a>
	</div>
<jsp:include page="/WEB-INF/views/masterpage/masterintranetfooter.jsp"></jsp:include>	
