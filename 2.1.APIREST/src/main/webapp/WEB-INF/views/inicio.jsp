<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<p>Servicio API REST Sistema de Orden de Trabajo</p>
	<p>Descriptor de Servicios</p>
	<p>ACCESO</p>
	<ul>
		<li>Usuario/VerificarAcceso?user= &pass=</li>
	</ul>
	<p>CRUDS</p>
	<p>Tipo Material</p>
	<ul>
		<li>TipoMaterial/ListarTipoMaterial</li>
		<li>TipoMaterial/EliminarTipoMaterial?idtipomaterial=</li>
		<li>TipoMaterial/InsertarTipoMaterial</li>
		<li>TipoMaterial/EditarTipoMaterial?idtipomaterial= &descripcion=</li>
		<li>TipoMaterial/DevolverTipoMaterial?idtipomaterial=</li>	
	</ul>
	<p>Material</p>
	<ul>
		<li>Material/ListarMaterial</li>
		<li>Material/EliminarMaterial?idmaterial=</li>
		<li>Material/InsertarMaterial?nombre= &idtipomaterial=</li>
		<li>Material/EditarMaterial?idmaterial= &nombre= &idtipomaterial=</li>
		<li>Material/DevolverMaterial?idmaterial=</li>	
	</ul>	
	<p>Actividad</p>
	<ul>
		<li>Actividad/ListarActividad</li>
		<li>Actividad/EliminarActividad?idActividad=</li>
		<li>Actividad/InsertarActividad?descripcion= &tiempoestimado=
		<li>Actividad/EditarActividad?idActividad= &descripcion= &tiempoestimado=</li>
		<li>Actividad/DevolverActividad?idActividad=</li>
	</ul>
	<p>Obra</p>
	<ul>
		<li>Obra/ListarObra</li>
		<li>Obra/EliminarObra?idobra=</li>
		<li>Obra/InsertarObra?nombre= &descripcion= &idpresupuesto=</li>
		<li>Obra/EditarObra?idobra= &nombre= &descripcion= &idpresupuesto= &activo=</li>
		<li>Obra/DevolverObra?idobra=</li>	
	</ul>		
	<p>Presupuesto</p>
	<li>Presupuesto/ListarPresupuesto</li>
	<p>CORE ORDEN TRABAJO</p>
	<ul>
		<li>Obra/ListarObra</li>
		<li>Actividad/ListarActividad</li>
		<li>Trabajador/ListarTrabajador</li>
		<li>Orden/InsertarOrden!POST</li>
		<li>Trabajador/EditarTrabajador?idTrabajador= &estado=</li>	
	</ul>
</body>
</html>