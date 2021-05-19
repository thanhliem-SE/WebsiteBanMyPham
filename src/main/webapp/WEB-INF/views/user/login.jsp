<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="login">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-6">
				<form:form method="post" name="registerForm" action="${pageContext.request.contextPath}/register">
					<div class="register-form">
						<div class="row">
							<div class="col-md-6">
								<label>Họ và tên</label> <input class="form-control" type="text"
									placeholder="VD: Trần Văn A" name="tenKhachHang">
							</div>
							<div class="col-md-6">
								<label>Tên tài khoản</label> <input class="form-control"
									type="text" placeholder="VD: username123" name="username">
							</div>
							<div class="col-md-6">
								<label>E-mail</label> <input class="form-control" type="text"
									placeholder="abc@example.com" name="email">
							</div>
							<div class="col-md-6">
								<label>Số điện thoại</label> <input class="form-control"
									type="text" placeholder="VD: 0912345567" name="soDienThoai">
							</div>
							<div class="col-md-6">
								<label>Mật khẩu</label> <input class="form-control" type="password"
									placeholder="Mật khẩu" name="password">
							</div>
							<div class="col-md-6">
								<label>Nhập lại mật khẩu</label> <input class="form-control"
									type="password" placeholder="Mật khẩu" name="password2">
							</div>
							<div class="col-md-12">
								<button class="btn" type="submit" value="Register">Đăng
									ký</button>
							</div>
						</div>
					</div>
				</form:form>

			</div>
			<div class="col-lg-6">
				<form:form method="post" name="submitForm" action="${pageContext.request.contextPath}/login">
					<div class="login-form">
						<div class="row">
							<div class="col-md-6">
								<label>E-mail / Tên tài khoản</label> <input
									class="form-control" type="text"
									placeholder="E-mail / Username" name="username">
							</div>
							<div class="col-md-6">
								<label>Mật khẩu</label> <input class="form-control" type="Password"
									placeholder="Mật khẩu" name="password">
							</div>
							<div class="col-md-12">
								<div class="custom-control custom-checkbox">
									<input type="checkbox" class="custom-control-input"
										id="newaccount"> <label class="custom-control-label"
										for="newaccount">Duy trì đăng nhập</label>
								</div>
							</div>
							<div class="col-md-12">
								<button class="btn" type="submit" value="Login">Đăng nhập</button>
							</div>
						</div>
					</div>
				</form:form>

			</div>
		</div>
	</div>
</div>