<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ page import="Pojo.Usuario" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Constructora Bectek</title>
    <s:url value="/resources/Bootstrap/vendors/bootstrap/dist/css/bootstrap.min.css" var="css1"/>
    <link href="${css1}" rel="stylesheet"/>
    <s:url value="/resources/Bootstrap/vendors/font-awesome/css/font-awesome.min.css" var="css2"/>
    <link href="${css2}" rel="stylesheet"/>
    <s:url value="/resources/Bootstrap/vendors/nprogress/nprogress.css" var="css3"/>
    <link href="${css3}" rel="stylesheet"/>
    <s:url value="/resources/Bootstrap/build/css/custom.min.css" var="css4"/>
    <link href="${css4}" rel="stylesheet"/>
    <s:url value="/resources/Bootstrap/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" var="css5"/>
    <link href="${css6}" rel="stylesheet"/>
    <s:url value="/resources/Bootstrap/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" var="css6"/>
    <link href="${css6}" rel="stylesheet"/>
    <s:url value="/resources/Bootstrap/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" var="css7"/>
    <link href="${css7}" rel="stylesheet"/>
</head>
<%
	HttpSession a = request.getSession(); 
	Usuario u = (Usuario) a.getAttribute("usuario");
%>
<body class="nav-md">
    <div class="container body">
        <div class="main_container">
            <div class="col-md-3 left_col">
                <div class="left_col scroll-view">
                    <div class="navbar nav_title" style="border: 0;">
                        <a href="${pageContext.request.contextPath}/MenuConstructor/Menu" class="site_title"><i class="fa fa-briefcase"></i> <span>Const. Bectek</span></a>
                    </div>
                    <div class="clearfix"></div>
                    <!-- menu profile quick info -->
                    <div class="profile clearfix">
                        <div class="profile_pic">
                            <img src="../resources/Bootstrap/images/${usuario.imagen}"  alt="..." class="img-circle profile_img"> 
                        </div>
                        <div class="profile_info">
                            <span>Bienvenido,</span>
                            <h2>${usuario.trabajador.nombres} ${usuario.trabajador.apellidos}</h2>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <!-- /menu profile quick info -->
                    <br />
                    <!-- sidebar menu -->
                    <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                        <div class="menu_section">
                            <h3>General</h3>
                            <ul class="nav side-menu">
                                <li>
                                    <a href="${pageContext.request.contextPath}/MenuConstructor/Menu"><i class="fa fa-home"></i> Home </a>
                                </li>
                                <li>
                                    <a><i class="fa fa-edit"></i> Registros <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu">
                                    	<li><a href="${pageContext.request.contextPath}/CRUDTipoMaterial/Lista">Tipo de Material</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a><i class="fa fa-desktop"></i> Servicio <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu">
                                    	<li><a href="${pageContext.request.contextPath}/COREOrdenTrabajo/Nuevo">Orden de Trabajo</a></li>
                                        <li><a href="${pageContext.request.contextPath}/COREPedido/Index">Pedido</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- /sidebar menu -->
                </div>
            </div>
            <!-- top navigation -->
            <div class="top_nav">
                <div class="nav_menu">
                    <nav>
                        <div class="nav toggle">
                            <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                        </div>
                        <ul class="nav navbar-nav navbar-right">
                            <li class="">
                                <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                    <img src="../resources/Bootstrap/images/${usuario.imagen}" alt="">${usuario.userName}
                                    <span class=" fa fa-angle-down"></span>
                                </a>
                                <ul class="dropdown-menu dropdown-usermenu pull-right">
                                    <li><a href="${pageContext.request.contextPath}/MenuConstructor/CerrarSesion"><i class="fa fa-sign-out pull-right"></i> Cerrar Session</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
            <!-- /top navigation -->
            <!-- page content -->
            <div class="right_col" role="main">
                <div class="">
                    <div class="page-title">
                        <div class="title_left">