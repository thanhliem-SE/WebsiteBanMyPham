<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url value="/resources/admin" var="url" />
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<title>Sign In | Estore Based Admin - Estore Design</title>
<!-- Favicon-->
<link rel="icon" href="/resources/admin/favicon.ico" type="image/x-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet" type="text/css">

<!-- Bootstrap Core Css -->
<link href="<c:url value="/resources/admin/plugins/bootstrap/css/bootstrap.css"/>" rel="stylesheet">

<!-- Waves Effect Css -->
<link href="<c:url value="/resources/admin/plugins/node-waves/waves.css"/>" rel="stylesheet" />

<!-- Animation Css -->
<link href="<c:url value="/resources/admin/plugins/animate-css/animate.css"/>" rel="stylesheet" />

<!-- Custom Css -->
<link href="<c:url value="/resources/admin/css/main.css"/>" rel="stylesheet">
</head>

<body class="login-page" style="background: #f44336">
	<div class="login-box">
		<div class="logo">
			<a href="javascript:void(0);">Admin<b>EST</b></a> <small>Admin
				Estore Based - Estore Design</small>
		</div>
		<div class="card">
			<div class="body">
				<form:form method="post" name="submitForm" action="${pageContext.request.contextPath}/j_spring_security_check_admin">
				    <div class="form-group">
				      <label class="control-label col-sm-2">Tài khoản</label>
				      <div class="col-sm-5">
				        <input type="text" class="form-control" placeholder="Enter Username" name="username">
				      </div>
				      <div class="col-sm-5"></div>
				    </div>
				    <div class="form-group">
				      <label class="control-label col-sm-2" for="pwd">Mật khẩu:</label>
				      <div class="col-sm-5">          
				        <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password">
				      </div>
				      <div class="col-sm-5"></div>
				    </div>
				    <div class="form-group">        
				      <div class="col-sm-offset-2 col-sm-10">
				        <div class="checkbox">
				          <label><input type="checkbox" name="remember"> Remember me</label>
				        </div>
				      </div>
				    </div>
				    <div class="form-group">        
				      <div class="col-sm-offset-2 col-sm-10">
				        <button type="submit" class="btn btn-default" value="submit">Đăng nhập</button>
				      </div>
				    </div>
				  </form:form>
			</div>
		</div>
	</div>

	<!-- Jquery Core Js -->
	<script src="<c:url value="/resources/admin/plugins/jquery/jquery.min.js"/>"></script>

	<!-- Bootstrap Core Js -->
	<script src="<c:url value="/resources/admin/plugins/bootstrap/js/bootstrap.js"/>"></script>

	<!-- Validation Plugin Js -->
	<script src="<c:url value="/resources/admin/plugins/jquery-validation/jquery.validate.js"/>"></script>
	<script
		src="<c:url value="/resources/admin/plugins/bootstrap-select/js/bootstrap-select.js"/>"></script>
	<!-- Waves Effect Plugin Js -->
	<script
		src="<c:url value="/resources/admin/plugins/node-waves/waves.js"/>"></script>

	<!-- Custom Js -->
	<script src="<c:url value="/resources/admin/js/admin.js"/>"></script>
	<script src="<c:url value="/resources/admin/js/pages/examples/sign-in.js"/>"></script>
</body>

</html>