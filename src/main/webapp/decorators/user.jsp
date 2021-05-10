<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<c:url value="/resources" var="url" />
<link href="${url}/img/favicon.ico" rel="icon">

<!-- Google Fonts -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Titillium+Web&display=swap" rel="stylesheet">
<!-- CSS Libraries -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link href="${url}/lib/slick/slick.css" rel="stylesheet">
<link href="${url}/lib/slick/slick-theme.css" rel="stylesheet">

<!-- Template Stylesheet-->
<link href="${url}/css/style.css" rel="stylesheet">
</head>
<body>

	<%@ include file="/common/user/header.jsp"%>
	<decorator:body />
	<%@ include file="/common/user/footer.jsp"%>
	
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