<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>
<jsp:include page="/WEB-INF/views/masterpage/masterintranetheader.jsp"></jsp:include>
<h3></h3>
</div>
</div>
<div class="clearfix"></div>
<div class="row">
<div class="col-md-12 col-sm-12 col-xs-12">
<div class="x_panel">
<div class="x_title">
<h2>Bienvenido:</h2>
<div class="clearfix"></div>
</div>
<div class="x_content">
<p>${usuario.trabajador.nombres} ${usuario.trabajador.apellidos}</p>
<jsp:include page="/WEB-INF/views/masterpage/masterintranetfooter.jsp"></jsp:include>	