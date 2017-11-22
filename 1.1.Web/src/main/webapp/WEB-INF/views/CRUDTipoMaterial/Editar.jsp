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
<h2>Constructora</h2>
<div class="clearfix"></div>
</div>
<div class="x_content">
	<frm:form method="POST" action="GuardarTipoMaterialE">
	<div class="form-horizontal">
			  <h2>Editar Tipo de Material</h2>
			  <hr/>
         		<frm:hidden path="idtipomaterial" />
				<div class="form-group">
					<label class="control-label col-md-2">Descripción</label>
					<div class="col-md-10">
					<frm:input path="descripcion" type="text" required="required" oninvalid="setCustomValidity('Ingresa la descripción')" 
                 oninput="setCustomValidity('')" class="form-control"/>
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-offset-2 col-md-10">
					<input type="submit" value="Guardar" class="btn btn-success"/>
					</div>
				</div>
		<%
			if(request.getParameter("msg")!=null){
				out.print("<p>"+request.getParameter("msg")+"</p>"); 
			}
		%>
		</div>
	</frm:form>
	<div align="center">
		<a href="${pageContext.request.contextPath}/CRUDTipoMaterial/Lista">Volver</a>
	</div>
<jsp:include page="/WEB-INF/views/masterpage/masterintranetfooter.jsp"></jsp:include>	
