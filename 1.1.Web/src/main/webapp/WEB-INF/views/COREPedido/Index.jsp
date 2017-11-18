<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>
<jsp:include page="/WEB-INF/views/masterpage/masterintranetheader.jsp"></jsp:include>
<h3>Pedido de Material</h3>
</div>
</div>
<div class="clearfix"></div>
<div class="row">
<div class="col-md-12 col-sm-12 col-xs-12">
<div class="x_panel">
<div class="x_title">
<h2>Registrar Pedido</h2>
<div class="clearfix"></div>
</div>
<div class="x_content">
<frm:form method="POST" action="AgregarDetalle">
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">Agregar Material</h4>
            </div>
            <div class="modal-body">
                <div class="table-responsive">
                       <table width="100%" id="dataTables-example" class="table table-striped table-bordered table-hover">
                        <thead>
                            <tr>
                            	<th></th>
                                <th>#</th>
                                <th>Almacen</th>
                                <th>Material</th>
                                <th>Disponible</th>
                            </tr>
                        </thead>
                       	<tbody>
                       	<c:forEach items= "${almacenes}" var= "list">
                       		<c:forEach items= "${list.stock}" var= "listS">
                       		<tr>
                       			<td><input type="radio" name="rdbtnMateriales" class="rdbtnMateriales"/></td>
	                       		<td><c:out value="${listS.id}"/></td>
	                       		<td><c:out value="${list.nombre}"/></td>
								<td><c:out value="${listS.material.nombre}"/></td>
								<td><c:out value="${listS.cantidad}"/></td>
							</tr>
						</c:forEach>
                       	</c:forEach>
                        </tbody> 
                    </table>
                </div>
                <div class="row">
                    <div class="col-lg-3">
                        Cantidad: <input type="text" id="txtCantidad" class="form-control" />
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary" data-dismiss="modal" id="btnAgregar">Aceptar</button>
            </div>
        </div>
    </div>
</div>

<div class="col-lg-12">
    <div class="panel panel-primary">
        <div class="panel-heading">
            Datos del Pedido
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-9">
                <frm:select path="" multiple="false">
                <frm:option value="0" label="Selecciona una Orden de Trabajo" />
					<c:forEach items= "${ordenes}" var= "list">
						<frm:option value="${list.idorden}" label="${list.nombre}"/>
					</c:forEach>
				</frm:select>
                </div>
            </div>
        </div>
        <div class="panel-footer">
            Detalle del Pedido
        </div>
        <div class="panel-body">
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <input type="button" value="Agregar" class="btn btn-danger" data-toggle="modal" data-target="#myModal" />
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                            	
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="panel-body">
            <button type="button" class="btn btn-info" id="btnGuardar">Guardar</button>
        </div>
    </div>
</div>
</frm:form>

<script type="text/javascript">
    $(document).ready(function () {
        $('#dataTables-example').DataTable({
            responsive: true
        });

        muestradetalle();
    });

    var muestradetalle = function () {
        
    }
</script>
<jsp:include page="/WEB-INF/views/masterpage/masterintranetfooter.jsp"></jsp:include>	