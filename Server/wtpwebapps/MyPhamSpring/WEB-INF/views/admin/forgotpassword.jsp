<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url value="/resources/admin" var="url" />
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<title>Forgot Password | Estore Design</title>
<!-- Favicon-->
<link rel="icon" href="/resources/admin/favicon.ico" type="image/x-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet" type="text/css">

<!-- Bootstrap Core Css -->
<link
	href="<c:url value="/resources/admin/plugins/bootstrap/css/bootstrap.css"/>"
	rel="stylesheet">

<!-- Waves Effect Css -->
<link
	href="<c:url value="/resources/admin/plugins/node-waves/waves.css"/>"
	rel="stylesheet" />

<!-- Animation Css -->
<link
	href="<c:url value="/resources/admin/plugins/animate-css/animate.css"/>"
	rel="stylesheet" />

<!-- Custom Css -->
<link href="../../css/style.css" rel="stylesheet">
<!-- Custom Css -->
<link href="<c:url value="/resources/admin/css/main.css"/>"
	rel="stylesheet">
</head>

<body class="fp-page">
	<div class="fp-box">
		<div class="logo">
			<a href="javascript:void(0);">Admin<b>EST</b></a> <small>Admin
				Estore Based - Estore Design</small>
		</div>
		<div class="card">
			<div class="body">
				<form id="forgot_password" method="POST">
					<div class="msg">Nhập địa chỉ email của bạn mà bạn đã sử dụng
						để đăng ký. Chúng tôi sẽ gửi cho bạn một email với tên người dùng
						của bạn và một liên kết để đặt lại mật khẩu của bạn.</div>
					<div class="input-group">
						<span class="input-group-addon"> <i class="material-icons">email</i>
						</span>
						<div class="form-line">
							<input type="email" class="form-control" name="email"
								placeholder="Email" required autofocus>
						</div>
					</div>

					<button class="btn btn-block btn-lg bg-pink waves-effect"
						type="submit">RESET MY PASSWORD</button>

					<div class="row m-t-20 m-b--5 align-center">
						<a href="sign-in.html">Sign In!</a>
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
	<!-- Waves Effect Plugin Js -->
	<script
		src="<c:url value="/resources/admin/plugins/node-waves/waves.js"/>"></script>

	<!-- Custom Js -->
	<script src="<c:url value="/resources/admin/js/admin.js"/>"></script>
	<script src="<c:url value="/resources/admin/js/pages/examples/forgot-password.js"/>"></script>
</body>

</html>