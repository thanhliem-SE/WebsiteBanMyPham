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
<link href="<c:url value="/resources/admin/favicon.ico"/>"
	type="image/x-icon" rel="icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext"
	rel="stylesheet" type="text/css">

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
	rel="stylesheet" type="text/css">

<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet" type="text/css">

<!-- Bootstrap Core Css -->
<link
	href="<c:url value="/resources/admin/plugins/bootstrap/css/bootstrap.min.css"/>"
	rel="stylesheet">
<!-- Waves Effect Css -->
<link
	href="<c:url value="/resources/admin/plugins/node-waves/waves.css"/>"
	rel="stylesheet">

<link
	href="<c:url value="/resources/admin/plugins/animate-css/animate.css"/>"
	rel="stylesheet">

<link href="<c:url value="/resources/admin/css/style.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/admin/css/themes/all-themes.css"/>"
	rel="stylesheet">

<!-- JQuery DataTable Css -->
<link
	href="<c:url value="/resources/admin/plugins/jquery-datatable/skin/bootstrap/css/dataTables.bootstrap.css"/>"
	rel="stylesheet">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
	
    <!-- Colorpicker Css -->
    <link href="<c:url value="/resources/admin/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.css"/>" rel="stylesheet" />
        <!-- Dropzone Css -->
    <link href="<c:url value="/resources/admin/plugins/dropzone/dropzone.css"/>" rel="stylesheet">
        <!-- Multi Select Css -->
 <link href="<c:url value="/resources/admin/plugins/multi-select/css/multi-select.css"/>" rel="stylesheet"> 
    <!-- Bootstrap Spinner Css -->
    <link href="<c:url value="/resources/admin/plugins/jquery-spinner/css/bootstrap-spinner.css"/>" rel="stylesheet">
        <!-- Bootstrap Tagsinput Css -->
    <link href="<c:url value="/resources/admin/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css"/>" rel="stylesheet">

    <!-- Bootstrap Select Css -->
    <link href="<c:url value="/resources/admin/plugins/bootstrap-select/css/bootstrap-select.css"/>" rel="stylesheet" />
    
    <!-- noUISlider Css -->
    <link href="<c:url value="/resources/admin/plugins/nouislider/nouislider.min.css"/>" rel="stylesheet" />	
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

	<!-- Slimscroll Plugin Js -->
	<script
		src="<c:url value="/resources/admin/plugins/jquery-slimscroll/jquery.slimscroll.js"/>"></script>
	<!-- Jquery DataTable Plugin Js -->
	<%-- 	<script
		src="<c:url value="/resources/admin/plugins/jquery-datatable/jquery.dataTables.js"/>"></script>
	<script
		src="<c:url value="/resources/admin/plugins/jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js"/>"></script>
	<script
		src="<c:url value="/resources/admin/plugins/jquery-datatable/extensions/export/dataTables.buttons.min.js"/>"></script>
	<script
		src="<c:url value="/resources/admin/plugins/jquery-datatable/extensions/export/buttons.flash.min.js"/>"></script>
	<script
		src="<c:url value="/resources/admin/plugins/jquery-datatable/extensions/export/jszip.min.js"/>"></script>
	<script
		src="<c:url value="/resources/admin/plugins/jquery-datatable/extensions/export/pdfmake.min.js"/>"></script>
	<script
		src="<c:url value="/resources/admin/plugins/jquery-datatable/extensions/export/vfs_fonts.js"/>"></script>
	<script
		src="<c:url value="/resources/admin/plugins/jquery-datatable/extensions/export/buttons.html5.min.js"/>"></script>
	<script
		src="<c:url value="/resources/admin/plugins/jquery-datatable/extensions/export/buttons.print.min.js"/>"></script>
	<script
		src="<c:url value="/resources/admin/js/pages/tables/jquery-datatable.js"/>"></script> --%>
		    <!-- Bootstrap Colorpicker Js -->
    <script src="<c:url value="/resources/admin/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js"/>"></script>

    <!-- Dropzone Plugin Js -->
    <script src="<c:url value="/resources/admin/plugins/dropzone/dropzone.js"/>"></script>

    <!-- Input Mask Plugin Js -->
    <script src="<c:url value="/resources/admin/plugins/jquery-inputmask/jquery.inputmask.bundle.js"/>"></script>

    <!-- Multi Select Plugin Js -->
    <script src="<c:url value="/resources/admin/plugins/multi-select/js/jquery.multi-select.js"/>"></script>

    <!-- Jquery Spinner Plugin Js -->
    <script src="<c:url value="/resources/admin/plugins/jquery-spinner/js/jquery.spinner.js"/>"></script>

    <!-- Bootstrap Tags Input Plugin Js -->
    <script src="<c:url value="/resources/admin/plugins/bootstrap-tagsinput/bootstrap-tagsinput.js"/>"></script>

    <!-- noUISlider Plugin Js -->
    <script src="<c:url value="/resources/admin/plugins/nouislider/nouislider.js"/>"></script>

    <script src="<c:url value="/resources/admin/js/pages/forms/advanced-form-elements.js"/>"/>"></script>

</body>

</html>