<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="cart-page">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-8">

				<div class="cart-page-inner">
					<div class="table-responsive">
						<c:if test="${empty statuscart}">
							<a href="${pageContext.request.contextPath}/">
								<button type="button" class="btn btn-success fs14"
									style="margin-bottom: 19px;">
									<i class="fa fa-angle-left"></i> Tiếp tục mua hàng
								</button>
							</a>
						</c:if>
						<table class="table table-bordered">
							<thead class="thead-dark">
								<c:if test="${not empty statuscart }">
									<div>
										<div style="text-align: center">
											<img
												src="${pageContext.request.contextPath}/${urlUserImg}/nocart.png"
												style="height: 194px; max-width: 100%">
										</div>
										<p
											style="color: rgba(0, 0, 0, 0.4); text-align: center; font-size: 1rem; line-height: 1rem; margin-top: 1.125rem;">
											<b>Giỏ hàng của bạn còn trống</b>
										</p>
										<div style="text-align: center;">
											<a href="${pageContext.request.contextPath}/">
												<button type="button" class="btn btn-success fs14"
													style="margin-bottom: 19px; background: #F91C1C; color: white; min-width: 189px;">
													</i> MUA NGAY
												</button>
											</a>
										</div>
									</div>
								</c:if>
								<c:if test="${empty statuscart}">
									<tr>
										<th>Sản phẩm</th>
										<th colspan="2">Giá</th>
										<th>Số lượng</th>
										<th colspan="2">Thành tiền</th>
										<th>Xoá</th>
									</tr>
								</c:if>
							</thead>
							<tbody class="align-middle">
								<c:forEach var="ds" items="${sessionScope.cart}">
									<tr>

										<td>
											<div class="img">
												<a href="#"><img
													src="${pageContext.request.contextPath}/${urlUserImg}/"
													alt="Image"></a>
												<p>${ds.sp.tenSanPham }</p>
											</div>
										</td>
										<td colspan="2"><fmt:formatNumber type="number"
												pattern="#,###,###.## ₫" value="${ds.sp.donGia }" /></td>
										<td>
											<div class="qty">
												<c:if test="${ds.soLuong >= 2}">
													<a href="removeCartItem/${ds.sp.maSanPham}">
														<button class="btn-minus">
															<i class="fa fa-minus"></i>
														</button>
													</a>
												</c:if>
												<c:if test="${ds.soLuong == 1}">
													<a href="javascript:void(0)">
														<button class="btn-minus" style="opacity: 0.5">
															<i class="fa fa-minus"></i>
														</button>
													</a>
												</c:if>
												<input type="text" value="${ds.soLuong}">
												<c:if test="${ds.soLuong >= ds.sp.soLuongTon}">
													<a
														onclick="return confirm('Không đủ số lượng trong kho!');"
														href="javascript:void(0)">
														<button class="btn-plus">
															<i class="fa fa-plus"></i>
														</button>
													</a>
												</c:if>
												<c:if test="${ds.soLuong < ds.sp.soLuongTon}">
													<a href="addCartItem/${ds.sp.maSanPham}">
														<button class="btn-plus">
															<i class="fa fa-plus"></i>
														</button>
													</a>
												</c:if>
											</div>
										</td>
										<td colspan="2"><fmt:formatNumber type="number"
												pattern="#,###,###.## ₫"
												value="${ds.sp.donGia * ds.soLuong}" /></td>
										<td><a
											onclick="return confirm('Bạn muốn xoá mình ra khỏi giỏ hàng ư :<?');"
											href="<c:url value="deletecart/${ds.sp.maSanPham}"/>">
												<button>
													<i class="fa fa-trash"></i>
												</button>
										</a></td>

									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="col-lg-4">
				<div class="cart-page-inner">
					<div class="row">
						<div class="col-md-12">
							<div class="coupon">
								<input type="text" placeholder="Coupon Code">
								<button>Apply Code</button>
							</div>
						</div>
						<div class="col-md-12">
							<div class="cart-summary">
								<div class="cart-content">
									<h1>Hoá đơn của bạn(VAT)</h1>
									<p>
										Tạm tính<span> <fmt:formatNumber type="number"
												pattern="#,###,###.## ₫" value="${price}" /></span>
									</p>
									<!-- <p>Shipping Cost<span>0</span><span>₫</span></p> -->
									<h2>
										Tổng tiền<span> <fmt:formatNumber type="number"
												pattern="#,###,###.## ₫" value="${price}" /></span>
									</h2>
								</div>
								<div class="cart-btn">
									<a href="${pageContext.request.contextPath}/checkout">
										<button>Checkout</button>
									</a>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Cart End -->