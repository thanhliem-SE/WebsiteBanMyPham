<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<title>Admin Estore</title>
<!-- Favicon-->
<link href="<c:url value="/resources/admin/favicon.ico"/>" type="image/x-icon" rel="icon">

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
	rel="stylesheet">

<link
	href="<c:url value="/resources/admin/plugins/animate-css/animate.css"/>"
	rel="stylesheet">

<link href="<c:url value="/resources/admin/css/main.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/admin/css/themes/all-themes.css"/>"
	rel="stylesheet">

</head>

<body class="theme-red">

	<%@ include file="/common/admin/header.jsp"%>

	<decorator:body />
	<%@ include file="/common/admin/sideleft.jsp"%>
	<!-- Jquery Core Js -->
	<script
		src="<c:url value="/resources/admin/plugins/jquery/jquery.min.js"/>"></script>
	<!-- Bootstrap Core Js -->
	<script
		src="<c:url value="/resources/admin/plugins/bootstrap/js/bootstrap.js"/>"></script>
	<!-- Select Plugin Js -->
	<script
		src="<c:url value="/resources/admin/plugins/bootstrap-select/js/bootstrap-select.js"/>"></script>
	<!-- Waves Effect Plugin Js -->
	<script
		src="<c:url value="/resources/admin/plugins/node-waves/waves.js"/>"></script>
	<script
		src="<c:url value="/resources/admin/plugins/morrisjs/morris.js"/>"></script>


	<!-- Custom Js -->
	<script src="<c:url value="/resources/admin/js/admin.js"/>"></script>
	<script src="<c:url value="/resources/admin/js/pages/index.js"/>"></script>
	<!-- Demo Js -->
	<script src="<c:url value="/resources/admin/js/demo.js"/>"></script>
</body>

</html>