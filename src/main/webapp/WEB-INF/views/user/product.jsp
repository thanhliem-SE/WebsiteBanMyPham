<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<div class="breadcrumb-wrap">
	<div class="container-fluid">
		<ul class="breadcrumb">
			<li class="breadcrumb-item"><a href="#">Trang Chủ</a></li>
			<li class="breadcrumb-item"><a href="#">Sản phẩm</a></li>
			<li class="breadcrumb-item active">Danh sách sản phẩm</li>
		</ul>
	</div>
</div>

<div class="product-view">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-8">
				<div class="row">
					<div class="col-md-12">
						<div class="product-view-top">
							<div class="row">
								<div class="col-md-4">
									<div class="product-search">
										<form action="product">
											<input name="tenSP" type="text" placeholder="Search">
											<button type="submit">
												<i class="fa fa-search"></i>
											</button>
										</form>
									</div>
								</div>
								<div class="col-md-4">
									<div class="product-short">
										<div class="dropdown">
											<div class="dropdown-toggle" data-toggle="dropdown">Sản
												phẩm HOT</div>
											<div class="dropdown-menu dropdown-menu-right">
												<a href="#" class="dropdown-item">Mới nhất</a> <a href="#"
													class="dropdown-item">Phổ biến nhất</a> <a href="#"
													class="dropdown-item">Sale off</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="product-price-range">
										<div class="dropdown">
											<div class="dropdown-toggle" data-toggle="dropdown">Sản
												phẩm theo giá</div>
											<div class="dropdown-menu dropdown-menu-right">
												<a href="product?dinhMuc=1" class="dropdown-item">Dưới 1
													Triệu</a> <a href="product?dinhMuc=2" class="dropdown-item">1
													Triệu - 3 Triệu</a> <a href="product?dinhMuc=3"
													class="dropdown-item">Trên 3 Triệu</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<c:forEach var="sanPham" items="${sanPhams}">
						<div class="col-md-4">
							<div class="product-item">
								<div class="product-title">
									<a href="#">${sanPham.tenSanPham }</a>
									<div class="ratting">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
								</div>
								<div class="product-image">
									<a href="${pageContext.request.contextPath}/product-details">
										<img
										src="${pageContext.request.contextPath}/${urlUserImg}/${sanPham.getPathFirstImg()}"
										alt="Product Image">
									</a>
									<div class="product-action">
										<a
											href="${pageContext.request.contextPath}/cart/addtocart/${sanPham.maSanPham}"><i
											class="fa fa-cart-plus"></i></a> <a href="#"><i
											class="fa fa-heart"></i></a> <a
											href="product-details?maSanPham=${sanPham.maSanPham}"><i
											class="fa fa-search"></i></a>
									</div>
								</div>
								<div class="product-price">
									<h3 style="font-size: 16px;">
										<c:set var="donGia" value="${sanPham.donGia }" scope="request" />
										<%
										out.println(new DecimalFormat("#,###").format(request.getAttribute("donGia")));
										%>
									</h3>
									<a class="btn"
										href="<c:url value="product-details?maSanPham=${sanPham.maSanPham}"/>">
										<i class="fa fa-shopping-cart"></i>Chi tiết
									</a>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>

				<!-- Pagination Start -->
				<div class="col-md-12">
					<nav aria-label="Page navigation example">
						<ul class="pagination justify-content-center">
							<li class="page-item"><a class="page-link px-4"
								href="product?page=${previosPage }">Trước đó</a></li>

							<c:forEach var="i" begin="1" end="${countPage}">
								<li class="page-item"><a class="page-link px-4"
									href="product?page=${i}">${i}</a></li>
							</c:forEach>
							<li class="page-item"><a class="page-link px-4"
								href="product?page=${nextPage }">Tiếp theo</a></li>
						</ul>
					</nav>
				</div>
				<!-- Pagination Start -->
			</div>

			<!-- Side Bar Start -->
			<div class="col-lg-4 sidebar">
				<div class="sidebar-widget category">
					<h2 class="title">Danh mục</h2>
					<nav class="navbar bg-light">
						<ul class="navbar-nav">
							<c:forEach var="dm" items="${listDanhMuc}">
								<li class="nav-item"><a class="nav-link"
									href="product?maDanhMuc=${dm.maDanhMuc}"><i
										class="fa fa-female"></i>${dm.tenDanhMuc}</a></li>
							</c:forEach>
						</ul>
					</nav>
				</div>

				<div class="sidebar-widget widget-slider">
					<div class="sidebar-slider normal-slider">
						<div class="product-item">
							<div class="product-image">
								<a href="#"> <img
									src="${pageContext.request.contextPath}/${urlUserImg}/img-0.jpg"
									alt="Product Image">
								</a>

							</div>
						</div>
					</div>

					<div class="sidebar-widget brands">
						<h2 class="title">Nhà cung cấp</h2>
						<ul>
							<c:forEach var="ncc" items="${listNhaCungCap}">
								<li><a href="product?nhaCC=${ncc.tenNCC}">${ncc.tenNCC} </a></li>
							</c:forEach>
							
						</ul>
					</div>

					<div class="sidebar-widget tag">
						<h2 class="title">Tags</h2>
						<a href="product?tenSP=tẩy da">tẩy da</a> <a
							href="product?tenSP=mặt nạ">mặt nạ</a> <a
							href="product?tenSP=dưỡng ẩm">dưỡng ẩm</a> <a
							href="product?tenSP=trang điểm">trang điểm</a> <a
							href="product?tenSP=collagen">collagen</a> <a
							href="product?tenSP=phấn nước">phấn nước</a> <a
							href="product?tenSP=sữa rửa mặt">sữa rửa mặt</a> <a
							href="product?tenSP=tóc bết">tóc bết</a> <a
							href="product?tenSP=gàu">gàu </a> <a
							href="product?tenSP=nước hoa">nước hoa</a> <a
							href="product?tenSP=kem tái sinh">kem tái sinh</a> <a
							href="product?tenSP=da trắng">da trắng</a>
					</div>
				</div>
				<!-- Side Bar End -->
			</div>
		</div>
	</div>
	<!-- Product List End -->

	<!-- Brand Start -->
	<div class="brand">
		<div class="container-fluid">
			<div class="brand-slider">
				<div class="brand-item">
					<img src="img/brand-1.png" alt="">
				</div>
				<div class="brand-item">
					<img src="img/brand-2.png" alt="">
				</div>
				<div class="brand-item">
					<img src="img/brand-3.png" alt="">
				</div>
				<div class="brand-item">
					<img src="img/brand-4.png" alt="">
				</div>
				<div class="brand-item">
					<img src="img/brand-5.png" alt="">
				</div>
				<div class="brand-item">
					<img src="img/brand-6.png" alt="">
				</div>
			</div>
		</div>
	</div>
	<!-- Brand End -->