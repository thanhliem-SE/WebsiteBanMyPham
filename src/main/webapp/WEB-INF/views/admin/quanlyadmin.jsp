<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/common/taglib.jsp"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<section class="content">
	<div class="container-fluid">
		<!-- #END# Basic Examples -->
		<!-- Exportable Table -->
		<div class="row clearfix">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="card">
					<div class="header">
						<h2 class="text-uppercase text-center">Quản Lý Admin</h2>
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
								<div class="col-md-12">
												<button class="btn btn-success" type="button" data-toggle="modal"
														data-target="#modalThemMoi">Thêm nhân viên mới</button>
								</div>
									<!-- The Modal -->
									<div class="modal" id="modalThemMoi">
										<div class="modal-dialog">
											<div class="modal-content">
					
												<!-- Modal Header -->
												<div class="modal-header">
													<h4 class="modal-title">Thêm nhân viên mới</h4>
													<button type="button" class="close" data-dismiss="modal">&times;</button>
												</div>
					
												<!-- Modal body -->
												<div class="modal-body">
													<form:form method="post" name="registerNhanVien"
														action="${pageContext.request.contextPath}/admin/registerNhanVien">
														<div class="register-form">
															<div class="row">
																<div class="col-sm-6 col-md-6 col-lg-6 col-xl-6">
																	<label>Họ và tên</label> <br><input class="form-control fs14 "
																		type="text" placeholder="VD: Trần Văn A"
																		name="tenNhanVien">
																</div>
																<div class="col-sm-6 col-md-6 col-lg-6 col-xl-6">
																	<label>Tên tài khoản</label> <input
																		class="form-control fs14" type="text"
																		placeholder="VD: username123" name="username">
																</div>
																<div class="col-sm-6 col-md-6 col-lg-6 col-xl-6">
																	<label>E-mail</label> <br><input class="form-control fs14"
																		type="text" placeholder="abc@example.com" name="email">
																</div>
																<div class="col-sm-6 col-md-6 col-lg-6 col-xl-6">
																	<label>Số điện thoại</label> <input
																		class="form-control fs14" type="text"
																		placeholder="VD: 0912345567" name="soDienThoai">
																</div>
																<div class="col-sm-6 col-md-6 col-lg-6 col-xl-6">
																	<label>Mật khẩu</label><br> <input class="form-control fs14"
																		type="password" placeholder="Mật khẩu" name="password">
																</div>
																<div class="col-sm-6 col-md-6 col-lg-6 col-xl-6">
																	<label>Nhập lại mật khẩu</label> <input
																		class="form-control fs14" type="password"
																		placeholder="Mật khẩu" name="password2">
																</div>
																
																<div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
																	<button class="btn btn-success" type="submit"
																		value="btnThemNV" name="btnThemNV">Thêm mới</button>
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
											<th scope="col">Chức vụ</th>
											<th scope="col">Hành động</th>
										</tr>
									</thead>

									<tbody>
										<c:if test="${not empty listNV }">
										<%
										int i = 1;
										%>
										<c:forEach var="element" items="${listNV}">
											<tr>
												<th scope="row"><%=i++%></th>
												<td>${element.tenNhanVien}</td>
												<td>${element.email}</td>
												<td>${element.soDienThoai}</td>
												<td>${element.user.username}</td>
												<td>${element.chucVu}</td>
												<td>
										<div class="row">
											<button
												class="btn btn-primary col-sm-6 col-md-6 col-lg-6 col-xl-6"
												type="button" data-toggle="modal"
												data-target="#modalEditNhanVien${element.user.username}">Sửa</button>
											<!-- The Modal -->
											<div class="modal" id="modalEditNhanVien${element.user.username}">
												<div class="modal-dialog">
													<div class="modal-content">

														<!-- Modal Header -->
														<div class="modal-header">
															<h4 class="modal-title">Cập nhật thông tin nhân viên</h4>
															<button type="button" class="close" data-dismiss="modal">&times;</button>
														</div>

														<!-- Modal body -->
														<div class="modal-body">
															<form:form method="post" name="submitForm"
																action="${pageContext.request.contextPath}/admin/updateNhanVien">
																<div class="row">
																	
																	<div class="col-md-6">
																		<label>Tên nhân viên:</label><br>
																		<input class="form-control" type="text"
																			placeholder="Họ và tên" name="tenNhanVien"
																			value="${element.tenNhanVien}">
																	</div>
																	<div class="col-md-6">
																		<label>CMND/CCCD:</label><br>
																		<c:if test="${not empty element.CMND}">
																			<input class="form-control" type="text"
																			placeholder="CMND/CCCD" name="CMND"
																			value="${element.CMND}">
																		</c:if>
																		<c:if test="${empty element.CMND }">
																			<input class="form-control" type="text"
																			placeholder="CMND" name="CMND">
																		</c:if>
																	</div>
				
																	
																	<div class="col-md-6">
																		<label>Số điện thoại:</label><br>
																		<input class="form-control" type="text"
																			placeholder="Số điện thoại" name="soDienThoai"
																			value="${element.soDienThoai}">
																	</div>
																	<div class="col-md-6">
																		<label>E-Mail:</label><br>
																		<input class="form-control" type="email"
																			placeholder="Email" name="email"
																			value="${element.email}">
																	</div>
																	<div class="col-sm-6 col-md-6 col-lg-6 col-xl-6">
																		<label>Năm sinh:</label><br>
																		<select class="form-control" name="namSinh">
																			<c:if test="${not empty element.namSinh}">
																				<option value="${element.namSinh}" selected
																					hidden>${element.namSinh}</option>
																			</c:if>
																			<c:if test="${empty element.namSinh}">
																				<option value="1995" selected hidden>1995</option>
																			</c:if>
																			<c:forEach var="item" begin="1950" end="2020" step="1">
																				<option value="${item}">${item}</option>
																			</c:forEach>
																		</select>
																	
																	</div>
																	<div
																		class="col-sm-6 col-md-6 col-lg-6 col-xl-6 form-group">
																		<label>Chức vụ:</label><br>
																		<select class="form-control" name="chucVu">
																			<c:if test="${not empty element.chucVu}">
																				<option value="${element.chucVu}" selected
																					hidden>${element.chucVu}</option>
																			</c:if>
																			<c:if test="${empty element.chucVu}">
																				<option value="USER" selected hidden>USER</option>
																			</c:if>
																			<option value="ADMIN">ADMIN</option>
																			<option value="MANAGER">MANAGER</option>
																		</select>
																	</div>
																	<div
																		class="col-sm-6 col-md-6 col-lg-6 col-xl-6 form-group">
																		<label>Giới tính:</label><br>
																		<select class="form-control" name="gioiTinh">
																			<c:if test="${not empty element.gioiTinh}">
																				<option value="${element.gioiTinh}" selected
																					hidden>${element.gioiTinh}</option>
																			</c:if>
																			<c:if test="${empty element.gioiTinh}">
																				<option value="Man" selected hidden>Man</option>
																			</c:if>
																			<option value="Man">Man</option>
																			<option value="Female">Female</option>
																		</select>
																	</div>
																	<div
																		class="col-sm-6 col-md-6 col-lg-6 col-xl-6 form-group">
																		<label>Học vấn:</label><br>
																		<select class="form-control" name="trinhDoHocVan">
																			<c:if test="${not empty element.trinhDoHocVan}">
																				<option value="${element.trinhDoHocVan}" selected
																					hidden>${element.trinhDoHocVan}</option>
																			</c:if>
																			<c:if test="${empty element.trinhDoHocVan}">
																				<option value="Đại Học" selected hidden>Đại Học</option>
																			</c:if>
																			<option value="Đại học">Đại học</option>
																			<option value="Tiểu học">Tiểu học</option>
																			<option value="THCS">THCS</option>
																			<option value="THPT">THPT</option>
																			<option value="Khác">Khác</option>
																		</select>
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
												action="${pageContext.request.contextPath}/admin/deleteNV">
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
		<!-- #END# Exportable Table -->
	</div>
</section>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>