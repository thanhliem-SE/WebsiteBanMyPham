<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<%@ include file="/common/taglib.jsp"%>
<section class="content">
	<div class="container-fluid">
		<div class="row clearfix">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="card">
					<div class="header">
						<h2 class="text-uppercase text-center">Quản Lý Sản Phẩm</h2>
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
							<div id="DataTables_Table_0_wrapper" style="margin-top: -62px;"
								class="dataTables_wrapper form-inline dt-bootstrap">
								<div id="DataTables_Table_0_filter" class="dataTables_filter"
									style="float: left; padding-bottom: 4px">
									<label>Search:<input type="search"
										class="form-control input-sm" placeholder="Venus"
										aria-controls="DataTables_Table_0"></label>
								</div>
								<div style="display: block;">
									<h2 style="color: white;">vinh</h2>
									<button type="button" class="btn btn-info btn-lg"
										style="background: #f44336 !important; min-width: 180px !important;"
										data-toggle="modal" data-target="#myModal">Thêm sản
										phẩm</button>

									<!-- Modal Thêm Sản Phẩm -->
									<div class="modal fade" id="myModal" role="dialog">
										<div class="modal-dialog">

											<!-- Modal content-->
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal">&times;</button>
													<h4 class="modal-title"
														style="text-align: center; text-transform: uppercase; color: #f63f2e; font-size: 24px;">Thêm
														sản phẩm</h4>
												</div>
												<div class="modal-body">
													<form class="form-horizontal" method="post"
														enctype="multipart/form-data" action="addSanPham">
														<div class="row clearfix">
															<div
																class="col-lg-3 col-md-3 col-sm-4 col-xs-5 form-control-label">
																<label for="tensp">Tên sản phẩm</label>
															</div>
															<div class="col-lg-9 col-md-9 col-sm-8 col-xs-7">
																<div class="form-group">
																	<div class="form-line">
																		<input type="text" id="tensp" name="tenSanPham"
																			required="required" class="form-control"
																			placeholder="Venus 2021">

																	</div>
																</div>
															</div>
														</div>
														<div class="row clearfix">
															<div
																class="col-lg-3 col-md-3 col-sm-4 col-xs-5 form-control-label">
																<label for="tensp">Giá</label>
															</div>
															<div class="col-lg-9 col-md-9 col-sm-8 col-xs-7">
																<div class="form-group">
																	<div class="form-line">
																		<input type="tel" id="tensp" name="donGia"
																			required="required" class="form-control"
																			placeholder="200.000">
																	</div>
																</div>
															</div>
														</div>
														<div class="row clearfix">
															<div
																class="col-lg-3 col-md-3 col-sm-4 col-xs-5 form-control-label">
																<label for="tensp">Số lượng</label>
															</div>
															<div class="col-lg-9 col-md-9 col-sm-8 col-xs-7">
																<div class="form-group">
																	<div class="form-line">
																		<input type="number" id="tensp" name="soLuongTon"
																			required="required" class="form-control"
																			placeholder="2">
																	</div>
																</div>
															</div>
														</div>
														<div class="row clearfix">
															<div
																class="col-lg-3 col-md-3 col-sm-4 col-xs-5 form-control-label">
																<label for=""thue"">Thuế</label>
															</div>
															<div class="col-lg-9 col-md-9 col-sm-8 col-xs-7">
																<div class="form-group">
																	<div class="form-line">
																		<input type="number" id="thue" name="thue"
																			required="required" class="form-control"
																			placeholder="10%">
																	</div>
																</div>
															</div>
														</div>
														<div class="row clearfix">
															<div
																class="col-lg-3 col-md-3 col-sm-4 col-xs-5 form-control-label">
																<label for="congdung">Công dụng</label>
															</div>
															<div class="col-lg-9 col-md-9 col-sm-8 col-xs-7">
																<div class="form-group">
																	<div class="form-line">
																		<textarea rows="4" class="form-control no-resize"
																			required="required" placeholder="Tươi Mát Da"
																			name="congDung"></textarea>
																	</div>
																</div>
															</div>
														</div>
														<div class="row clearfix">
															<div
																class="col-lg-3 col-md-3 col-sm-4 col-xs-5 form-control-label">
																<label for="thanhphan">Thành phần</label>
															</div>
															<div class="col-lg-9 col-md-9 col-sm-8 col-xs-7">
																<div class="form-group">
																	<div class="form-line">
																		<textarea rows="4" class="form-control no-resize"
																			name="thanhPhan" required="required"
																			placeholder="Nước Tẩy Trang L'Oreal Micellar Water 3-In-1 là dòng sản phẩm tẩy trang đến từ thương hiệu L'Oreal Paris"></textarea>
																	</div>
																</div>
															</div>
														</div>
														<div class="row clearfix">
															<div
																class="col-lg-3 col-md-3 col-sm-4 col-xs-5 form-control-label">
																<label for=""donvitinh"">Đơn vị tính</label>
															</div>
															<div class="col-lg-9 col-md-9 col-sm-8 col-xs-7 ml--15">
																<div
																	class="btn-group bootstrap-select form-control show-tick open dropup">

																	<select class="form-control show-tick" tabindex="-98"
																		name="donViTinh">
																		<option value="Chai">Chai</option>
																		<option value="Cái">Cái</option>
																		<option value="Tuýp">Tuýp</option>
																		<option value="Hộp">Hộp</option>
																		<option value="Hũ">Hũ</option>
																		<option value="Lọ">Lọ</option>
																	</select>
																</div>
															</div>
														</div>
														<div class="row clearfix">
															<div
																class="col-lg-3 col-md-3 col-sm-4 col-xs-5 form-control-label">
																<label for=""hansudung"">Hạn sử dụng</label>
															</div>
															<div class="col-lg-9 col-md-9 col-sm-8 col-xs-7 ml--15">
																<div
																	class="btn-group bootstrap-select form-control show-tick open dropup">

																	<select class="form-control show-tick" tabindex="-98"
																		name="hanSuDung">
																		<option value="6">6 tháng</option>
																		<option value="12">12 tháng</option>
																		<option value="18">18 tháng</option>
																		<option value="24">24 tháng</option>
																		<option value="36">36 tháng</option>
																	</select>
																</div>
															</div>
														</div>
														<div class="row clearfix">
															<div
																class="col-lg-3 col-md-3 col-sm-4 col-xs-5 form-control-label">
																<label for=""danhmuc"">Danh mục</label>
															</div>
															<div class="col-lg-9 col-md-9 col-sm-8 col-xs-7 ml--15">
																<div
																	class="btn-group bootstrap-select form-control show-tick open dropup">

																	<select class="form-control show-tick" tabindex="-98"
																		name="maDanhMuc">
																		<c:forEach var="dm" items="${listDanhMuc}">
																			<option value="${dm.maDanhMuc}">${dm.tenDanhMuc}</option>
																		</c:forEach>
																	</select>
																</div>
															</div>
														</div>
														<div class="row clearfix">
															<div
																class="col-lg-3 col-md-3 col-sm-4 col-xs-5 form-control-label">
																<label for=""nhacungcap"">Nhà cung cấp</label>
															</div>
															<div class="col-lg-9 col-md-9 col-sm-8 col-xs-7 ml--15">
																<div
																	class="btn-group bootstrap-select form-control show-tick open dropup">

																	<select class="form-control show-tick"
																		tabindex="-98 name="maNhaCungCap">
																		<c:forEach var="ncc" items="${listNhaCungCap}">
																			<option value="${ncc.id}">${ncc.tenNCC}</option>
																		</c:forEach>
																	</select>
																</div>
															</div>
														</div>
														<div class="row clearfix">
															<div
																class="col-lg-3 col-md-3 col-sm-4 col-xs-5 form-control-label">
																<label for=""hansudung"">Giảm giá</label>
															</div>
															<div class="col-lg-9 col-md-9 col-sm-8 col-xs-7 ml--15">
																<div
																	class="btn-group bootstrap-select form-control show-tick open dropup">
																	<select class="form-control show-tick" tabindex="-98"
																		name="giamGia">
																		<option value="5">5%</option>
																		<option value="10">10%</option>
																		<option value="15">15%</option>
																		<option value="20">20%</option>
																		<option value="25">25%</option>
																	</select>
																</div>
															</div>
														</div>
														<div class="row clearfix">
															<div
																class="col-lg-3 col-md-3 col-sm-4 col-xs-5 form-control-label">
																<label for=""hinhanh"">Hình Ảnh</label>
															</div>
															<div class="col-lg-9 col-md-9 col-sm-8 col-xs-7 ml--15">
																<input type="file" name="files" multiple="multiple" />
															</div>
														</div>
														<!-- Submit -->
														<div class="row clearfix">
															<div
																class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
															</div>
															<div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
																<button type="submit"
																	style="width: 90%; height: 40px; margin-left: 32px; margin-top: 0; background: #f63f2e !important;"
																	class="btn btn-primary m-t-15 waves-effect">Submit</button>
															</div>
														</div>
												
												</form>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-default"
													data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
							</div>
							<table
								class="table table-bordered table-striped table-hover dataTable js-exportable"
								id="DataTables_Table_0" role="grid"
								aria-describedby="DataTables_Table_0_info">
								<thead>
									<!-- 			<tr role="row"> -->
								<thead>
									<tr class="text-white">
										<th scope="col">Hình ảnh</th>
										<th scope="col">Tên mỹ phẩm</th>
										<th scope="col">Thành phần</th>
										<th scope="col">Công dụng</th>
										<th scope="col">Giá</th>
										<th scope="col">Số lượng</th>
										<!--th scope="col">Xem chi tiết</th-->
										<th scope="col" colspan="2">Hành động</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="sp" items="${listSP}">
										<!-- Modal Edit Sản Phẩm -->
										<div class="modal fade" id="modal${sp.maSanPham}"
											role="dialog">
											<div class="modal-dialog">
												<!-- Modal content-->
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal">&times;</button>
														<h4 class="modal-title"
															style="text-align: center; text-transform: uppercase; color: #f63f2e; font-size: 24px;">Edit
															sản phẩm</h4>
													</div>
													<div class="modal-body">
														<form class="form-horizontal" method="post"
															action="updateSanPham" enctype="multipart/form-data">
															<div class="row clearfix">
																<div
																	class="col-lg-3 col-md-3 col-sm-4 col-xs-5 form-control-label">
																	<label for="tensp">Tên sản phẩm</label>
																</div>
																<div class="col-lg-9 col-md-9 col-sm-8 col-xs-7">
																	<div class="form-group">
																		<div class="form-line">
																			<input name="maSanPham" value="${sp.maSanPham}"
																				hidden> <input type="text" id="tensp"
																				name="tenSanPham" required="required"
																				class="form-control" value="${sp.tenSanPham}">
																		</div>
																	</div>
																</div>
															</div>
															<div class="row clearfix">
																<div
																	class="col-lg-3 col-md-3 col-sm-4 col-xs-5 form-control-label">
																	<label for="tensp">Giá</label>
																</div>
																<div class="col-lg-9 col-md-9 col-sm-8 col-xs-7">
																	<div class="form-group">
																		<div class="form-line">
																			<input type="tel" id="tensp" name="donGia"
																				required="required" class="form-control"
																				value="${sp.donGia}">
																		</div>
																	</div>
																</div>
															</div>
															<div class="row clearfix">
																<div
																	class="col-lg-3 col-md-3 col-sm-4 col-xs-5 form-control-label">
																	<label for="tensp">Số lượng</label>
																</div>
																<div class="col-lg-9 col-md-9 col-sm-8 col-xs-7">
																	<div class="form-group">
																		<div class="form-line">
																			<input type="number" id="tensp" name="soLuongTon"
																				required="required" class="form-control"
																				value="${sp.soLuongTon}">
																		</div>
																	</div>
																</div>
															</div>
															<div class="row clearfix">
																<div
																	class="col-lg-3 col-md-3 col-sm-4 col-xs-5 form-control-label">
																	<label for=""thue"">Thuế</label>
																</div>
																<div class="col-lg-9 col-md-9 col-sm-8 col-xs-7">
																	<div class="form-group">
																		<div class="form-line">
																			<input type="number" id="thue" name="thue"
																				required="required" class="form-control"
																				value="${sp.thue}">
																		</div>
																	</div>
																</div>
															</div>
															<div class="row clearfix">
																<div
																	class="col-lg-3 col-md-3 col-sm-4 col-xs-5 form-control-label">
																	<label for="congdung">Công dụng</label>
																</div>
																<div class="col-lg-9 col-md-9 col-sm-8 col-xs-7">
																	<div class="form-group">
																		<div class="form-line">
																			<textarea rows="4" class="form-control no-resize"
																				required="required" name="congDung">${sp.congDung}</textarea>
																		</div>
																	</div>
																</div>
															</div>
															<div class="row clearfix">
																<div
																	class="col-lg-3 col-md-3 col-sm-4 col-xs-5 form-control-label">
																	<label for="thanhphan">Thành phần</label>
																</div>
																<div class="col-lg-9 col-md-9 col-sm-8 col-xs-7">
																	<div class="form-group">
																		<div class="form-line">
																			<textarea rows="4" class="form-control no-resize"
																				name="thanhPhan" required="required"
																				placeholder="Nước Tẩy Trang L'Oreal Micellar Water 3-In-1 là dòng sản phẩm tẩy trang đến từ thương hiệu L'Oreal Paris">${sp.thanhPhan}</textarea>
																		</div>
																	</div>
																</div>
															</div>
															<div class="row clearfix">
																<div
																	class="col-lg-3 col-md-3 col-sm-4 col-xs-5 form-control-label">
																	<label for=""donvitinh"">Đơn vị tính</label>
																</div>
																<div class="col-lg-9 col-md-9 col-sm-8 col-xs-7 ml--15">
																	<div
																		class="btn-group bootstrap-select form-control show-tick open dropup">
																		<select class="form-control show-tick" tabindex="-98"
																			name="donViTinh">
																			<option value="Chai">Chai</option>
																			<option value="Cái">Cái</option>
																			<option value="Tuýp">Tuýp</option>
																			<option value="Hộp">Hộp</option>
																			<option value="Hũ">Hũ</option>
																			<option value="Lọ">Lọ</option>
																		</select>
																	</div>
																</div>
															</div>
															<div class="row clearfix">
																<div
																	class="col-lg-3 col-md-3 col-sm-4 col-xs-5 form-control-label">
																	<label for=""hansudung"">Hạn sử dụng</label>
																</div>
																<div class="col-lg-9 col-md-9 col-sm-8 col-xs-7 ml--15">
																	<div
																		class="btn-group bootstrap-select form-control show-tick open dropup">
																		<select class="form-control show-tick" tabindex="-98"
																			name="hanSuDung">
																			<option value="6">6 tháng</option>
																			<option value="12">12 tháng</option>
																			<option value="18">18 tháng</option>
																			<option value="24">24 tháng</option>
																			<option value="36">36 tháng</option>
																		</select>
																	</div>
																</div>
															</div>
															<div class="row clearfix">
																<div
																	class="col-lg-3 col-md-3 col-sm-4 col-xs-5 form-control-label">
																	<label for=""danhmuc"">Danh mục</label>
																</div>
																<div class="col-lg-9 col-md-9 col-sm-8 col-xs-7 ml--15">
																	<div
																		class="btn-group bootstrap-select form-control show-tick open dropup">
																		<select class="form-control show-tick" tabindex="-98"
																			name="maDanhMuc">
																			<c:forEach var="dm" items="${listDanhMuc}">
																				<option value="${dm.maDanhMuc}"
																					<c:if test="${sp.danhMuc.maDanhMuc == dm.maDanhMuc}">selected="selected"</c:if>>${dm.tenDanhMuc}</option>
																			</c:forEach>
																		</select>
																	</div>
																</div>
															</div>
															<div class="row clearfix">
																<div
																	class="col-lg-3 col-md-3 col-sm-4 col-xs-5 form-control-label">
																	<label for="nhacungcap">Nhà cung cấp</label>
																</div>
																<div class="col-lg-9 col-md-9 col-sm-8 col-xs-7 ml--15">
																	<div
																		class="btn-group bootstrap-select form-control show-tick open dropup">
																		<select class="form-control show-tick"
																			tabindex="-98 name="maNhaCungCap">
																			<c:forEach var="ncc" items="${listNhaCungCap}">
																				<option value="${ncc.id}"
																					<c:if test="${sp.nhaCungCap.id == ncc.id}"></c:if>>${ncc.tenNCC}</option>
																			</c:forEach>
																		</select>
																	</div>
																</div>
															</div>
															<div class="row clearfix">
																<div
																	class="col-lg-3 col-md-3 col-sm-4 col-xs-5 form-control-label">
																	<label for=""hansudung"">Giảm giá</label>
																</div>
																<div class="col-lg-9 col-md-9 col-sm-8 col-xs-7 ml--15">
																	<div
																		class="btn-group bootstrap-select form-control show-tick open dropup">

																		<select class="form-control show-tick" tabindex="-98"
																			name="giamGia">
																			<option value="5"
																				<c:if test="${sp.giamGia == 5}">selected="selected"</c:if>>5%</option>
																			<option value="10"
																				<c:if test="${sp.giamGia == 10}">selected="selected"</c:if>>10%</option>
																			<option value="15"
																				<c:if test="${sp.giamGia == 15}">selected="selected"</c:if>>15%</option>
																			<option value="20"
																				<c:if test="${sp.giamGia == 20}">selected="selected"</c:if>>20%</option>
																			<option value="25"
																				<c:if test="${sp.giamGia == 25}">selected="selected"</c:if>>25%</option>
																		</select>
																	</div>
																</div>
															</div>
															<div class="row clearfix">
																<div
																	class="col-lg-3 col-md-3 col-sm-4 col-xs-5 form-control-label">
																	<label for=""hinhanh"">Hình Ảnh</label>
																</div>
																<div class="col-lg-9 col-md-9 col-sm-8 col-xs-7 ml--15">
																	<input type="file" name="files" multiple="multiple" />
																</div>
															</div>
															<div class="row clearfix">
																<div
																	class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">

																</div>
																<div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
																	<button type="submit"
																		style="width: 90%; height: 40px; margin-left: 32px; margin-top: 0; background: #f63f2e !important;"
																		class="btn btn-primary m-t-15 waves-effect">Submit</button>
																</div>
															</div>
														</form>
													</div>
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-default"
														data-dismiss="modal">Close</button>
												</div>
											</div>

										</div>
										<!-- End Modal Edit San Pham -->
										<tr>
											<td><c:forEach var="img" items="${sp.hinhAnh}">
													<img
														src="${pageContext.request.contextPath}/${urlUserImg}/${img}"
														width="100px" height="100px">
												</c:forEach></td>
											<td>${sp.tenSanPham}</td>
											<td>${sp.thanhPhan}</td>
											<td>${sp.congDung}</td>

											<td><c:set var="donGia" value="${sp.donGia }"
													scope="request" /> <%
 out.println(new DecimalFormat("#,###").format(request.getAttribute("donGia")) + "đ");
 %></td>
											<td>${sp.soLuongTon }&nbsp;${sp.donViTinh }</td>
											<td><a style="text-align: center" data-toggle="modal"
												data-target="#modal${sp.maSanPham}"><i
													class="fas fa-edit"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
												<a
												onclick="return confirm('Bạn muốn xoá sản phẩm này phải không?');"
												href="deleteSanPham?id=${sp.maSanPham}" class="text-center"><i
													class="fas fa-trash"></i></a>
										</tr>
									</c:forEach>

								</tbody>
							</table>

							<div class="dataTables_paginate paging_simple_numbers"
								id="DataTables_Table_0_paginate">
								<ul class="pagination">
									<li class="paginate_button previous"
										id="DataTables_Table_0_previous"><a
										href="quanlysanpham?page=${previosPage}"
										aria-controls="DataTables_Table_0" data-dt-idx="0"
										tabindex="0">Previous</a></li>
									<c:forEach var="page" begin="1" end="${pageCount}">
										<li class="paginate_button "><a
											href="quanlysanpham?page=${page}"
											aria-controls="DataTables_Table_0" data-dt-idx="1"
											tabindex="0">${page}</a></li>
									</c:forEach>
									<li class="paginate_button previous"
										id="DataTables_Table_0_previous"><a
										href="quanlysanpham?page=${nextPage}"
										aria-controls="DataTables_Table_0" data-dt-idx="0"
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

</section>