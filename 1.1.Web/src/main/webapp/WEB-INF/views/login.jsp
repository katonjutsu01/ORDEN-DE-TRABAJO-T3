<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Constructora Bectek </title>
    <s:url value="/resources/Bootstrap/vendors/bootstrap/dist/css/bootstrap.min.css" var="css1"/>
  	<link href="${css1}" rel="stylesheet"/>
  	<s:url value="/resources/Bootstrap/vendors/font-awesome/css/font-awesome.min.css" var="css2"/>
  	<link href="${css2}" rel="stylesheet"/>
  	<s:url value="/resources/Bootstrap/vendors/nprogress/nprogress.css" var="css3"/>
  	<link href="${css3}" rel="stylesheet"/>
  	<s:url value="/resources/Bootstrap/vendors/animate.css/animate.min.css" var="css4"/>
  	<link href="${css4}" rel="stylesheet"/>
  	<s:url value="/resources/Bootstrap/build/css/custom.min.css" var="css5"/>
  	<link href="${css5}" rel="stylesheet"/>
</head>
<body class="login">
    <div>
        <a class="hiddenanchor" id="signup"></a>
        <a class="hiddenanchor" id="signin"></a>
        <div class="login_wrapper">
            <div class="animate form login_form">
                <section class="login_content">
                    <frm:form method="post" action="VerificarAcceso">
                        <h1>Login Constructor</h1>
                        <div>
                            <frm:input path="UserName" type="text" class="form-control" placeholder="Username" required="required" oninvalid="setCustomValidity('Ingresa el Username')" 
		                 oninput="setCustomValidity('')"/>
                        </div>
                        <div>
                            <frm:input path="Password" type="password" class="form-control" placeholder="Password" required="required" oninvalid="setCustomValidity('Ingresa el Password')" 
		                 oninput="setCustomValidity('')"/>
                        </div>    
                        	<input type="submit" class="btn btn-default submit" value="Ingresar" />
                        <td>
                        <%
							if(request.getParameter("msg")!=null){
								out.print("<p>"+request.getParameter("msg")+"</p>"); 
							}
						%>
                        <div class="clearfix"></div>
                        <div class="separator">
                            <div class="clearfix"></div>
                            <br />
                            <div>
                                <h1><i class="fa fa-briefcase"></i> Constructora Bectek</h1>
                            </div>
                        </div>
                    </frm:form>
                </section>
            </div>
        </div>
    </div>
</body>
</html>
