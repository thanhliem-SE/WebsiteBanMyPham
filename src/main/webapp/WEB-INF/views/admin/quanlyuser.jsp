<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/common/taglib.jsp"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<section class="content">
<<<<<<< HEAD
	<div class="container-fluid">
		<!-- #END# Basic Examples -->
		<!-- Exportable Table -->
		<div class="row clearfix">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="card">
					<div class="header">
						<h2 class="text-uppercase text-center">Quản Lý User</h2>
						<ul class="header-dropdown m-r--5">
							<li class="dropdown"><a href="javascript:void(0);"
								class="dropdown-toggle" data-toggle="dropdown" role="button"
								aria-haspopup="true" aria-expanded="true"> <i
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
					<div class="body">
						<div class="table-responsive">
							<div id="DataTables_Table_0_wrapper"
								class="dataTables_wrapper form-inline dt-bootstrap">
								<div id="DataTables_Table_0_filter" class="dataTables_filter"
									style="float: left; padding-bottom: 4px">
									<label>Search:<input type="search"
										class="form-control input-sm" placeholder=""
										aria-controls="DataTables_Table_0"></label>
								</div>
								<table
									class="table table-bordered table-striped table-hover dataTable js-exportable"
									id="DataTables_Table_0" role="grid"
									aria-describedby="DataTables_Table_0_info">
									<thead>
										<tr role="row">
									<thead>
										<tr class="text-white">
											<th scope="col">#</th>
											<th scope="col">Tên</th>
											<th scope="col">Email</th>
											<th scope="col">Số điện thoại</th>
											<th scope="col">Username</th>
											<th scope="col">Ngày tạo</th>
											<th scope="col">Hành động</th>
										</tr>
									</thead>

									<tbody>
										<tr>
											<th scope="row">1</th>
											<td>Hoàng Sơn</td>
											<td>hoangson@estore.com</td>
											<td>0987999888</td>
											<td>@hoangson</td>
											<td>05-05-2021</td>
											<td><a href="javascript:void(0);" class="text-center"><i
													class="fas fa-user-edit"></i></a>
										</tr>
										</tr>
										<tr>
											<th scope="row">2</th>
											<td>Trung Vinh</td>
											<td>trungvinh@estore.com</td>
											<td>0337933366</td>
											<td>@trungvinh</td>
											<td>06-05-2021</td>
											<td><a href="javascript:void(0);" class="text-center"><i
													class="fas fa-user-edit"></i></a>
										</tr>
										</tr>
										<tr>
											<th scope="row">3</th>
											<td>Thanh Liêm</td>
											<td>thanhliem@estore.com</td>
											<td>0987059059</td>
											<td>@thanhliem</td>
											<td>07-05-2021</td>
											<td><a href="javascript:void(0);" class="text-center"><i
													class="fas fa-user-edit"></i></a>
										</tr>
										</tr>
									</tbody>
								</table>
								<div class="dataTables_info" id="DataTables_Table_0_info"
									role="status" aria-live="polite">Showing 51 to 57 of 57
									entries</div>
								<div class="dataTables_paginate paging_simple_numbers"
									id="DataTables_Table_0_paginate">
									<ul class="pagination">
										<li class="paginate_button previous"
											id="DataTables_Table_0_previous"><a href="#"
											aria-controls="DataTables_Table_0" data-dt-idx="0"
											tabindex="0">Previous</a></li>
										<li class="paginate_button "><a href="#"
											aria-controls="DataTables_Table_0" data-dt-idx="1"
											tabindex="0">1</a></li>
										<li class="paginate_button "><a href="#"
											aria-controls="DataTables_Table_0" data-dt-idx="2"
											tabindex="0">2</a></li>
										<li class="paginate_button "><a href="#"
											aria-controls="DataTables_Table_0" data-dt-idx="3"
											tabindex="0">3</a></li>
										<li class="paginate_button "><a href="#"
											aria-controls="DataTables_Table_0" data-dt-idx="4"
											tabindex="0">4</a></li>
										<li class="paginate_button "><a href="#"
											aria-controls="DataTables_Table_0" data-dt-idx="5"
											tabindex="0">5</a></li>
										<li class="paginate_button active"><a href="#"
											aria-controls="DataTables_Table_0" data-dt-idx="6"
											tabindex="0">6</a></li>
										<li class="paginate_button next disabled"
											id="DataTables_Table_0_next"><a href="#"
											aria-controls="DataTables_Table_0" data-dt-idx="7"
											tabindex="0">Next</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
=======
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
>>>>>>> branch 'main' of https://github.com/thanhliem-SE/WebsiteBanMyPham.git
			</div>
		</div>
		<!-- #END# Exportable Table -->
	</div>
</section>