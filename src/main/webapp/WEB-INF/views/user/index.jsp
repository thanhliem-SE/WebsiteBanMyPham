<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<div class="header">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3">
				<nav class="navbar bg-light">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/trangchu"><i
								class="fa fa-home"></i>Trang Chủ</a></li>
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/bestseller"><i
								class="fa fa-shopping-bag"></i>Sản phẩm bán chạy</a></li>
						<li class="nav-item"><a class="nav-link"
							href="product?maDanhMuc=1"><i
								class="fa fa-plus-square"></i>Chăm sóc da mặt</a></li>
						<li class="nav-item"><a class="nav-link"
							href="product?maDanhMuc=2"><i
								class="fa fa-female"></i>Chăm sóc cơ thể</a></li>
						<li class="nav-item"><a class="nav-link"
							href="product?maDanhMuc=3"><i
								class="fa fa-child"></i>Chăm sóc tóc</a></li>
						<li class="nav-item"><a class="nav-link"
							href="product?maDanhMuc=4"><i
								class="fa fa-tshirt"></i>Nước hoa</a></li>
						<li class="nav-item"><a class="nav-link"
							href="product?maDanhMuc=5"><i
								class="fa fa-mobile-alt"></i>Trang điểm</a></li>
						<li class="nav-item"><a class="nav-link"
							href="product?maDanhMuc=6"><i
								class="fa fa-microchip"></i>Thực phẩm chức năng</a></li>
					</ul>
				</nav>
			</div>
			<div class="col-md-6">
				<div class="header-slider normal-slider">
					<div class="header-slider-item">
						<img
							src="${pageContext.request.contextPath}/${urlUserImg}/slider-1.jpg"
							alt="Slider Image" height="400px" width="600px" />
						<div class="header-slider-caption">
							<p>ĐẸP HƠN MỖI NGÀY TẠI ESTORE</p>
							<a class="btn" href=""><i class="fa fa-shopping-cart"></i>Mua
								ngay</a>
						</div>
					</div>
					<div class="header-slider-item">
						<img
							src="${pageContext.request.contextPath}/${urlUserImg}/slider-2.jpg"
							alt="Slider Image" height="400px" width="600px" />
						<div class="header-slider-caption">
							<p>ĐẸP HƠN MỖI NGÀY TẠI ESTORE</p>
							<a class="btn" href=""><i class="fa fa-shopping-cart"></i>Mua
								ngay</a>
						</div>
					</div>
					<div class="header-slider-item">
						<img
							src="${pageContext.request.contextPath}/${urlUserImg}/slider-3.jpg"
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
							src="${pageContext.request.contextPath}/${urlUserImg}/category-1.jpg" />
						<a class="img-text" href="product?maDanhMuc=1">
							<p>Da Mặt Sáng Mịn</p>
						</a>
					</div>
					<div class="img-item">
						<img
							src="${pageContext.request.contextPath}/${urlUserImg}/category-2.jpg" />
						<a class="img-text" href="product?maDanhMuc=3">
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
					src="${pageContext.request.contextPath}/${urlUserImg}/brand-1.png"
					alt="">
			</div>
			<div class="brand-item">
				<img
					src="${pageContext.request.contextPath}/${urlUserImg}/brand-2.png"
					alt="">
			</div>
			<div class="brand-item">
				<img
					src="${pageContext.request.contextPath}/${urlUserImg}/brand-3.png"
					alt="">
			</div>
			<div class="brand-item">
				<img
					src="${pageContext.request.contextPath}/${urlUserImg}/brand-4.png"
					alt="">
			</div>
			<div class="brand-item">
				<img
					src="${pageContext.request.contextPath}/${urlUserImg}/brand-5.png"
					alt="">
			</div>
			<div class="brand-item">
				<img
					src="${pageContext.request.contextPath}/${urlUserImg}/brand-6.png"
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
					<p>Sản phẩm có nguồn gốc xác thực, nhà cung cấp phân phối chính
						hãng</p>
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
						src="${pageContext.request.contextPath}/${urlUserImg}/category-3.jpg" />
					<a class="category-name" href="product?maDanhMuc=4">
						<p>Nước hoa</p>
					</a>
				</div>
			</div>
			<div class="col-md-3">
				<div class="category-item ch-250">
					<img
						src="${pageContext.request.contextPath}/${urlUserImg}/category-4.jpg" />
					<a class="category-name" href="product?maDanhMuc=2">
						<p>Chăm sóc cơ thể</p>
					</a>
				</div>
				<div class="category-item ch-150">
					<img
						src="${pageContext.request.contextPath}/${urlUserImg}/category-5.jpg" />
					<a class="category-name" href="product?maDanhMuc=6">
						<p>Thực phẩm chức năng</p>
					</a>
				</div>
			</div>
			<div class="col-md-3">
				<div class="category-item ch-150">
					<img
						src="${pageContext.request.contextPath}/${urlUserImg}/category-6.jpg" />
					<a class="category-name" href="product?maDanhMuc=5">
						<p>Trang điểm</p>
					</a>
				</div>
				<div class="category-item ch-250">
					<img
						src="${pageContext.request.contextPath}/${urlUserImg}/category-7.jpg" />
					<a class="category-name" href="product?maDanhMuc=1">
						<p>Chăm sóc da mặt</p>
					</a>
				</div>
			</div>
			<div class="col-md-3">
				<div class="category-item ch-400">
					<img
						src="${pageContext.request.contextPath}/${urlUserImg}/category-8.jpg" />
					<a class="category-name" href="product?maDanhMuc=3">
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
			<!-- Start List San Pham Noi Bat -->
			<c:forEach var="sanPham" items="${sanPhams}">
				<div class="col-lg-3">
					<div class="product-item">
						<div class="product-title">
							<a href="#">${sanPham.tenSanPham}</a>
							<div class="ratting">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
						</div>
						<div class="product-image">
							<a href="product-detail.html"> <img
								src="${pageContext.request.contextPath}/${urlUserImg}/${sanPham.getPathFirstImg()}"
								alt="Product Image">
							</a>
							<div class="product-action">
								<a href="${pageContext.request.contextPath}/cart/addtocart/${sanPham.maSanPham}"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
									class="fa fa-heart"></i></a> <a href="product-details?maSanPham=${sanPham.maSanPham}"><i
									class="fa fa-search"></i></a>
							</div>
						</div>
						<div class="product-price">
							<h3>
								<c:set var="donGia" value="${sanPham.donGia }" scope="request" />
								<%
								out.println(new DecimalFormat("#,###").format(request.getAttribute("donGia")));
								%>
							</h3>
							<a class="btn fs16" href="${pageContext.request.contextPath}/cart/addtocart/${sanPham.maSanPham}"><i
								class="fa fa-shopping-cart fs16"></i><span>Buy Now</span></a>
						</div>
					</div>
				</div>
			</c:forEach>
			<!-- End San Pham Noi Bat -->
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
			<!-- Start List San Pham Noi Bat -->
			<c:forEach var="sanPham" items="${sanPhams}">
				<div class="col-lg-3">
					<div class="product-item">
						<div class="product-title">
							<a href="#">${sanPham.tenSanPham}</a>
							<div class="ratting">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
						</div>
						<div class="product-image">
							<a href="product-detail.html"> <img
								src="${pageContext.request.contextPath}/${urlUserImg}/${sanPham.getPathFirstImg()}"
								alt="Product Image">
							</a>
							<div class="product-action">
								<a href="${pageContext.request.contextPath}/cart/addtocart/${sanPham.maSanPham}"><i class="fa fa-cart-plus"></i></a> <a href="#"><i
									class="fa fa-heart"></i></a> <a href="product-details?maSanPham=${sanPham.maSanPham}"><i
									class="fa fa-search"></i></a>
							</div>
						</div>
						<div class="product-price">
							<h3>
								<c:set var="donGia" value="${sanPham.donGia }" scope="request" />
								<%
								out.println(new DecimalFormat("#,###").format(request.getAttribute("donGia")));
								%>
							</h3>
							<a class="btn fs16" href="${pageContext.request.contextPath}/cart/addtocart/${sanPham.maSanPham}"><i
								class="fa fa-shopping-cart fs16"></i><span>Buy Now</span></a>
						</div>
					</div>
				</div>
			</c:forEach>
			<!-- End San Pham Noi Bat -->
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
							src="${pageContext.request.contextPath}/${urlUserImg}/review-1.jpg"
							alt="Image">
					</div>
					<div class="review-text">
						<h2>Nguyễn Thị Tú Dung</h2>
						<h3>Profession</h3>
						<div class="ratting">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i>
						</div>
						<p>Từ ngày mua sản phẩm tại Estore, mọi người xung quanh nhận
							xét tôi ngày càng quyến rũ, xinh đẹp hơn</p>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="review-slider-item">
					<div class="review-img">
						<img
							src="${pageContext.request.contextPath}/${urlUserImg}/review-2.jpg"
							alt="Image">
					</div>
					<div class="review-text">
						<h2>Trần Trung Vinh</h2>
						<h3>Profession</h3>
						<div class="ratting">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i>
						</div>
						<p>Gia đình 3 đời nhà chúng tôi tin dùng sản phẩm tại Estore</p>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="review-slider-item">
					<div class="review-img">
						<img
							src="${pageContext.request.contextPath}/${urlUserImg}/review-3.jpg"
							alt="Image">
					</div>
					<div class="review-text">
						<h2>Nguyễn Thị Kim Huyền</h2>
						<h3>Profession</h3>
						<div class="ratting">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i>
						</div>
						<p>Sản phẩm tại Estore đa dạng, nguồn gốc rõ ràng, sử dụng tôi
							rất an tâm.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Review End -->


