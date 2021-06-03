<%@page import="com.spring.mypham.models.CartItem"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header_tv>
<div class="bottom-bar mb-0" style="z-index: 3;">
	<div class="container-fluid">
		<div class="row align-items-center">
			<div class="col-md-3">
				<div class="logo">
					<a href="/mypham/trangchu"> <img src="${url}/img/logo.png"
						alt="Logo">
					</a>
				</div>
			</div>
			<div class="col-md-6">
				<div class="search">
					<form action="product">
						<input name="tenSP" type="text" placeholder="Search">
						<button type="submit">
							<i class="fa fa-search"></i>
						</button>
					</form>
				</div>
			</div>

			<div class="col-md-3">
				<div class="user">
					<a href="${pageContext.request.contextPath}/wish"
						class="btn wishlist"> <i class="fa fa-heart"></i> <span>(0)</span>
					</a> <a href="${pageContext.request.contextPath}/cart/"
						class="btn cart"> <i class="fa fa-shopping-cart"></i> <span>
							<%
								List<CartItem> cartItem = (List<CartItem>) session.getAttribute("cart");
								int count = 0;
								try{
									count = cartItem.size();
								} catch(Exception e){}
							%>
								 (<span><%=count %></span>)

					</span>

					</a>
				</div>
			</div>

		</div>
	</div>
</div>
<nav class="navbar navbar-expand-lg bg-pri"
	style="z-index: 3; height: 38px;">
	<div class="container-fluid">
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#main_nav" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse position-relative" id="main_nav">
			<ul class="navbar-nav">

				<li class="nav-item dropdown hover-parent" style="z-index: 3;">
					<a
					class="nav-link dropdown-toggle text-white font-weight-bold text-uppercase pl-3"
					href="#" data-bs-toggle="dropdown"><i
						class="fas fa-bars text-white"></i> <span class="text-white">&nbsp;
							Danh mục sản phẩm </span></a>
					<ul class="dropdown-menu mt-0 rounded-1 py-0"
						style="margin-left: 37px;">
						<li class="has-megasubmenu"><a style="z-index: 3;"
							class="hover-overlay dropdown-item text-capitalize"
							href="javascript:void(0)"> <span>Chăm sóc da mặt</span> <span
								class="float-right"><em class="fa fa-angle-right"> </em></span></a>
							<div class="megasubmenu dropdown-menu">
								<div class="row mb-3">
									<div class="col-12 mb-3">
										<div class="btn-group" role="group" aria-label="Basic example">
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">
												<a href="product">Nổi bật</a>
											</button>
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">
												<a href="product">Bán chạy</a>
											</button>
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">
												<a href="product">Hàng mới</a>
											</button>
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">
												<a href="product">Khuyến mãi</a>
											</button>
										</div>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Trang
											điểm</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="product?maDanhMuc=5"
												class="text-capitalize text-decoration-none">Trang điểm
													mặt</a></li>
											<li><a href="product?maDanhMuc=5"
												class="text-capitalize text-decoration-none">Trang điểm
													môi</a></li>
											<li><a href="product?maDanhMuc=5"
												class="text-capitalize text-decoration-none">Trang điểm
													mắt</a></li>
											<li><a href="product?maDanhMuc=5"
												class="text-capitalize text-decoration-none">Tẩy trang
													mắt môi</a></li>
										</ul>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Thực
											phẩm chức năng</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="product?maDanhMuc=6"
												class="text-capitalize text-decoration-none">Chống lão
													hõa</a></li>
											<li><a href="product?maDanhMuc=3"
												class="text-capitalize text-decoration-none">Bổ sung
													collagen</a></li>
											<li><a href="product?maDanhMuc=6"
												class="text-capitalize text-decoration-none"></a></li>
										</ul>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Chăm
											sóc cơ thể</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="product?maDanhMuc=2"
												class="text-capitalize text-decoration-none">Làm sạch cơ
													thể</a></li>
											<li><a href="product?maDanhMuc=2"
												class="text-capitalize text-decoration-none">Dưỡng thể</a></li>
											<li><a href="product?maDanhMuc=2"
												class="text-capitalize text-decoration-none">Kem massage</a></li>
											<li><a href="product?maDanhMuc=2"
												class="text-capitalize text-decoration-none">Tẩy lông</a></li>
										</ul>
									</div>
								</div>
								<div class="row mb-3">
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Chăm
											sóc da mặt</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="product?maDanhMuc=1"
												class="text-capitalize text-decoration-none">Quy trình
													chăm sóc da</a></li>
											<li><a href="product?maDanhMuc=1"
												class="text-capitalize text-decoration-none">Vấn đề về
													da</a></li>
											<li><a href="product?maDanhMuc=1"
												class="text-capitalize text-decoration-none">Loại da</a></li>
										</ul>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Chăm
											sóc tóc</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="product?maDanhMuc=3"
												class="text-capitalize text-decoration-none">Dầu gội</a></li>
											<li><a href="product?maDanhMuc=3"
												class="text-capitalize text-decoration-none">Dầu xả</a></li>
											<li><a href="product?maDanhMuc=3"
												class="text-capitalize text-decoration-none">Dưỡng tóc</a></li>
										</ul>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Nước
											hoa sóc tóc</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="product?maDanhMuc=4"
												class="text-capitalize text-decoration-none">Nước hoa tự
													nhiên</a></li>
											<li><a href="product?maDanhMuc=4"
												class="text-capitalize text-decoration-none">Nước hoa
													tổng hợp</a></li>
											<li><a href="product?maDanhMuc=4"
												class="text-capitalize text-decoration-none">Nước hoa
													quyến rũ</a></li>
										</ul>
									</div>
								</div>
								<div class="row mb-3">
									<div class="col-10">
										<a href="javascript:void(0);"> <img
											src="https://www.sapo.vn/blog/wp-content/uploads/2016/01/FreeGreatPicture.com-4540-hd-cosmetics-ads-wallpaper.jpg"
											height="200px" width="100%" alt="QC TV"
											style="vertical-align: middle; border-style: none;">
										</a>
									</div>
								</div>
							</div></li>
						<li class="has-megasubmenu"><a style="z-index: 3;"
							class="hover-overlay dropdown-item text-capitalize"
							href="javascript:void(0)"> <span>Chăm sóc cơ thể</span> <span
								class="float-right"><em class="fa fa-angle-right"> </em></span></a>
							<div class="megasubmenu dropdown-menu">
								<div class="row mb-3">
									<div class="col-12 mb-3">
										<div class="btn-group" role="group" aria-label="Basic example">
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">
												<a href="product">Nổi bật</a>
											</button>
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">
												<a href="product">Bán chạy</a>
											</button>
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">
												<a href="product">Hàng mới</a>
											</button>
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">
												<a href="product">Khuyến mãi</a>
											</button>
										</div>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Trang
											điểm</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="product?maDanhMuc=5"
												class="text-capitalize text-decoration-none">Trang điểm
													mặt</a></li>
											<li><a href="product?maDanhMuc=5"
												class="text-capitalize text-decoration-none">Trang điểm
													môi</a></li>
											<li><a href="product?maDanhMuc=5"
												class="text-capitalize text-decoration-none">Trang điểm
													mắt</a></li>
											<li><a href="product?maDanhMuc=5"
												class="text-capitalize text-decoration-none">Tẩy trang
													mắt môi</a></li>
										</ul>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Thực
											phẩm chức năng</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="product?maDanhMuc=6"
												class="text-capitalize text-decoration-none">Chống lão
													hõa</a></li>
											<li><a href="product?maDanhMuc=3"
												class="text-capitalize text-decoration-none">Bổ sung
													collagen</a></li>
											<li><a href="product?maDanhMuc=6"
												class="text-capitalize text-decoration-none"></a></li>
										</ul>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Chăm
											sóc cơ thể</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="product?maDanhMuc=2"
												class="text-capitalize text-decoration-none">Làm sạch cơ
													thể</a></li>
											<li><a href="product?maDanhMuc=2"
												class="text-capitalize text-decoration-none">Dưỡng thể</a></li>
											<li><a href="product?maDanhMuc=2"
												class="text-capitalize text-decoration-none">Kem massage</a></li>
											<li><a href="product?maDanhMuc=2"
												class="text-capitalize text-decoration-none">Tẩy lông</a></li>
										</ul>
									</div>
								</div>
								<div class="row mb-3">
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Chăm
											sóc da mặt</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="product?maDanhMuc=1"
												class="text-capitalize text-decoration-none">Quy trình
													chăm sóc da</a></li>
											<li><a href="product?maDanhMuc=1"
												class="text-capitalize text-decoration-none">Vấn đề về
													da</a></li>
											<li><a href="product?maDanhMuc=1"
												class="text-capitalize text-decoration-none">Loại da</a></li>
										</ul>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Chăm
											sóc tóc</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="product?maDanhMuc=3"
												class="text-capitalize text-decoration-none">Dầu gội</a></li>
											<li><a href="product?maDanhMuc=3"
												class="text-capitalize text-decoration-none">Dầu xả</a></li>
											<li><a href="product?maDanhMuc=3"
												class="text-capitalize text-decoration-none">Dưỡng tóc</a></li>
										</ul>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Nước
											hoa sóc tóc</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="product?maDanhMuc=4"
												class="text-capitalize text-decoration-none">Nước hoa tự
													nhiên</a></li>
											<li><a href="product?maDanhMuc=4"
												class="text-capitalize text-decoration-none">Nước hoa
													tổng hợp</a></li>
											<li><a href="product?maDanhMuc=4"
												class="text-capitalize text-decoration-none">Nước hoa
													quyến rũ</a></li>
										</ul>
									</div>
								</div>
								<div class="row mb-3">
									<div class="col-10">
										<a href="javascript:void(0);"> <img
											src="https://www.sapo.vn/blog/wp-content/uploads/2016/01/FreeGreatPicture.com-4540-hd-cosmetics-ads-wallpaper.jpg"
											height="200px" width="100%" alt="QC TV"
											style="vertical-align: middle; border-style: none;">
										</a>
									</div>
								</div>
							</div></li>
						<li class="has-megasubmenu"><a style="z-index: 3;"
							class="hover-overlay dropdown-item text-capitalize"
							href="javascript:void(0)"> <span>Chăm sóc tóc</span> <span
								class="float-right"><em class="fa fa-angle-right"> </em></span></a>
							<div class="megasubmenu dropdown-menu">
								<div class="row mb-3">
									<div class="col-12 mb-3">
										<div class="btn-group" role="group" aria-label="Basic example">
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">
												<a href="product">Nổi bật</a>
											</button>
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">
												<a href="product">Bán chạy</a>
											</button>
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">
												<a href="product">Hàng mới</a>
											</button>
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">
												<a href="product">Khuyến mãi</a>
											</button>
										</div>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Trang
											điểm</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="product?maDanhMuc=5"
												class="text-capitalize text-decoration-none">Trang điểm
													mặt</a></li>
											<li><a href="product?maDanhMuc=5"
												class="text-capitalize text-decoration-none">Trang điểm
													môi</a></li>
											<li><a href="product?maDanhMuc=5"
												class="text-capitalize text-decoration-none">Trang điểm
													mắt</a></li>
											<li><a href="product?maDanhMuc=5"
												class="text-capitalize text-decoration-none">Tẩy trang
													mắt môi</a></li>
										</ul>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Thực
											phẩm chức năng</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="product?maDanhMuc=6"
												class="text-capitalize text-decoration-none">Chống lão
													hõa</a></li>
											<li><a href="product?maDanhMuc=3"
												class="text-capitalize text-decoration-none">Bổ sung
													collagen</a></li>
											<li><a href="product?maDanhMuc=6"
												class="text-capitalize text-decoration-none"></a></li>
										</ul>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Chăm
											sóc cơ thể</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="product?maDanhMuc=2"
												class="text-capitalize text-decoration-none">Làm sạch cơ
													thể</a></li>
											<li><a href="product?maDanhMuc=2"
												class="text-capitalize text-decoration-none">Dưỡng thể</a></li>
											<li><a href="product?maDanhMuc=2"
												class="text-capitalize text-decoration-none">Kem massage</a></li>
											<li><a href="product?maDanhMuc=2"
												class="text-capitalize text-decoration-none">Tẩy lông</a></li>
										</ul>
									</div>
								</div>
								<div class="row mb-3">
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Chăm
											sóc da mặt</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="product?maDanhMuc=1"
												class="text-capitalize text-decoration-none">Quy trình
													chăm sóc da</a></li>
											<li><a href="product?maDanhMuc=1"
												class="text-capitalize text-decoration-none">Vấn đề về
													da</a></li>
											<li><a href="product?maDanhMuc=1"
												class="text-capitalize text-decoration-none">Loại da</a></li>
										</ul>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Chăm
											sóc tóc</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="product?maDanhMuc=3"
												class="text-capitalize text-decoration-none">Dầu gội</a></li>
											<li><a href="product?maDanhMuc=3"
												class="text-capitalize text-decoration-none">Dầu xả</a></li>
											<li><a href="product?maDanhMuc=3"
												class="text-capitalize text-decoration-none">Dưỡng tóc</a></li>
										</ul>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Nước
											hoa sóc tóc</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="product?maDanhMuc=4"
												class="text-capitalize text-decoration-none">Nước hoa tự
													nhiên</a></li>
											<li><a href="product?maDanhMuc=4"
												class="text-capitalize text-decoration-none">Nước hoa
													tổng hợp</a></li>
											<li><a href="product?maDanhMuc=4"
												class="text-capitalize text-decoration-none">Nước hoa
													quyến rũ</a></li>
										</ul>
									</div>
								</div>
								<div class="row mb-3">
									<div class="col-10">
										<a href="javascript:void(0);"> <img
											src="https://www.sapo.vn/blog/wp-content/uploads/2016/01/FreeGreatPicture.com-4540-hd-cosmetics-ads-wallpaper.jpg"
											height="200px" width="100%" alt="QC TV"
											style="vertical-align: middle; border-style: none;">
										</a>
									</div>
								</div>
							</div></li>
						<li class="has-megasubmenu"><a style="z-index: 3;"
							class="hover-overlay dropdown-item text-capitalize"
							href="javascript:void(0)"> <span>Nước hoa</span> <span
								class="float-right"><em class="fa fa-angle-right"> </em></span></a>
							<div class="megasubmenu dropdown-menu">
								<div class="row mb-3">
									<div class="col-12 mb-3">
										<div class="btn-group" role="group" aria-label="Basic example">
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">
												<a href="product">Nổi bật</a>
											</button>
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">
												<a href="product">Bán chạy</a>
											</button>
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">
												<a href="product">Hàng mới</a>
											</button>
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">
												<a href="product">Khuyến mãi</a>
											</button>
										</div>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Trang
											điểm</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="product?maDanhMuc=5"
												class="text-capitalize text-decoration-none">Trang điểm
													mặt</a></li>
											<li><a href="product?maDanhMuc=5"
												class="text-capitalize text-decoration-none">Trang điểm
													môi</a></li>
											<li><a href="product?maDanhMuc=5"
												class="text-capitalize text-decoration-none">Trang điểm
													mắt</a></li>
											<li><a href="product?maDanhMuc=5"
												class="text-capitalize text-decoration-none">Tẩy trang
													mắt môi</a></li>
										</ul>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Thực
											phẩm chức năng</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="product?maDanhMuc=6"
												class="text-capitalize text-decoration-none">Chống lão
													hõa</a></li>
											<li><a href="product?maDanhMuc=3"
												class="text-capitalize text-decoration-none">Bổ sung
													collagen</a></li>
											<li><a href="product?maDanhMuc=6"
												class="text-capitalize text-decoration-none"></a></li>
										</ul>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Chăm
											sóc cơ thể</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="product?maDanhMuc=2"
												class="text-capitalize text-decoration-none">Làm sạch cơ
													thể</a></li>
											<li><a href="product?maDanhMuc=2"
												class="text-capitalize text-decoration-none">Dưỡng thể</a></li>
											<li><a href="product?maDanhMuc=2"
												class="text-capitalize text-decoration-none">Kem massage</a></li>
											<li><a href="product?maDanhMuc=2"
												class="text-capitalize text-decoration-none">Tẩy lông</a></li>
										</ul>
									</div>
								</div>
								<div class="row mb-3">
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Chăm
											sóc da mặt</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="product?maDanhMuc=1"
												class="text-capitalize text-decoration-none">Quy trình
													chăm sóc da</a></li>
											<li><a href="product?maDanhMuc=1"
												class="text-capitalize text-decoration-none">Vấn đề về
													da</a></li>
											<li><a href="product?maDanhMuc=1"
												class="text-capitalize text-decoration-none">Loại da</a></li>
										</ul>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Chăm
											sóc tóc</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="product?maDanhMuc=3"
												class="text-capitalize text-decoration-none">Dầu gội</a></li>
											<li><a href="product?maDanhMuc=3"
												class="text-capitalize text-decoration-none">Dầu xả</a></li>
											<li><a href="product?maDanhMuc=3"
												class="text-capitalize text-decoration-none">Dưỡng tóc</a></li>
										</ul>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Nước
											hoa sóc tóc</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="product?maDanhMuc=4"
												class="text-capitalize text-decoration-none">Nước hoa tự
													nhiên</a></li>
											<li><a href="product?maDanhMuc=4"
												class="text-capitalize text-decoration-none">Nước hoa
													tổng hợp</a></li>
											<li><a href="product?maDanhMuc=4"
												class="text-capitalize text-decoration-none">Nước hoa
													quyến rũ</a></li>
										</ul>
									</div>
								</div>
								<div class="row mb-3">
									<div class="col-10">
										<a href="javascript:void(0);"> <img
											src="https://www.sapo.vn/blog/wp-content/uploads/2016/01/FreeGreatPicture.com-4540-hd-cosmetics-ads-wallpaper.jpg"
											height="200px" width="100%" alt="QC TV"
											style="vertical-align: middle; border-style: none;">
										</a>
									</div>
								</div>
							</div></li>
						<li class="has-megasubmenu"><a style="z-index: 3;"
							class="hover-overlay dropdown-item text-capitalize"
							href="javascript:void(0)"> <span>Trang điểm</span> <span
								class="float-right"><em class="fa fa-angle-right"> </em></span></a>
							<div class="megasubmenu dropdown-menu">
								<div class="row mb-3">
									<div class="col-12 mb-3">
										<div class="btn-group" role="group" aria-label="Basic example">
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">
												<a href="product">Nổi bật</a>
											</button>
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">
												<a href="product">Bán chạy</a>
											</button>
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">
												<a href="product">Hàng mới</a>
											</button>
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">
												<a href="product">Khuyến mãi</a>
											</button>
										</div>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Trang
											điểm</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="product?maDanhMuc=5"
												class="text-capitalize text-decoration-none">Trang điểm
													mặt</a></li>
											<li><a href="product?maDanhMuc=5"
												class="text-capitalize text-decoration-none">Trang điểm
													môi</a></li>
											<li><a href="product?maDanhMuc=5"
												class="text-capitalize text-decoration-none">Trang điểm
													mắt</a></li>
											<li><a href="product?maDanhMuc=5"
												class="text-capitalize text-decoration-none">Tẩy trang
													mắt môi</a></li>
										</ul>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Thực
											phẩm chức năng</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="product?maDanhMuc=6"
												class="text-capitalize text-decoration-none">Chống lão
													hõa</a></li>
											<li><a href="product?maDanhMuc=3"
												class="text-capitalize text-decoration-none">Bổ sung
													collagen</a></li>
											<li><a href="product?maDanhMuc=6"
												class="text-capitalize text-decoration-none"></a></li>
										</ul>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Chăm
											sóc cơ thể</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="product?maDanhMuc=2"
												class="text-capitalize text-decoration-none">Làm sạch cơ
													thể</a></li>
											<li><a href="product?maDanhMuc=2"
												class="text-capitalize text-decoration-none">Dưỡng thể</a></li>
											<li><a href="product?maDanhMuc=2"
												class="text-capitalize text-decoration-none">Kem massage</a></li>
											<li><a href="product?maDanhMuc=2"
												class="text-capitalize text-decoration-none">Tẩy lông</a></li>
										</ul>
									</div>
								</div>
								<div class="row mb-3">
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Chăm
											sóc da mặt</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="product?maDanhMuc=1"
												class="text-capitalize text-decoration-none">Quy trình
													chăm sóc da</a></li>
											<li><a href="product?maDanhMuc=1"
												class="text-capitalize text-decoration-none">Vấn đề về
													da</a></li>
											<li><a href="product?maDanhMuc=1"
												class="text-capitalize text-decoration-none">Loại da</a></li>
										</ul>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Chăm
											sóc tóc</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="product?maDanhMuc=3"
												class="text-capitalize text-decoration-none">Dầu gội</a></li>
											<li><a href="product?maDanhMuc=3"
												class="text-capitalize text-decoration-none">Dầu xả</a></li>
											<li><a href="product?maDanhMuc=3"
												class="text-capitalize text-decoration-none">Dưỡng tóc</a></li>
										</ul>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Nước
											hoa sóc tóc</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="product?maDanhMuc=4"
												class="text-capitalize text-decoration-none">Nước hoa tự
													nhiên</a></li>
											<li><a href="product?maDanhMuc=4"
												class="text-capitalize text-decoration-none">Nước hoa
													tổng hợp</a></li>
											<li><a href="product?maDanhMuc=4"
												class="text-capitalize text-decoration-none">Nước hoa
													quyến rũ</a></li>
										</ul>
									</div>
								</div>
								<div class="row mb-3">
									<div class="col-10">
										<a href="javascript:void(0);"> <img
											src="https://www.sapo.vn/blog/wp-content/uploads/2016/01/FreeGreatPicture.com-4540-hd-cosmetics-ads-wallpaper.jpg"
											height="200px" width="100%" alt="QC TV"
											style="vertical-align: middle; border-style: none;">
										</a>
									</div>
								</div>
							</div></li>
					</ul>
				</li>
				<li class="nav-item"><a
					class="nav-link text-uppercase text-white"
					href="${pageContext.request.contextPath}/product">Danh sách sản
						phẩm</a></li>
				<li class="nav-item"><a
					class="nav-link text-uppercase text-white"
					href="${pageContext.request.contextPath}/checkout">Thanh toán</a></li>
				<li class="nav-item"><a
					class="nav-link text-uppercase text-white" href="account">Tài
						khoản</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle text-white text-uppercase"
					href="javascript:void(0)" data-bs-toggle="dropdown"> More pages
				</a>
					<ul class="dropdown-menu dropdown-menu-end">
						<li style="margin-top: -8px;"><a class="dropdown-item"
							href="${pageContext.request.contextPath}/wish"> Yêu thích</a></li>
						<li style="margin-bottom: -8px;"><a class="dropdown-item"
							href="${pageContext.request.contextPath}/contact"> Liên hệ </a></li>
					</ul></li>
			</ul>

			<ul class="navbar-nav ms-auto">
				<li class="nav-item dropdown"><c:if
						test="${pageContext.request.userPrincipal.name!= null}">
						<a class="nav-link dropdown-toggle text-white"
							href="javascript:void(0)" data-bs-toggle="dropdown">
							${pageContext.request.userPrincipal.name}</a>
						<ul class="dropdown-menu dropdown-menu-end">
							<li style="margin-top: -8px;"><a class="dropdown-item"
								href="${pageContext.request.contextPath}/account">Account</a></li>
							<li style="margin-bottom: -8px;"><a class="dropdown-item"
								href="${pageContext.request.contextPath}/login">Logout</a></li>
						</ul>
					</c:if> <c:if test="${pageContext.request.userPrincipal.name == null}">
						<a class="nav-link dropdown-toggle text-white"
							href="javascript:void(0)" data-bs-toggle="dropdown"> <i
							class="fas fa-user"></i>
						</a>
						<ul class="dropdown-menu dropdown-menu-end">
							<li style="margin-top: -8px;"><a class="dropdown-item"
								href="${pageContext.request.contextPath}/login">Login</a></li>
							<li style="margin-bottom: -8px;"><a class="dropdown-item"
								href="${pageContext.request.contextPath}/login">Register</a></li>
						</ul>
					</c:if></li>
			</ul>
		</div>
	</div>
</nav>
</header_tv>