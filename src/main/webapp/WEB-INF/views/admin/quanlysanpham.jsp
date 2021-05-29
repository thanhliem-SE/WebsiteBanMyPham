<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/common/taglib.jsp"%>
<section class="content">
	<div class="container-fluid">
		<!-- #END# Basic Examples -->
		<!-- Exportable Table -->
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
										style="background: #f44336 !important;" data-toggle="modal"
										data-target="#myModal">Thêm sản phẩm</button>

									<!-- Modal -->
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
													<!-- 													<form class="form-horizontal" action="/action_page.php">
														<div class="form-group mt-10">
															<label class="control-label col-sm-3" for="email">Tên
																sản phẩm:</label>
															<div class="col-sm-9">
																<input type="text" class="form-control input-themsp"
																	id="tensanpham" placeholder="Venus" name="tensanpham">
															</div>
														</div>
														<div class="form-group mt-10">
															<label class="control-label col-sm-3" for="email">Giá</label>
															<div class="col-sm-9">
																<input type="text" class="form-control input-themsp"
																	id="tensanpham" placeholder="Venus" name="tensanpham">
															</div>
														</div>
														<div class="form-group mt-10">
															<label class="control-label col-sm-3" for="email">Số lượng</label>
															<div class="col-sm-9">
																<input type="text" class="form-control input-themsp"
																	id="tensanpham" placeholder="Venus" name="tensanpham">
															</div>
														</div>
														<div class="form-group mt-10">
															<label class="control-label col-sm-3" for="email">Tên
																sản phẩm:</label>
															<div class="col-sm-9">
																<input type="text" class="form-control input-themsp"
																	id="tensanpham" placeholder="Venus" name="tensanpham">
															</div>
														</div>
													</form> -->
													<form class="form-horizontal">
														<div class="row clearfix">
															<div
																class="col-lg-3 col-md-3 col-sm-4 col-xs-5 form-control-label">
																<label for="tensp">Tên sản phẩm</label>
															</div>
															<div class="col-lg-9 col-md-9 col-sm-8 col-xs-7">
																<div class="form-group">
																	<div class="form-line">
																		<input type="text" id="tensp" class="form-control"
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
																		<input type="tel" id="tensp" class="form-control"
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
																		<input type="text" id="tensp" class="form-control"
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
																		<input type="text" id="thue" class="form-control"
																			placeholder="10%">
																	</div>
																</div>
															</div>
														</div>
														<div class="row clearfix">
															<div
																class="col-lg-3 col-md-3 col-sm-4 col-xs-5 form-control-label">
																<label for=""nhacungcap"">Công dụng</label>
															</div>
															<div class="col-lg-9 col-md-9 col-sm-8 col-xs-7">
																<div class="form-group">
																	<div class="form-line">
																		<input type="text" id="thue" class="form-control"
																			placeholder="Trắng da">
																	</div>
																</div>
															</div>
														</div>
														<div class="row clearfix">
															<div
																class="col-lg-3 col-md-3 col-sm-4 col-xs-5 form-control-label">
																<label for=""nhacungcap"">Thành phần</label>
															</div>
															<div class="col-lg-9 col-md-9 col-sm-8 col-xs-7">
																<div class="form-group">
																	<div class="form-line">
																		<input type="text" id="thue" class="form-control"
																			placeholder="Collect">
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

																	<select class="form-control show-tick" tabindex="-98">
																		<option>Chai</option>
																		<option>Cái</option>
																		<option>Tuýp</option>
																		<option>Hộp</option>
																		<option>Hũ</option>
																		<option>Lọ</option>
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

																	<select class="form-control show-tick" tabindex="-98">
																		<option>6</option>
																		<option>12</option>
																		<option>18</option>
																		<option>24</option>
																		<option>36</option>
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

																	<select class="form-control show-tick" tabindex="-98">
																		<option>Chăm Sóc Da Mặt</option>
																		<option>Chăm Sóc Cơ Thể</option>
																		<option>Chăm Sóc Tóc</option>
																		<option>Nước Hoa</option>
																		<option>Trang Điểm</option>
																		<option>Thực Phẩm Chức Năng</option>
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

																	<select class="form-control show-tick" tabindex="-98">
																		<option>Bioderma</option>
																		<option>Valmont</option>
																		<option>Kérastase</option>
																		<option>Huxley</option>
																		<option>Huxley</option>
																		<option>Vital Beautie</option>
																		<option>PREBIOTIC</option>
																		<option>Bioderma</option>
																		<option>Valmont</option>
																		<option>Huxley</option>
																		<option>iS Clinical</option>
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
																<form:input path="anhURL" cssClass="form-control" />
																<input name="linkImage" type="file" id="linkImage"
																	hidden="hidden" /> <span id="result"></span>
															</div>
														</div>

														<!-- Submit -->
														<div class="row clearfix">
															<div
																class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">

															</div>
															<div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
																<button type="button"
																	style="width: 90%; height: 40px; margin-left: 32px; margin-top: 0; background: #f63f2e !important;"
																	class="btn btn-primary m-t-15 waves-effect">Submit</button>
															</div>
														</div>
												</div>

												</form>
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
									<tr role="row">
								<thead>
									<tr class="text-white">
										<th scope="col">#</th>
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
										<tr>
											<th scope="row">1</th>
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
											<td>${sp.soLuongTon }${sp.donViTinh }</td>
											<!-- td><a onClick="xemChiTiet('${product.id}')"
												data-toggle="modal" data-target="#xem-modal"><span
													class="material-icons-outlined"> info </span> </a></td-->
											<td><a href="javascript:void(0);"
												style="text-align: center"><i class="fas fa-edit"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;<a
												href="javascript:void(0);" class="text-center"><i
													class="fas fa-trash"></i></a>
										</tr>
									</c:forEach>

								</tbody>
							</table>
							<div class="dataTables_info" id="DataTables_Table_0_info"
								role="status" aria-live="polite">Showing 51 to 57 of 57
								entries</div>
							<div class="dataTables_paginate paging_simple_numbers"
								id="DataTables_Table_0_paginate">
								<ul class="pagination">
									<li class="paginate_button previous"
										id="DataTables_Table_0_previous"><a href="quanlysanpham?page=${previosPage}"
										aria-controls="DataTables_Table_0" data-dt-idx="0"
										tabindex="0">Previous</a></li>
									<c:forEach var="page" begin="1" end="${pageCount}">
										<li class="paginate_button "><a href="#"
											aria-controls="DataTables_Table_0" data-dt-idx="1"
											tabindex="0">${page}</a></li>
									</c:forEach>
									<li class="paginate_button previous"
										id="DataTables_Table_0_previous"><a href="quanlysanpham?page=${nextPage}"
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