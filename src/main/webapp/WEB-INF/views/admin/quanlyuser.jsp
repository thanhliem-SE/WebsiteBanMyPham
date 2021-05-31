<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				<button class="btn btn-success" type="button" data-toggle="modal"
					data-target="#modalThemMoi">Thêm khách hàng mới</button>
				<!-- The Modal -->
				<div class="modal" id="modalThemMoi">
					<div class="modal-dialog">
						<div class="modal-content">

							<!-- Modal Header -->
							<div class="modal-header">
								<h4 class="modal-title">Thêm khách hàng mới</h4>
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>

							<!-- Modal body -->
							<div class="modal-body">
								<form:form method="post" name="registerForm"
									action="${pageContext.request.contextPath}/register">
									<div class="register-form">
										<div class="row">
											<div class="col-md-6">
												<label>Họ và tên      .</label> <input class="form-control fs14"
													type="text" placeholder="VD: Trần Văn A"
													name="tenKhachHang">
											</div>
											<div class="col-md-6">
												<label>Tên tài khoản</label> <input
													class="form-control fs14" type="text"
													placeholder="VD: username123" name="username">
											</div>
											<div class="col-md-6">
												<label>E-mail          </label> <input class="form-control fs14"
													type="text" placeholder="abc@example.com" name="email">
											</div>
											<div class="col-md-6">
												<label>Số điện thoại</label> <input
													class="form-control fs14" type="text"
													placeholder="VD: 0912345567" name="soDienThoai">
											</div>
											<div class="col-md-6">
												<label>Mật khẩu          </label> <input class="form-control fs14"
													type="password" placeholder="Mật khẩu" name="password">
											</div>
											<div class="col-md-6">
												<label>Nhập lại mật khẩu</label> <input
													class="form-control fs14" type="password"
													placeholder="Mật khẩu" name="password2">
											</div>
											<div class="col-md-12">
												<button class="btn btn-success" type="submit"
													value="themKHMoi" name="btnThemMoi">Thêm khách
													hàng mới</button>
											</div>
										</div>
									</div>
								</form:form>
							</div>

							<!-- Modal footer -->
							<div class="modal-footer">
								<button type="button" class="btn btn-danger"
									data-dismiss="modal">Close</button>
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
							<%
							int i = 1;
							%>
							<c:forEach var="element" items="${listKH}">
								<tr>
									<th scope="row"><%=i++%></th>
									<td>${element.tenKhachHang}</td>
									<td>${element.email}</td>
									<td>${element.soDienThoai}</td>
									<td>${element.user.username}</td>
									<td>${element.diaChi.thanhPho}</td>
									<td>
										<div class="row">
											<button
												class="btn btn-primary col-sm-6 col-md-6 col-lg-6 col-xl-6"
												type="button" data-toggle="modal"
												data-target="#modalEditKhachHang${element.user.username}">Sửa</button>
											<!-- The Modal -->
											<div class="modal" id="modalEditKhachHang${element.user.username}">
												<div class="modal-dialog">
													<div class="modal-content">

														<!-- Modal Header -->
														<div class="modal-header">
															<h4 class="modal-title">Cập nhật thông tin khách
																hàng</h4>
															<button type="button" class="close" data-dismiss="modal">&times;</button>
														</div>

														<!-- Modal body -->
														<div class="modal-body">
															<form:form method="post" name="submitForm"
																action="${pageContext.request.contextPath}/updateAccount">
																<div class="row">
																	
																	<div class="col-md-6">
																		<input class="form-control" type="text"
																			placeholder="Họ và tên" name="tenKhachHang"
																			value="${element.tenKhachHang} ">
																	</div>
																	<div class="col-md-6">
																		<c:if test="${not empty element.soCMND }">
																			<input class="form-control" type="text"
																			placeholder="CMND/CCCD" name="soCMND"
																			value="${element.soCMND} ">
																		</c:if>
																		<c:if test="${empty element.soCMND }">
																			<input class="form-control" type="text"
																			placeholder="CMND" name="soCMND">
																		</c:if>
																	</div>

																	<div class="col-md-6">
																		<input class="form-control" type="text"
																			placeholder="Số điện thoại" name="soDienThoai"
																			value="${element.soDienThoai}">
																	</div>
																	<div class="col-md-6">
																		<input class="form-control" type="text"
																			placeholder="Email" name="email"
																			value="${element.email}">
																	</div>
																	<div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
																		<select class="form-control form-group"
																			name="thanhPho">

																			<option value="Hồ Chí Minh">Hồ Chí Minh</option>
																			<option value="Đồng Nai">Đồng Nai</option>
																			<option value="Tiền Giang">Tiền Giang</option>
																			<option value="An Giang">An Giang</option>
																			<option value="Đồng Tháp">Đồng Tháp</option>
																			<option value="Cà Mau">Cà Mau</option>
																			<option value="Hà Tĩnh">Hà Tĩnh</option>
																		</select>
																	</div>
																	<div
																		class="col-sm-12 col-md-12 col-lg-12 col-xl-12 form-group">
																		<select class="form-control" name="quan">
																			<c:if test="${not empty element.diaChi.quan}">
																				<option value="${element.diaChi.quan}" selected
																					hidden>${element.diaChi.quan}</option>
																			</c:if>
																			<c:if test="${empty element.diaChi.quan}">
																				<option value="Quận 1" selected hidden>Quận
																					1</option>
																			</c:if>
																			<option value="Quận 1">Quận 1</option>
																			<option value="Quận 2">Quận 2</option>
																			<option value="Quận 3">Quận 3</option>
																			<option value="Quận 4">Quận 4</option>
																			<option value="Quận 5">Quận 5</option>
																			<option value="Quận 6">Quận 6</option>
																			<option value="Quận 7">Quận 7</option>
																			<option value="Quận 8">Quận 8</option>
																			<option value="Gò Vấp">Gò Vấp</option>
																		</select>
																	</div>
																	<div
																		class="col-sm-12 col-md-12 col-lg-12 col-xl-12 form-group">

																		<select class="form-control" name="phuong">
																			<c:if test="${not empty element.diaChi.phuong}">
																				<option value="${element.diaChi.phuong}" selected
																					hidden>${element.diaChi.phuong}</option>
																			</c:if>
																			<c:if test="${empty element.diaChi.phuong}">
																				<option value="Phường 1" selected hidden>Phường
																					1</option>
																			</c:if>
																			<option value="Phường 1">Phường 1</option>
																			<option value="Phường 2">Phường 2</option>
																			<option value="Phường 3">Phường 3</option>
																			<option value="Phường 4">Phường 4</option>
																			<option value="Phường 5">Phường 5</option>
																			<option value="Phường 6">Phường 6</option>
																			<option value="Phường 7">Phường 7</option>
																			<option value="Phường 8">Phường 8</option>
																			<option value="Phường Hiệp Bình Phước">Phường
																				Hiệp Bình Phước</option>
																		</select>
																	</div>
																	<div class="col-md-6">
																		<input class="form-control" type="text"
																			placeholder="VD: 42/5" name="soNha"
																			value="${element.diaChi.soNha}">
																	</div>
																	<div class="col-md-12">
																		<input class="form-control" type="text"
																			placeholder="VD: 42/5, đường số 2, phường Hiệp Bình Phước, Thủ Đức, HCM"
																			name="ghiChu" value="${element.diaChi.ghiChu}">
																	</div>

																	<div class="col-md-12">
																		<button class="btn" type="submit" name="btnCapNhat" value="${element.user.username}">Cập nhật</button>
																		<br>
																		<br>
																	</div>
																</div>
															</form:form>
														</div>

														<!-- Modal footer -->
														<div class="modal-footer">
															<button type="button" class="btn btn-danger"
																data-dismiss="modal">Close</button>
														</div>

													</div>
												</div>
											</div>
											<form:form method="post" name="registerForm"
												action="${pageContext.request.contextPath}/admin/deleteKH">
												<button
													class="btn btn-danger col-sm-6 col-md-6 col-lg-6 col-xl-6"
													type="submit" name="btnDelete"
													value="${element.user.username}">Xóa</button>
											</form:form>
										</div>

									</td>

								</tr>
							</c:forEach>
						</c:if>

					</tbody>
				</table>
				>>>>>>> branch 'main' of
				https://github.com/thanhliem-SE/WebsiteBanMyPham.git
			</div>
		</div>
		<!-- #END# Exportable Table -->
	</div>

</section>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
