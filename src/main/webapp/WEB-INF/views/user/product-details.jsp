<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="product-detail">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-8">
				<div class="product-detail-top">
					<div class="row align-items-center">
						<div class="col-md-5">
							<div class="product-slider-single normal-slider">
								<c:forEach var="img" items="${imgs}">
									<img
										src="${pageContext.request.contextPath}/${urlUserImg}/${img}"
										alt="Product Image">
								</c:forEach>
							</div>
							<div class="product-slider-single-nav normal-slider">
								<c:forEach var="img" items="${imgs}">
									<div class="slider-nav-img">
										<img
											src="${pageContext.request.contextPath}/${urlUserImg}/${img}"
											alt="Product Image">
									</div>
								</c:forEach>

							</div>
						</div>
						<c:set var="sp" value="${sanPham}" />
						<div class="col-md-7">
							<div class="product-content">
								<div class="title">
									<h2>${sp.tenSanPham}</h2>
								</div>
								<div class="ratting">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i>
								</div>
								<div class="price">
									<h4>Price:</h4>
									<c:set var="donGia" value="${sanPham.donGia }" scope="request" />
									<%
									out.println(new DecimalFormat("#,###").format(request.getAttribute("donGia")) + " đ");
									%>
								</div>
								<div class="p-size">
									<h4>Còn lại:</h4>
									<div class="btn-group btn-group-sm">
										<p>${sanPham.soLuongTon }</p>
									</div>
								</div>
								<div class="p-color">
									<h4>Giảm giá:</h4>
									<div class="btn-group btn-group-sm">
										<p>${sanPham.giamGia }%</p>
									</div>
								</div>
								<div class="action">

									<a class="btn" href="${pageContext.request.contextPath}/cart/addtocart/${sanPham.maSanPham}">
									<i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a> 



								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row product-detail-bottom">
					<div class="col-lg-12">
						<ul class="nav nav-pills nav-justified">
							<li class="nav-item"><a class="nav-link active"
								data-toggle="pill" href="#description">Mô Tả Sản Phẩm</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="pill"
								href="#specification">Thành Phần</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="pill"
								href="#reviews">Đánh Giá</a></li>
						</ul>

						<div class="tab-content">
							<div id="description" class="container tab-pane active">
								<h4></h4>
								<p>${sp.congDung }</p>
							</div>
							<div id="specification" class="container tab-pane fade">
								<h4></h4>
								<p>${sp.thanhPhan}</p>
							</div>
							<div id="reviews" class="container tab-pane fade">
								<div class="reviews-submitted">
									<div class="reviewer">
										Hoàng Sơn - <span>01 Jan 2020</span>
									</div>
									<div class="ratting">
										<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
									<p>Sản phẩm dùng rất tốt, hiện nay 3 đời nhà mình đều đang
										dùng sản phẩm này.</p>
								</div>
								<c:forEach var="rv" items="${listReview}">
									<div id="reviews" class="container tab-pane fade">
										<div class="reviews-submitted">
											<div class="reviewer">${rv.ten}</div>
											<div class="ratting">
												<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
													class="fa fa-star"></i> <i class="fa fa-star"></i> <i
													class="fa fa-star"></i>
											</div>
											<p>${rv.danhGia}</p>
										</div>
									</div>
								</c:forEach>
								<div class="reviews-submit">
									<h4>Gửi đánh giá của bạn:</h4>
									<div class="ratting">
										<i class="far fa-star"></i> <i class="far fa-star"></i> <i
											class="far fa-star"></i> <i class="far fa-star"></i> <i
											class="far fa-star"></i>
									</div>
									<form:form method="post" action="addReview">
										<div class="row form">
											<div class="col-sm-6">
												<input type="text" name="maSanPham" value="${sp.maSanPham}"
													hidden> <input type="text" placeholder="Tên"
													name="ten">
											</div>
											<div class="col-sm-6">
												<input type="email" placeholder="Email" name="danhGia">
											</div>
											<div class="col-sm-12">
												<textarea placeholder="Đánh giá" name="danhGia"></textarea>
											</div>
											<div class="col-sm-12">
												<button type="submit">Submit</button>
											</div>
										</div>
									</form:form>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="product">
					<div class="section-header">
						<h1>Sản phẩm gần đây</h1>
					</div>

					<div class="row align-items-center product-slider product-slider-3">
						<c:forEach var="sp" items="${sanPhams}">
							<div class="col-lg-3">
								<div class="product-item">
									<div class="product-title">
										<a href="#">${sp.tenSanPham}</a>
										<div class="ratting">
											<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i>
										</div>
									</div>
									<div class="product-image">
										<a href="product-detail.html"> <img
											src="${pageContext.request.contextPath}/${urlUserImg}/${sp.getPathFirstImg()}"
											alt="Product Image">
										</a>
										<div class="product-action">
											<a
												href="${pageContext.request.contextPath}/cart/addtocart/${sanPham.maSanPham}"><i
												class="fa fa-cart-plus"></i></a> <a href="#"><i
												class="fa fa-heart"></i></a> <a
												href="product-details?maSanPham=${sp.maSanPham}"><i
												class="fa fa-search"></i></a>
										</div>
									</div>
									<div class="product-price">
										<h3 style="font-size: 16px">
											<c:set var="donGia" value="${sp.donGia }" scope="request" />
											<%
											out.println(new DecimalFormat("#,###").format(request.getAttribute("donGia")));
											%>
										</h3>
										<a class="btn" href=""><i class="fa fa-shopping-cart"></i>Mua
											ngay</a>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
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
				</div>

				<div class="sidebar-widget brands">
					<h2 class="title">Nhà cung cấp</h2>
					<ul>
						<c:forEach var="ncc" items="${listNhaCungCap}">
							<li><a href="product?nhaCC=${ncc.tenNCC}">${ncc.tenNCC}
							</a></li>
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
						href="product?tenSP=gàu">gàu </a> <a href="product?tenSP=nước hoa">nước
						hoa</a> <a href="product?tenSP=kem tái sinh">kem tái sinh</a> <a
						href="product?tenSP=da trắng">da trắng</a>
				</div>
			</div>
			<!-- Side Bar End -->
		</div>
	</div>
</div>