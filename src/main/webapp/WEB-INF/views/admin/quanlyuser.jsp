<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/common/taglib.jsp"%>
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
				<table class="table table-striped">
					<thead>
						<tr>
							<th class="text-uppercase">STT</th>
							<th>Tên</th>
							<th>Email</th>
							<th>Số điện thoại</th>
							<th>Username</th>
							<th>Ngày tạo</th>
							<th>Hành động</th>
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
							<td><a href="javascript:void(0);">Edit</a> - <a
								href="javascript:void(0);">Delete</a></td>
						</tr>
						<tr>
							<th scope="row">2</th>
							<td>Trung Vinh</td>
							<td>trungvinh@estore.com</td>
							<td>0337933366</td>
							<td>@trungvinh</td>
							<td>06-05-2021</td>
							<td><a href="javascript:void(0);">Edit</a> - <a
								href="javascript:void(0);">Delete</a></td>
						</tr>
						<tr>
							<th scope="row">3</th>
							<td>Thanh Liêm</td>
							<td>thanhliem@estore.com</td>
							<td>0987059059</td>
							<td>@thanhliem</td>
							<td>07-05-2021</td>
							<td><a href="javascript:void(0);">Edit</a> - <a
								href="javascript:void(0);">Delete</a></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>



</section>