<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Trang Chủ</title>

<!-- Favicon -->
<link
	href="${pageContext.request.contextPath}/resources/img/favicon.ico"
	rel="icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400|Source+Code+Pro:700,900&display=swap"
	rel="stylesheet">

<!-- CSS Libraries -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/lib/slick/slick.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/lib/slick/slick-theme.css"
	rel="stylesheet">

<!-- Template Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet">
</head>

<body>
	
	<!-- Bottom Bar Start -->
	<div class="bottom-bar">
		<div class="container-fluid">
			<div class="row align-items-center">
				<div class="col-md-3">
					<div class="logo">
						<a href="index.html"> <img
							src="${pageContext.request.contextPath}/resources/img/logo.png"
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
						<a href="wishlist.html" class="btn wishlist"> <i
							class="fa fa-heart"></i> <span>(0)</span>
						</a> <a href="cart.html" class="btn cart"> <i
							class="fa fa-shopping-cart"></i> <span>(0)</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Bottom Bar End -->

	<!-- Main Slider Start -->
	<div class="header">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-3">
					<nav class="navbar bg-light">
						<ul class="navbar-nav">
							<li class="nav-item"><a class="nav-link" href="#"><i
									class="fa fa-home"></i>Trang Chủ</a></li>
							<li class="nav-item"><a class="nav-link" href="#"><i
									class="fa fa-shopping-bag"></i>Sản phẩm bán chạy</a></li>
							<li class="nav-item"><a class="nav-link" href="#"><i
									class="fa fa-plus-square"></i>Chăm Sóc Da Mặt</a></li>
							<li class="nav-item"><a class="nav-link" href="#"><i
									class="fa fa-female"></i>Chăm Sóc Cơ THể</a></li>
							<li class="nav-item"><a class="nav-link" href="#"><i
									class="fa fa-child"></i>Chăm Sóc Tóc</a></li>
							<li class="nav-item"><a class="nav-link" href="#"><i
									class="fa fa-tshirt"></i>Nước Hoa</a></li>
							<li class="nav-item"><a class="nav-link" href="#"><i
									class="fa fa-mobile-alt"></i>Trang điểm</a></li>
							<li class="nav-item"><a class="nav-link" href="#"><i
									class="fa fa-microchip"></i>Thực Phẩm Chức Năng</a></li>
						</ul>
					</nav>
				</div>
				<div class="col-md-6">
					<div class="header-slider normal-slider">
						<div class="header-slider-item">
							<img
								src="${pageContext.request.contextPath}/resources/img/slider-1.jpg"
								alt="Slider Image" height="400px" width="600px" />
							<div class="header-slider-caption">
								<p>ĐẸP HƠN MỖI NGÀY TẠI ESTORE</p>
								<a class="btn" href=""><i class="fa fa-shopping-cart"></i>Mua
									ngay</a>
							</div>
						</div>
						<div class="header-slider-item">
							<img
								src="${pageContext.request.contextPath}/resources/img/slider-2.jpg"
								alt="Slider Image" height="400px" width="600px" />
							<div class="header-slider-caption">
								<p>ĐẸP HƠN MỖI NGÀY TẠI ESTORE</p>
								<a class="btn" href=""><i class="fa fa-shopping-cart"></i>Mua
									ngay</a>
							</div>
						</div>
						<div class="header-slider-item">
							<img
								src="${pageContext.request.contextPath}/resources/img/slider-3.jpg"
								alt="Slider Image" height="400px" width="600px" />
							<div class="header-slider-caption">
								<p>ĐẸP HƠN MỖI NGÀY TẠI ESTORE</p>
								<a class="btn" href=""><i class="fa fa-shopping-cart"></i>Mua
									ngay</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="header-img">
						<div class="img-item">
							<img
								src="${pageContext.request.contextPath}/resources/img/category-1.jpg" />
							<a class="img-text" href="">
								<p>Da Mặt Sáng Mịn</p>
							</a>
						</div>
						<div class="img-item">
							<img
								src="${pageContext.request.contextPath}/resources/img/category-2.jpg" />
							<a class="img-text" href="">
								<p>Tóc Chắc Khỏe</p>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Main Slider End -->

	<!-- Brand Start -->
	<div class="brand">
		<div class="container-fluid">
			<div class="brand-slider">
				<div class="brand-item">
					<img
						src="${pageContext.request.contextPath}/resources/img/brand-1.png"
						alt="">
				</div>
				<div class="brand-item">
					<img
						src="${pageContext.request.contextPath}/resources/img/brand-2.png"
						alt="">
				</div>
				<div class="brand-item">
					<img
						src="${pageContext.request.contextPath}/resources/img/brand-3.png"
						alt="">
				</div>
				<div class="brand-item">
					<img
						src="${pageContext.request.contextPath}/resources/img/brand-4.png"
						alt="">
				</div>
				<div class="brand-item">
					<img
						src="${pageContext.request.contextPath}/resources/img/brand-5.png"
						alt="">
				</div>
				<div class="brand-item">
					<img
						src="${pageContext.request.contextPath}/resources/img/brand-6.png"
						alt="">
				</div>
			</div>
		</div>
	</div>
	<!-- Brand End -->

	<!-- Feature Start-->
	<div class="feature">
		<div class="container-fluid">
			<div class="row align-items-center">
				<div class="col-lg-3 col-md-6 feature-col">
					<div class="feature-content">
						<i class="fab fa-cc-mastercard"></i>
						<h2>Uy Tín Chính Hãng</h2>
						<p>Sản phẩm có nguồn gốc xác thực, nhà cung cấp phân phối
							chính hãng</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 feature-col">
					<div class="feature-content">
						<i class="fa fa-truck"></i>
						<h2>Giao hàng nhanh chóng</h2>
						<p>Đơn vị vận chuyển tiếp nhận và giao hàng trong thời gian
							ngắn nhất</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 feature-col">
					<div class="feature-content">
						<i class="fa fa-sync-alt"></i>
						<h2>14 ngày đổi trả</h2>
						<p>Sản phẩm lỗi, không như mô tả sẽ được đổi trả miễn phí</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 feature-col">
					<div class="feature-content">
						<i class="fa fa-comments"></i>
						<h2>Hỗ trợ 24/7</h2>
						<p>Đội ngũ chăm sóc khách hàng luôn sẵn sàng giải đáp mọi thắc
							mắc</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Feature End-->

	<!-- Category Start-->
	<div class="category">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-3">
					<div class="category-item ch-400">
						<img
							src="${pageContext.request.contextPath}/resources/img/category-3.jpg" />
						<a class="category-name" href="">
							<p>Nước hoa</p>
						</a>
					</div>
				</div>
				<div class="col-md-3">
					<div class="category-item ch-250">
						<img
							src="${pageContext.request.contextPath}/resources/img/category-4.jpg" />
						<a class="category-name" href="">
							<p>Chăm sóc cơ thể</p>
						</a>
					</div>
					<div class="category-item ch-150">
						<img
							src="${pageContext.request.contextPath}/resources/img/category-5.jpg" />
						<a class="category-name" href="">
							<p>Thực phẩm chức năng</p>
						</a>
					</div>
				</div>
				<div class="col-md-3">
					<div class="category-item ch-150">
						<img
							src="${pageContext.request.contextPath}/resources/img/category-6.jpg" />
						<a class="category-name" href="">
							<p>Trang điểm</p>
						</a>
					</div>
					<div class="category-item ch-250">
						<img
							src="${pageContext.request.contextPath}/resources/img/category-7.jpg" />
						<a class="category-name" href="">
							<p>Chăm sóc da mặt</p>
						</a>
					</div>
				</div>
				<div class="col-md-3">
					<div class="category-item ch-400">
						<img
							src="${pageContext.request.contextPath}/resources/img/category-8.jpg" />
						<a class="category-name" href="">
							<p>Chăm sóc tóc</p>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Category End-->

	<!-- Call to Action Start -->
	<div class="call-to-action">
		<div class="container-fluid">
			<div class="row align-items-center">
				<div class="col-md-6">
					<h1>Giải đáp bất kỳ thắc mắc nào</h1>
				</div>
				<div class="col-md-6">
					<a href="tel:0123456789">+012-345-6789</a>
				</div>
			</div>
		</div>
	</div>
	<!-- Call to Action End -->

	<!-- Featured Product Start -->
	<div class="featured-product product">
		<div class="container-fluid">
			<div class="section-header">
				<h1>Sản Phẩm Nổi Bật</h1>
			</div>
			<div class="row align-items-center product-slider product-slider-4">
				<div class="col-lg-3">
					<div class="product-item">
						<div class="product-title">
							<a href="#">Product Name</a>
							<div class="ratting">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
						</div>
						<div class="product-image">
							<a href="product-detail.html"> <img
								src="${pageContext.request.contextPath}/resources/img/product-1.jpg"
								alt="Product Image">
							</a>
							<div class="product-action">
								<a href="#"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
									class="fa fa-heart"></i></a> <a href="#"><i
									class="fa fa-search"></i></a>
							</div>
						</div>
						<div class="product-price">
							<h3>
								<span>$</span>99
							</h3>
							<a class="btn" href=""><i class="fa fa-shopping-cart"></i>Buy
								Now</a>
						</div>
					</div>
				</div>
				<div class="col-lg-3">
					<div class="product-item">
						<div class="product-title">
							<a href="#">Product Name</a>
							<div class="ratting">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
						</div>
						<div class="product-image">
							<a href="product-detail.html"> <img
								src="${pageContext.request.contextPath}/resources/img/product-2.jpg"
								alt="Product Image">
							</a>
							<div class="product-action">
								<a href="#"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
									class="fa fa-heart"></i></a> <a href="#"><i
									class="fa fa-search"></i></a>
							</div>
						</div>
						<div class="product-price">
							<h3>
								<span>$</span>99
							</h3>
							<a class="btn" href=""><i class="fa fa-shopping-cart"></i>Buy
								Now</a>
						</div>
					</div>
				</div>
				<div class="col-lg-3">
					<div class="product-item">
						<div class="product-title">
							<a href="#">Product Name</a>
							<div class="ratting">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
						</div>
						<div class="product-image">
							<a href="product-detail.html"> <img
								src="${pageContext.request.contextPath}/resources/img/product-3.jpg"
								alt="Product Image">
							</a>
							<div class="product-action">
								<a href="#"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
									class="fa fa-heart"></i></a> <a href="#"><i
									class="fa fa-search"></i></a>
							</div>
						</div>
						<div class="product-price">
							<h3>
								<span>$</span>99
							</h3>
							<a class="btn" href=""><i class="fa fa-shopping-cart"></i>Buy
								Now</a>
						</div>
					</div>
				</div>
				<div class="col-lg-3">
					<div class="product-item">
						<div class="product-title">
							<a href="#">Product Name</a>
							<div class="ratting">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
						</div>
						<div class="product-image">
							<a href="product-detail.html"> <img
								src="${pageContext.request.contextPath}/resources/img/product-4.jpg"
								alt="Product Image">
							</a>
							<div class="product-action">
								<a href="#"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
									class="fa fa-heart"></i></a> <a href="#"><i
									class="fa fa-search"></i></a>
							</div>
						</div>
						<div class="product-price">
							<h3>
								<span>$</span>99
							</h3>
							<a class="btn" href=""><i class="fa fa-shopping-cart"></i>Buy
								Now</a>
						</div>
					</div>
				</div>
				<div class="col-lg-3">
					<div class="product-item">
						<div class="product-title">
							<a href="#">Product Name</a>
							<div class="ratting">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
						</div>
						<div class="product-image">
							<a href="product-detail.html"> <img
								src="${pageContext.request.contextPath}/resources/img/product-5.jpg"
								alt="Product Image">
							</a>
							<div class="product-action">
								<a href="#"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
									class="fa fa-heart"></i></a> <a href="#"><i
									class="fa fa-search"></i></a>
							</div>
						</div>
						<div class="product-price">
							<h3>
								<span>$</span>99
							</h3>
							<a class="btn" href=""><i class="fa fa-shopping-cart"></i>Buy
								Now</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Featured Product End -->

	<!-- Newsletter Start -->
	<div class="newsletter">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-6">
					<h1>Đăng ký để nhận thông tin sản phẩm nhanh nhất</h1>
				</div>
				<div class="col-md-6">
					<div class="form">
						<input type="email" value="Nhập email của bạn">
						<button>Submit</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Newsletter End -->

	<!-- Recent Product Start -->
	<div class="recent-product product">
		<div class="container-fluid">
			<div class="section-header">
				<h1>Sản Phẩm Mới</h1>
			</div>
			<div class="row align-items-center product-slider product-slider-4">
				<div class="col-lg-3">
					<div class="product-item">
						<div class="product-title">
							<a href="#">Product Name</a>
							<div class="ratting">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
						</div>
						<div class="product-image">
							<a href="product-detail.html"> <img
								src="${pageContext.request.contextPath}/resources/img/product-6.jpg"
								alt="Product Image">
							</a>
							<div class="product-action">
								<a href="#"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
									class="fa fa-heart"></i></a> <a href="#"><i
									class="fa fa-search"></i></a>
							</div>
						</div>
						<div class="product-price">
							<h3>
								<span>$</span>99
							</h3>
							<a class="btn" href=""><i class="fa fa-shopping-cart"></i>Buy
								Now</a>
						</div>
					</div>
				</div>
				<div class="col-lg-3">
					<div class="product-item">
						<div class="product-title">
							<a href="#">Product Name</a>
							<div class="ratting">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
						</div>
						<div class="product-image">
							<a href="product-detail.html"> <img
								src="${pageContext.request.contextPath}/resources/img/product-7.jpg"
								alt="Product Image">
							</a>
							<div class="product-action">
								<a href="#"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
									class="fa fa-heart"></i></a> <a href="#"><i
									class="fa fa-search"></i></a>
							</div>
						</div>
						<div class="product-price">
							<h3>
								<span>$</span>99
							</h3>
							<a class="btn" href=""><i class="fa fa-shopping-cart"></i>Buy
								Now</a>
						</div>
					</div>
				</div>
				<div class="col-lg-3">
					<div class="product-item">
						<div class="product-title">
							<a href="#">Product Name</a>
							<div class="ratting">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
						</div>
						<div class="product-image">
							<a href="product-detail.html"> <img
								src="${pageContext.request.contextPath}/resources/img/product-8.jpg"
								alt="Product Image">
							</a>
							<div class="product-action">
								<a href="#"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
									class="fa fa-heart"></i></a> <a href="#"><i
									class="fa fa-search"></i></a>
							</div>
						</div>
						<div class="product-price">
							<h3>
								<span>$</span>99
							</h3>
							<a class="btn" href=""><i class="fa fa-shopping-cart"></i>Buy
								Now</a>
						</div>
					</div>
				</div>
				<div class="col-lg-3">
					<div class="product-item">
						<div class="product-title">
							<a href="#">Product Name</a>
							<div class="ratting">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
						</div>
						<div class="product-image">
							<a href="product-detail.html"> <img
								src="${pageContext.request.contextPath}/resources/img/product-9.jpg"
								alt="Product Image">
							</a>
							<div class="product-action">
								<a href="#"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
									class="fa fa-heart"></i></a> <a href="#"><i
									class="fa fa-search"></i></a>
							</div>
						</div>
						<div class="product-price">
							<h3>
								<span>$</span>99
							</h3>
							<a class="btn" href=""><i class="fa fa-shopping-cart"></i>Buy
								Now</a>
						</div>
					</div>
				</div>
				<div class="col-lg-3">
					<div class="product-item">
						<div class="product-title">
							<a href="#">Product Name</a>
							<div class="ratting">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
						</div>
						<div class="product-image">
							<a href="product-detail.html"> <img
								src="${pageContext.request.contextPath}/resources/img/product-10.jpg"
								alt="Product Image">
							</a>
							<div class="product-action">
								<a href="#"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
									class="fa fa-heart"></i></a> <a href="#"><i
									class="fa fa-search"></i></a>
							</div>
						</div>
						<div class="product-price">
							<h3>
								<span>$</span>99
							</h3>
							<a class="btn" href=""><i class="fa fa-shopping-cart"></i>Buy
								Now</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Recent Product End -->

	<!-- Review Start -->
	<div class="review">
		<div class="container-fluid">
			<div class="row align-items-center review-slider normal-slider">
				<div class="col-md-6">
					<div class="review-slider-item">
						<div class="review-img">
							<img
								src="${pageContext.request.contextPath}/resources/img/review-1.jpg"
								alt="Image">
						</div>
						<div class="review-text">
							<h2>Customer Name</h2>
							<h3>Profession</h3>
							<div class="ratting">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Curabitur vitae nunc eget leo finibus luctus et vitae lorem</p>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="review-slider-item">
						<div class="review-img">
							<img
								src="${pageContext.request.contextPath}/resources/img/review-2.jpg"
								alt="Image">
						</div>
						<div class="review-text">
							<h2>Customer Name</h2>
							<h3>Profession</h3>
							<div class="ratting">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Curabitur vitae nunc eget leo finibus luctus et vitae lorem</p>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="review-slider-item">
						<div class="review-img">
							<img
								src="${pageContext.request.contextPath}/resources/img/review-3.jpg"
								alt="Image">
						</div>
						<div class="review-text">
							<h2>Customer Name</h2>
							<h3>Profession</h3>
							<div class="ratting">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Curabitur vitae nunc eget leo finibus luctus et vitae lorem</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Review End -->

	<!-- Back to Top -->
	<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/lib/easing/easing.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/lib/slick/slick.min.js"></script>

	<!-- Template Javascript -->
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</body>
</html>
