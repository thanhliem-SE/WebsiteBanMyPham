<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<!-- Google Fonts -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Newsreader&display=swap"
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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet" crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
	crossorigin="anonymous"></script>
<link href="<c:url value="/resources/user/css/style.css"/>"
	rel="stylesheet">
</head>
<body>

	<%@ include file="/common/user/header1.jsp"%>
	<decorator:body />
	<%@ include file="/common/user/footer.jsp"%>

	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
	<script src="${url}/lib/easing/easing.min.js"></script>
	<script src="${url}/lib/slick/slick.min.js"></script>
	<!-- Template Javascript -->
	<script src="${url}/js/main1.js"></script>
	<script src="${url}/js/bootstrap.js"></script>
</body>
</html>