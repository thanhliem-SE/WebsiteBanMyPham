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
					<input type="text" placeholder="Tìm kiếm">
					<button>
						<i class="fa fa-search"></i>
					</button>
				</div>
			</div>
			<div class="col-md-3">
				<div class="user">
					<a href="${pageContext.request.contextPath}/wish"
						class="btn wishlist"> <i class="fa fa-heart"></i> <span>(0)</span>
					</a> <a href="${pageContext.request.contextPath}/cart/" class="btn cart">
						<i class="fa fa-shopping-cart"></i> <span>(0)</span>
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
							href="javascript:void(0)"> <span>Sức khoẻ làm đẹp</span> <span
								class="float-right"><em class="fa fa-angle-right"> </em></span></a>
							<div class="megasubmenu dropdown-menu">
								<div class="row mb-3">
									<div class="col-12 mb-3">
										<div class="btn-group" role="group" aria-label="Basic example">
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">Nổi
												bật</button>
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">Bán
												chạy</button>
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">Hàng
												mới</button>
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">Khuyến
												mãi</button>
										</div>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Trang
											điểm</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="#"
												class="text-capitalize text-decoration-none">Trang điểm
													mặt</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Trang điểm
													môi</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Trang điểm
													mắt</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Tẩy trang
													mắt môi</a></li>
										</ul>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Mỹ
											phẩm High-end</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="#"
												class="text-capitalize text-decoration-none">Chăm sóc da
													mặt</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Trang điểm</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Chăm sóc
													tóc</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Chăm sóc cơ
													thể</a></li>
										</ul>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Chăm
											sóc cơ thể</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="#"
												class="text-capitalize text-decoration-none">Làm sạch cơ
													thể</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Dưỡng thể</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Kem massage</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Tẩy lông</a></li>
										</ul>
									</div>
								</div>
								<div class="row mb-3">
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Chăm
											sóc da mặt</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="#"
												class="text-capitalize text-decoration-none">Quy trình
													chăm sóc da</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Vấn đề về
													da</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Loại da</a></li>
										</ul>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Chăm
											sóc tóc</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="#"
												class="text-capitalize text-decoration-none">Dầu gội</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Dầu xả</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Dưỡng tóc</a></li>
										</ul>
									</div>
								</div>
								<div class="row mb-3">
									<div class="col-6">
										<a href="javascript:void(0);"> <img
											src="https://hasaki.vn/images/cate/suckhoelamdep3.png"
											alt="QC TV"
											style="vertical-align: middle; border-style: none;">
										</a>
									</div>
								</div>
							</div></li>
						<li class="has-megasubmenu"><a style="z-index: 3;"
							class="hover-overlay dropdown-item" href="javascript:void(0)">
								<span>Mỹ phẩm High-end</span> <span class="float-right"><em
									class="fa fa-angle-right"> </em></span>
						</a>
							<div class="megasubmenu dropdown-menu">
								<div class="row mb-3">
									<div class="col-12 mb-3">
										<div class="btn-group" role="group" aria-label="Basic example">
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">Nổi
												bật</button>
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">Bán
												chạy</button>
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">Hàng
												mới</button>
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">Khuyến
												mãi</button>
										</div>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Chăm
											Sóc Da Mặt</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="#"
												class="text-capitalize text-decoration-none">Sữa Rửa Mặt</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Tẩy Trang</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Nước Hoa
													Hồng</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Kem Chống
													Nắng</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Mặt Nạ</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Serum -
													Tinh Chất Dưỡng Da</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Kem Dưỡng</a></li>

										</ul>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Mỹ
											phẩm High-end</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="#"
												class="text-capitalize text-decoration-none">Chăm sóc da
													mặt</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Trang điểm</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Chăm sóc
													tóc</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Chăm sóc cơ
													thể</a></li>
										</ul>
									</div>
								</div>
								<div class="row mb-3">
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Trang
											điểm</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="#"
												class="text-capitalize text-decoration-none">Trang điểm
													mặt</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Trang điểm
													môi</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Trang điểm
													mắt</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Tẩy trang
													mắt môi</a></li>
										</ul>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Mỹ
											phẩm High-end</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="#"
												class="text-capitalize text-decoration-none">Chăm sóc da
													mặt</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Trang điểm</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Chăm sóc
													tóc</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Chăm sóc cơ
													thể</a></li>
										</ul>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Chăm
											sóc cơ thể</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="#"
												class="text-capitalize text-decoration-none">Làm sạch cơ
													thể</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Dưỡng thể</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Kem massage</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Tẩy lông</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Sữa Tắm</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Dưỡng Tay</a></li>
										</ul>
									</div>
								</div>
							</div></li>
						<li class="has-megasubmenu"><a style="z-index: 3;"
							class="hover-overlay dropdown-item" href="javascript:void(0)">
								<span>Trang điểm</span> <span class="float-right"><em
									class="fa fa-angle-right"> </em></span>
						</a>
							<div class="megasubmenu dropdown-menu">
								<div class="row mb-3">
									<div class="col-12 mb-3">
										<div class="btn-group" role="group" aria-label="Basic example">
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">Nổi
												bật</button>
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">Bán
												chạy</button>
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">Hàng
												mới</button>
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">Khuyến
												mãi</button>
										</div>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-capitalize pl-3">
											<strong>Trang Điểm Môi</strong>
										</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="#"
												class="text-capitalize text-decoration-none">Son Môi</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Son Dưỡng</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Son Lì</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Son Bóng</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Tẩy Tế Bào
													Chết Môi</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Mặt Nạ Môi</a>
											</li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Kẻ Viền Môi</a></li>
										</ul>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-capitalize pl-3">
											<strong>Móng</strong>
										</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="#"
												class="text-capitalize text-decoration-none">Sơn Móng</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Phụ Kiện
													Làm Móng</a></li>
										</ul>
									</div>
								</div>
								<div class="row mb-3">
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Trang
											điểm</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="#"
												class="text-capitalize text-decoration-none">Trang điểm
													mặt</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Trang điểm
													môi</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Trang điểm
													mắt</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Tẩy trang
													mắt môi</a></li>
										</ul>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Trang
											Điểm Mặt</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="#"
												class="text-capitalize text-decoration-none">Kem Nền</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Kem Lót</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Phấn Phủ</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Phấn Nước
													Cushion</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Che Khuyết
													Điểm</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Tạo Khối -
													Highlighter</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Phấn Má
													Hồng</a></li>
										</ul>
									</div>
									<div class="col-4">
										<h6 class="title font-weight-bold text-uppercase pl-3">Trang
											Điểm Vùng Mắt</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="#"
												class="text-capitalize text-decoration-none">Kẻ Chân Mày</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Kẻ Mắt</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Mascara</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Phấn Mắt</a></li>
										</ul>
									</div>
								</div>
							</div></li>
						<li class="has-megasubmenu"><a style="z-index: 3;"
							class="hover-overlay dropdown-item" href="javascript:void(0)">
								<span>Nước hoa</span> <span class="float-right"><em
									class="fa fa-angle-right"> </em></span>
						</a>
							<div class="megasubmenu dropdown-menu"
								style="padding-bottom: 100px; padding-right: 70px">
								<div class="row mb-3">
									<!-- Group button -->
									<div class="col-12 mb-3">
										<div class="btn-group" role="group" aria-label="Basic example">
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">Nổi
												bật</button>
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">Bán
												chạy</button>
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">Hàng
												mới</button>
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">Khuyến
												mãi</button>
										</div>
									</div>
									<div class="col-5">
										<!-- Title -->
										<h6 class="title font-weight-bold pl-3">
											<strong>Nước hoa nam</strong>
										</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="#"
												class="text-capitalize text-decoration-none">Nước hoa
													Eau De Parfum</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Nước hoa
													Eau De Toilette</a></li>
										</ul>
									</div>
									<div class="col">
										<div class="img-nuochoa position-absolute" style="top: -13px;">
											<img src="https://hasaki.vn/images/cate/nuochoa.png"
												alt="Nước hoa"
												style="vertical-align: middle; border-style: none; height: 290px;">
										</div>
									</div>
								</div>
								<div class="row mb-3">
									<div class="col-6">
										<!-- Title -->
										<h6 class="title font-weight-bold pl-3">
											<strong>Nước hoa nữ</strong>
										</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="#"
												class="text-capitalize text-decoration-none">Nước hoa
													Eau De Parfum</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Nước hoa
													Eau De Toilette</a></li>
										</ul>
									</div>
								</div>
							</div></li>
						<li class="has-megasubmenu"><a style="z-index: 3;"
							class="hover-overlay dropdown-item" href="javascript:void(0)">
								<span>Chăm sóc da mặt</span> <span class="float-right"><em
									class="fa fa-angle-right"> </em></span>
						</a>
							<div class="megasubmenu dropdown-menu"
								style="padding-right: 250px">
								<div class="row mb-3">
									<!-- Group button -->
									<div class="col-12 mb-3">
										<div class="btn-group" role="group" aria-label="Basic example">
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">Nổi
												bật</button>
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">Bán
												chạy</button>
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">Hàng
												mới</button>
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">Khuyến
												mãi</button>
										</div>
									</div>
									<div class="col-5">
										<p class="border-bottom ml-3 text-uppercase font-weight-bold">Quy
											Trình Chăm Sóc Da</p>
										<!-- Title -->
										<h6 class="title font-weight-bold pl-3">
											<strong>Làm Sạch</strong>
										</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="#"
												class="text-capitalize text-decoration-none">Tẩy trang</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Sữa rửa mặt</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Toner</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Tẩy tế bào
													chết</a></li>

										</ul>
									</div>
									<div class="col-4">
										<p class="border-bottom ml-3 text-uppercase font-weight-bold">Vấn
											đề về da</p>
										<!-- Title -->
										<h6 class="title pl-3">Mụn</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="#"
												class="text-capitalize text-decoration-none">Dầu thừa -
													Lỗ chân lông to</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Lão hóa -
													Nếp nhăn</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Thiếu ẩm -
													thiếu nước</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Đốm sắc tố</a>
											</li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Nhạy cảm -
													Kích ứng</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Xỉn màu &
													thâm sạm</a></li>

										</ul>
									</div>
									<div class="col-3">
										<div class="img-nuochoa position-absolute" style="top: -13px;">
											<img src="https://hasaki.vn/images/cate/nuochoa.png"
												alt="Nước hoa"
												style="vertical-align: middle; border-style: none; height: 290px;">
										</div>
									</div>
								</div>
								<div class="row mb-3">
									<div class="col-5">
										<!-- Title -->
										<h6 class="title font-weight-bold pl-3">
											<strong>Dưỡng da</strong>
										</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="#"
												class="text-capitalize text-decoration-none">Serum -
													Tinh chất</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Kem dưỡng -
													Dầu dưỡng</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Xịt khoáng</a>
											</li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Mặt nạ</a></li>
										</ul>
									</div>
									<div class="col-4">
										<p class="border-bottom ml-3 text-uppercase font-weight-bold">Loại
											Da</p>
										<!-- Title -->
										<ul class="list-unstyled pl-3">
											<li><a href="#"
												class="text-capitalize text-decoration-none">Da Dầu</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Da Khô</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Da Mụn</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Da Nhạy Cảm</a></li>

										</ul>
									</div>
								</div>
							</div></li>
						<li class="has-megasubmenu"><a style="z-index: 3;"
							class="hover-overlay dropdown-item" href="javascript:void(0)">
								<span>Chăm sóc cơ thể</span> <span class="float-right"><em
									class="fa fa-angle-right"> </em></span>
						</a>
							<div class="megasubmenu dropdown-menu"
								style="padding-bottom: 100px; padding-right: 70px">
								<div class="row mb-3">
									<!-- Group button -->
									<div class="col-12 mb-3">
										<div class="btn-group" role="group" aria-label="Basic example">
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">Nổi
												bật</button>
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">Bán
												chạy</button>
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">Hàng
												mới</button>
											<button type="button" class="btn mw-btn-135 ml-3 rounded-3">Khuyến
												mãi</button>
										</div>
									</div>
									<div class="col-4">
										<!-- Title -->
										<h6 class="title font-weight-bold pl-3">
											<strong>Làm sạch cơ thể</strong>
										</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="#"
												class="text-capitalize text-decoration-none">Sữa tắm -
													xà bông tắm</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Muối tắm</a>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Tẩy tế bào
													chết toàn thân</a>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Gel rửa tay</a>
										</ul>
									</div>
									<div class="col-4">
										<!-- Title -->
										<h6 class="title font-weight-bold pl-3">
											<strong>Dưỡng thể</strong>
										</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="#"
												class="text-capitalize text-decoration-none">Dưỡng ẩm
													toàn thân</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Dưỡng trắng
													toàn thân</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Chống nắng
													toàn thân</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Dưỡng tay
													chân</a></li>

										</ul>
									</div>
									<div class="col-4">
										<div class="img-nuochoa position-absolute" style="top: -13px;">
											<img src="https://hasaki.vn/images/cate/chamsoccothe.png"
												alt="Ảnh chăm sóc cơ thể"
												style="vertical-align: middle; border-style: none; height: 290px;">
										</div>
									</div>
								</div>
								<div class="row mb-3">
									<div class="col-4">
										<!-- Title -->
										<h6 class="title font-weight-bold pl-3">
											<strong>Kem massage - chăm sóc ngực</strong>
										</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="#"
												class="text-capitalize text-decoration-none">Giảm mỡ/tan
													mỡ</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Giảm rạn da</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Nở ngực -
													săn chắc ngực</a></li>

										</ul>
									</div>
									<div class="col-4">
										<!-- Title -->
										<h6 class="title font-weight-bold pl-3">
											<strong>Nước hoa nữ</strong>
										</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="#"
												class="text-capitalize text-decoration-none">Nước hoa
													Eau De Parfum</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Nước hoa
													Eau De Toilette</a></li>
										</ul>
									</div>
								</div>
								<div class="row">
									<div class="col-6">
										<!-- Title -->
										<h6 class="title font-weight-bold pl-3">
											<strong>Khử mùi</strong>
										</h6>
										<ul class="list-unstyled pl-3">
											<li><a href="#"
												class="text-capitalize text-decoration-none">Khử mùi cho
													nam</a></li>
											<li><a href="#"
												class="text-capitalize text-decoration-none">Khử mùi cho
													nữ</a></li>
										</ul>
									</div>
								</div>
							</div></li>
					</ul>
				</li>
				<li class="nav-item"><a
					class="nav-link text-white text-uppercase" href="#"
					data-bs-toggle="dropdown">Thương hiệu</a></li>
				<li class="nav-item"><a
					class="nav-link text-uppercase text-white" href="#">Hàng mới về</a></li>
				<li class="nav-item"><a
					class="nav-link text-uppercase text-white" href="#">Bán chạy</a></li>
				<li class="nav-item"><a
					class="nav-link text-uppercase text-white" href="#">Clinic &
						Spa</a></li>
				<li class="nav-item"><a
					class="nav-link text-uppercase text-white"
					href="${pageContext.request.contextPath}/checkout">Checkout</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle text-white text-uppercase"
					href="javascript:void(0)" data-bs-toggle="dropdown"> More pages
				</a>
					<ul class="dropdown-menu dropdown-menu-end">
						<li style="margin-top: -8px;"><a class="dropdown-item"
							href="${pageContext.request.contextPath}/wish"> Wishlist</a></li>
						<li style="margin-bottom: -8px;"><a class="dropdown-item"
							href="${pageContext.request.contextPath}/contactus"> Contact
								Us </a></li>
					</ul></li>
			</ul>

			<ul class="navbar-nav ms-auto">
				<li class="nav-item dropdown"><c:if
						test="${sessionScope.username != null}">
						<a class="nav-link dropdown-toggle text-white"
							href="javascript:void(0)" data-bs-toggle="dropdown"> ${sessionScope.username }
						</a>
						<ul class="dropdown-menu dropdown-menu-end">
							<li style="margin-top: -8px;"><a class="dropdown-item"
								href="${pageContext.request.contextPath}/account">Account</a></li>
							<li style="margin-bottom: -8px;"><a class="dropdown-item"
								href="${pageContext.request.contextPath}/login">Logout</a></li>
						</ul>
					</c:if>
					 <c:if test="${sessionScope.username == null}">
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