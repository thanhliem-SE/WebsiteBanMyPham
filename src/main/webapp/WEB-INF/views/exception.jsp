<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error</title>
</head>

<body>
	<section id="error container"
		style="margin: 12px 63px; background: #ffffff; padding: 15px 0;">
		<div style="text-align: center">
			<div class="col-12">
				<img src="<c:url value="/resources/user/img/404error.svg"/>"
					alt="404ERROR" class="width: 100%">
			</div>
			<div class="col-12" style="margin-top: 8px">
				<p>
					Trang bạn yêu cầu không tồn tại<br> hoặc đã được chuyển sang
					địa chỉ mới
				</p>
			</div>
			<div class="col-12 text-center">
				<a href="<c:url value="/trangchu"/>"
					 style="text-decortion: none;">
					<p>
						<span>Trở về</span> <strong>TRANG CHỦ</strong>
					</p>
				</a>
			</div>
		</div>
		</div>
	</section>
</body>
</html>