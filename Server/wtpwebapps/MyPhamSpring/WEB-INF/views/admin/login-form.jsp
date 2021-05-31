<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url value="/resources/admin" var="url" />
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
				<form id="sign_in" method="POST">
					<div class="msg text-uppercase" style="font-style: bold;">Login</div>
					<div class="input-group">
						<span class="input-group-addon"> <i class="material-icons">person</i>
						</span>
						<div class="form-line">
							<input type="text" class="form-control" name="username"
								placeholder="Username" required autofocus>
						</div>
					</div>
					<div class="input-group">
						<span class="input-group-addon"> <i class="material-icons">lock</i>
						</span>
						<div class="form-line">
							<input type="password" class="form-control" name="password"
								placeholder="Password" required>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-8 p-t-5">
							<input type="checkbox" name="rememberme" id="rememberme"
								class="filled-in chk-col-pink"> <label for="rememberme">Remember
								Me</label>
						</div>
						<div class="col-xs-4">
							<button class="btn btn-block waves-effect text-white" type="submit" style="background: #f44336; color: white;">SIGN
								IN</button>
						</div>
					</div>
					<div class="row m-t-15 m-b--20">
						<div class="col-xs-12 align-center">
							<a href="${pageContext.request.contextPath}/admin/password_resets/new">Forgot Password?</a>
						</div>
					</div>
				</form>
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