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
						<h2 class="text-uppercase text-center">Quản Lý Danh Mục</h2>
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
										data-target="#myModal">Thêm danh mục</button>

									<!-- Modal -->
									<div class="modal fade" id="myModal" role="dialog">
										<div class="modal-dialog">
											<!-- Modal content-->
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal">&times;</button>
													<h4 class="modal-title"
														style="text-align: center; text-transform: uppercase; color: #f63f2e; font-size: 24px;">Thêm
														danh mục</h4>
												</div>
												<div class="modal-body">
													<form class="form-horizontal" action="themDanhMuc"
														method="post">
														<div class="row clearfix">
															<div
																class="col-lg-3 col-md-3 col-sm-4 col-xs-5 form-control-label">
																<label for="tensp">Tên danh mục</label>
															</div>
															<div class="col-lg-9 col-md-9 col-sm-8 col-xs-7">
																<div class="form-group">
																	<div class="form-line">
																		<input type="text" id="tensp" name="tenDanhMuc"
																			class="form-control" required="required"
																			placeholder="Chăm sóc da mặt">
																	</div>
																</div>
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
										<th scope="col">Mã danh mục</th>
										<th scope="col">Tên danh mục</th>
										<th scope="col" colspan="2">Hành động</th>
									</tr>
								</thead>

								<tbody>
									<c:forEach var="dm" items="${listDM}">
										<tr>
											<td>${dm.maDanhMuc}</td>
											<td>${dm.tenDanhMuc}</td>

											<td><a style="text-align: center" data-toggle="modal"
												data-target="#modal${dm.maDanhMuc}"><i
													class="fas fa-edit"></i></a>
												&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp; <a
												onclick="return confirm('Bạn muốn xoá danh mục này phải không?');"
												href="deleteDanhMuc?maDanhMuc=${dm.maDanhMuc}"
												class="text-center"><i class="fas fa-trash"></i></a>
										</tr>
										<!-- Modal -->
										<div class="modal fade" id="modal${dm.maDanhMuc}"
											role="dialog">
											<div class="modal-dialog">
												<!-- Modal content-->
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal">&times;</button>
														<h4 class="modal-title"
															style="text-align: center; text-transform: uppercase; color: #f63f2e; font-size: 24px;">Edit
															danh mục</h4>
													</div>
													<div class="modal-body">
														<form class="form-horizontal" action="themDanhMuc"
															method="post">

															<div class="row clearfix">
																<div
																	class="col-lg-3 col-md-3 col-sm-4 col-xs-5 form-control-label">
																	<label for="tensp">Tên danh mục</label>
																</div>
																<div class="col-lg-9 col-md-9 col-sm-8 col-xs-7">
																	<div class="form-group">
																		<div class="form-line">
																			<input type="text" name="maDanhMuc"
																				value="${dm.maDanhMuc}" hidden> <input
																				type="text" name="tenDanhMuc"
																				value="${dm.tenDanhMuc}" class="form-control"
																				required="required">
																		</div>
																	</div>
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
													</div>
													</form>
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-default"
														data-dismiss="modal">Close</button>
												</div>
											</div>
										</div>
										<!-- End Model -->
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	</div>
</section>
