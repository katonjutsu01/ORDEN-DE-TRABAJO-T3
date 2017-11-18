<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>
<jsp:include page="/WEB-INF/views/masterpage/masterintranetheader.jsp"></jsp:include>
<h3>Orden de Trabajo</h3>
</div>
</div>
<div class="clearfix"></div>
<div class="row">
<div class="col-md-12 col-sm-12 col-xs-12">
<div class="x_panel">
<div class="x_title">
<h2>Registrar Orden</h2>
<div class="clearfix"></div>
</div>
<div class="x_content">
	<frm:form method="POST" action="GuardarOrdenTrabajo">
	    <div class="col-lg-12">
	        <div class="panel panel-primary">
	            <div class="panel-heading">
	                Datos de la Orden
	            </div>
				<div class="panel-body">
					<div class="row">
						<!--   Obra   -->
						<div class = "control-label col-md-2"><p>Obra</p></div>
						<div class="col-lg-10">
						<frm:select path="obra.idobra" multiple="false">
						<frm:option value="0" label="Selecciona una Obra" />
							<c:forEach items= "${obras}" var= "list">
								<frm:option value="${list.idobra}" label="${list.descripcion}"/>
							</c:forEach>
						</frm:select>
						</div>
					</div>
		            <div class="row">
		                <!--   Actividad   -->
						<div class = "control-label col-md-2"><p>Actividad</p></div>
						<div class="col-lg-10">
						<frm:select path="actividad.idActividad" multiple="false">
						<frm:option value="0" label="Selecciona una Actividad" />
							<c:forEach items= "${actividades}" var= "list">
								<frm:option value="${list.idActividad}" label="${list.descripcion}"/>
							</c:forEach>
						</frm:select>
						</div>
					</div>
					<div class="row">
		                <!--   Trabajador   -->
		                <div class = "control-label col-md-2"><p>Trabajador</p></div>
		                <div class="col-lg-10">
						<frm:select path="trabajador.idTrabajador" multiple="false">
						<frm:option value="0" label="Selecciona un Trabajador" />
							<c:forEach items= "${trabajadores}" var= "list">
								<frm:option value="${list.idTrabajador}" label="${list.apellidos}"/>
							</c:forEach>
						</frm:select>
						</div>
					</div>
					<div class="row">
						<div class = "control-label col-md-2"><p>Nombre</p></div>
						<div class="col-lg-10">
						<frm:input path="nombre" type="text" required="required" oninvalid="setCustomValidity('Ingresa el nombre')" 
		                 oninput="setCustomValidity('')"/>
						</div>
					</div>
					<div class="row">
						<div class = "control-label col-md-2"><p>Fecha inicio</p></div>
						<div class="col-lg-10">
						<frm:input path="fechaini" type="date" required="required" oninvalid="setCustomValidity('Ingresa la fecha de Inicio')" 
		                 oninput="setCustomValidity('')"/>
						</div>
					</div>
					<div class="row">
						<div class = "control-label col-md-2"><p>Fecha fin</p></div>
						<div class="col-lg-10">
						<frm:input path="fechafin" type="date" required="required" oninvalid="setCustomValidity('Ingresa la fecha de Fin')" 
		                 oninput="setCustomValidity('')"/>
						</div>
					</div>
				</div>
				<div class="panel-body">
					<input type="submit" value="Guardar" class="btn btn-success"/>
					<a class="btn btn-info" href="${pageContext.request.contextPath}/CRUDTipoMaterial/Lista">Volver</a>
				</div>
				<div class="panel-body">
					<% if(request.getParameter("msg")!=null) out.print("<p style=color:blue;>"+request.getParameter("msg")+"</p>"); %>
				</div>
			</div>
		</div>
	</frm:form>
<jsp:include page="/WEB-INF/views/masterpage/masterintranetfooter.jsp"></jsp:include>	
