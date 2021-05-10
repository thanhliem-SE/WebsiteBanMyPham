<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
<link href="${url}/img/favicon.ico" rel="icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400|Source+Code+Pro:700,900&display=swap"
	rel="stylesheet">

<!-- CSS Libraries -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link href="${url}/lib/slick/slick.css" rel="stylesheet">
<link href="${url}/lib/slick/slick-theme.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="${url}/css/style.css" rel="stylesheet">
</head>
<body>
	<%@ include file="/common/admin/header.jsp"%>
	<decorator:body />
	<%@ include file="/common/admin/footer.jsp"%>
	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
	<script src="${url}/lib/easing/easing.min.js"></script>
	<script src="${url}/lib/slick/slick.min.js"></script>
	<!-- Template Javascript -->
	<script src="${url}/js/main.js"></script>
</body>
</html>