<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ include file="/common/taglib.jsp"%>
<section class="content">
	<div class="container-fluid">
		<div class="row clearfix">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="card">
					<form:form method="get" action="thongKe">
						<div class="header">
							<h2 class="text-uppercase text-center">Quản Lý Thống Kê</h2>

							<div style="display: flex; margin-top: 30px;">
								<div class="col-6" style="width: 45%;">

									<div class="btn-group bootstrap-select form-control show-tick">
										<div class="dropdown-menu open"
											style="max-height: 98.25px; overflow: hidden; min-height: 0px;">
											<ul class="dropdown-menu inner" role="menu"
												style="max-height: 88.25px; overflow-y: auto; min-height: 0px;">
												<li data-original-index="0" class=""><a tabindex="0"
													class="" style="" data-tokens="null"><span class="text">THÁNG</span><span
														class="glyphicon glyphicon-ok check-mark"></span></a></li>
											</ul>
										</div>
										<select class="form-control show-tick" tabindex="-98"
											name="thang">
											<option disabled="disabled">THÁNG</option>
											<option value="01">01</option>
											<option value="02">02</option>
											<option value="03">03</option>
											<option value="04">04</option>
											<option value="05">05</option>
											<option value="06">06</option>
											<option value="07">07</option>
											<option value="08">08</option>
											<option value="09">09</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
										</select>
									</div>

								</div>
								<div class="col-6"
									style="width: 45%; float: right; margin-left: 85px;">

									<div class="btn-group bootstrap-select form-control show-tick">
										<div class="dropdown-menu open"
											style="max-height: 98.25px; overflow: hidden; min-height: 0px;">
											<ul class="dropdown-menu inner" role="menu"
												style="max-height: 88.25px; overflow-y: auto; min-height: 0px;">
												<li data-original-index="0" class=""><a tabindex="0"
													class="" style="" data-tokens="null"><span class="text">NĂM</span><span
														class="glyphicon glyphicon-ok check-mark"></span></a></li>
											</ul>
										</div>
										<select class="form-control show-tick" tabindex="-98"
											name="nam">
											<option disabled="disabled">NĂM</option>
											<option value="2019">2019</option>
											<option value="2020">2020</option>
											<option value="2021">2021</option>
										</select>
									</div>

								</div>

							</div>
							<div style="display: block;">
								<h2 style="color: white;">vinh</h2>
								<button type="submit" class="btn btn-info btn-lg"
									style="background: #f44336 !important; min-width: 180px !important;">Thống
									kê</button>
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="content">
	<div class="container-fluid">
		<div class="row clearfix">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="card" style="margin-top: -130px;">
					<div class="body">
						<div class="table-responsive">
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
										<th scope="col">Giá</th>
										<th scope="col">Số lượng đã bán</th>

									</tr>
								</thead>

								<tbody>
									<c:forEach var="sp" items="${listSP}">
										<tr>
											<td><c:forEach var="img" items="${sp.hinhAnh}">
													<img
														src="${pageContext.request.contextPath}/${urlUserImg}/${img}"
														width="100px" height="100px">
												</c:forEach></td>
											<td>${sp.tenSanPham}</td>

											<td><c:set var="donGia" value="${sp.donGia }"
													scope="request" /> <%
 out.println(new DecimalFormat("#,###").format(request.getAttribute("donGia")) + "đ");
 %></td>
											<td>${sp.soLuongTon }&nbsp;${sp.donViTinh }</td>

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
									<li class="paginate_button "><a
										href="quanlysanpham?page=${page}"
										aria-controls="DataTables_Table_0" data-dt-idx="1"
										tabindex="0">1</a></li>
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