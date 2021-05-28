<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/common/taglib.jsp"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<section class="content">
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		<div class="card">
			<div class="header">
				<h2 class="text-uppercase">Quản lý user</h2>
				<ul class="header-dropdown m-r--5">
					<li class="dropdown"><a href="javascript:void(0);"
						class="dropdown-toggle" data-toggle="dropdown" role="button"
						aria-haspopup="true" aria-expanded="false"> <i
							class="material-icons">more_vert</i>
					</a>
						<ul class="dropdown-menu pull-right">
							<li><a href="javascript:void(0);"
								class=" waves-effect waves-block">Action</a></li>
							<li><a href="javascript:void(0);"
								class=" waves-effect waves-block">Another action</a></li>
							<li><a href="javascript:void(0);"
								class=" waves-effect waves-block">Something else here</a></li>
						</ul></li>
				</ul>
			</div>
			<div class="body table-responsive">
				<button class="btn btn-success" type="button"  data-toggle="modal" data-target="#myModal">Thêm khách hàng mới</button>
				<!-- The Modal -->
				<div class="modal" id="myModal">
				  <div class="modal-dialog">
				    <div class="modal-content">
					
				      <!-- Modal Header -->
				      <div class="modal-header">
				        <h4 class="modal-title">Modal Heading</h4>
				        <button type="button" class="close" data-dismiss="modal">&times;</button>
				      </div>
				
				      <!-- Modal body -->
				      <div class="modal-body">
				        <form:form method="post" name="registerForm" action="${pageContext.request.contextPath}/register">
						<div class="register-form">
							<div class="row">
								<div class="col-md-6">
									<label>Họ và tên</label> <input class="form-control fs14" type="text"
										placeholder="VD: Trần Văn A" name="tenKhachHang">
								</div>
								<div class="col-md-6">
									<label>Tên tài khoản</label> <input class="form-control fs14"
										type="text" placeholder="VD: username123" name="username">
								</div>
								<div class="col-md-6">
									<label>E-mail</label> <input class="form-control fs14" type="text"
										placeholder="abc@example.com" name="email">
								</div>
								<div class="col-md-6">
									<label>Số điện thoại</label> <input class="form-control fs14"
										type="text" placeholder="VD: 0912345567" name="soDienThoai">
								</div>
								<div class="col-md-6">
									<label>Mật khẩu</label> <input class="form-control fs14" type="password"
										placeholder="Mật khẩu" name="password">
								</div>
								<div class="col-md-6">
									<label>Nhập lại mật khẩu</label> <input class="form-control fs14"
										type="password" placeholder="Mật khẩu" name="password2">
								</div>
								<div class="col-md-12">
									<button class="btn btn-success" type="submit" value="themKHMoi" name="btnThemMoi">Thêm khách hàng mới</button>
								</div>
							</div>
						</div>
					</form:form>
				      </div>
				
				      <!-- Modal footer -->
				      <div class="modal-footer">
				        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
				      </div>
				
				    </div>
				  </div>
				</div>
				<table class="table table-striped">
					<thead>
						
					
						<tr>
							<th class="text-uppercase">STT</th>
							<th>Tên</th>
							<th>Email</th>
							<th>Số điện thoại</th>
							<th>Username</th>
							<th>Địa chỉ</th>
							<th>Hành động</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${not empty listKH }">
							 <% int i=1; %>
							<c:forEach var="element" items="${listKH}">
								<tr>
									<th scope="row"><%= i++ %></th>
									<td>${element.tenKhachHang}</td>
									<td>${element.email}</td>
									<td>${element.soDienThoai}</td>
									<td>${element.user.username}</td>
									<td>${element.diaChi.thanhPho}</td>
									<td>
									<div class="row">
										<form:form method="post" name="registerForm" action="${pageContext.request.contextPath}/deleteKH">
											<button class="btn btn-primary col-sm-6 col-md-6 col-lg-6 col-xl-6">Sửa</button>
										</form:form>
										<form:form method="post" name="registerForm" action="${pageContext.request.contextPath}/admin/quanlyuser/deleteKH">
											<button class="btn btn-danger col-sm-6 col-md-6 col-lg-6 col-xl-6" type="submit" name="btnDelete" value="${element.user.username}">Xóa</button>
										</form:form>
									</div>
										
									</td>

								</tr>
							</c:forEach>
						</c:if>
						
					</tbody>
				</table>
			</div>
		</div>
	</div>



</section>