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
											<td>Admin</td>
											<td>admin@estore.com</td>
											<td>0987333999</td>
											<td>@admin</td>
											<td>05-05-2021</td>
											<td><a href="javascript:void(0);" class="text-center"><i
													class="fas fa-user-edit"></i></a>
										</tr>
										<tr>
											<th scope="row">1</th>
											<td>Admin</td>
											<td>admin@estore.com</td>
											<td>0987333999</td>
											<td>@admin</td>
											<td>05-05-2021</td>
											<td><a href="javascript:void(0);" class="text-center"><i
													class="fas fa-user-edit"></i></a>
										</tr>
										<tr>
											<th scope="row">1</th>
											<td>Admin</td>
											<td>admin@estore.com</td>
											<td>0987333999</td>
											<td>@admin</td>
											<td>05-05-2021</td>
											<td><a href="javascript:void(0);" class="text-center"><i
													class="fas fa-user-edit"></i></a>
										</tr>
										<tr>
											<th scope="row">1</th>
											<td>Admin</td>
											<td>admin@estore.com</td>
											<td>0987333999</td>
											<td>@admin</td>
											<td>05-05-2021</td>
											<td><a href="javascript:void(0);" class="text-center"><i
													class="fas fa-user-edit"></i></a>
										</tr>
										<tr>
											<th scope="row">1</th>
											<td>Admin</td>
											<td>admin@estore.com</td>
											<td>0987333999</td>
											<td>@admin</td>
											<td>05-05-2021</td>
											<td><a href="javascript:void(0);" class="text-center"><i
													class="fas fa-user-edit"></i></a>
										</tr>
										<tr>
											<th scope="row">1</th>
											<td>Admin</td>
											<td>admin@estore.com</td>
											<td>0987333999</td>
											<td>@admin</td>
											<td>05-05-2021</td>
											<td><a href="javascript:void(0);" class="text-center"><i
													class="fas fa-user-edit"></i></a>
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
		<!-- #END# Exportable Table -->
	</div>
</section>