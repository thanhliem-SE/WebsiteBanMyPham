<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="checkout">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-8">
				<div class="checkout-inner">
					<div class="billing-address">
						<h2>Billing Address</h2>
						<div class="row">
							<form:form action="checkout/themHoaDon" method="post"
								modelAttribute="hoaDon">
								<div class="col-md-12">
									<label>Họ và tên</label>
									<form:input cssClass="form-control" path="tenNhanHang"
										placeholder="Trần Trung Vinh" />
								</div>

								<div class="col-md-12">
									<label>E-mail</label>
									<form:input cssClass="form-control" path="email"
										placeholder="hello.trungvinh@estore.com" />
								</div>
								<div class="col-md-12">
									<label>Số điện thoại</label>
									<form:input cssClass="form-control" type="tel"
										path="sdtNhanHang" placeholder="0987059059" />
								</div>
								
								<div class="col-md-12">
									<label>Địa chỉ nhận hàng</label>
									<form:input cssClass="form-control" type="text"
										path="diaChiNhanHang" placeholder="Số nhà, đường, xã, quận, huyện, thành phố" />
								</div>
								<div class="col-md-12">
											<div class="form-group">
												<label>Phương thức nhận hàng</label> <select
													name="maThanhToan" class="custom-select" required>
													<c:forEach var="tt" items="${listThanhToans}">
														<option value="${tt.maThanhToan}" selected="selected">
															${tt.phuongThucTT}</option>
													</c:forEach>
												</select>
											</div>
										</div>
<!-- 								<div class="col-md-12">
									<label>Ghi chú</label>
									<textarea class="form-control" id="exampleFormControlTextarea1"
										rows="3"></textarea>
								</div> -->
								<div class="col-md-12">
									<input type="submit" value="Đặt hàng">
								</div>

								<div></div>

							</form:form>

						</div>
					</div>


				</div>
			</div>
			<div class="col-lg-4">
				<div class="checkout-inner">
					<div class="checkout-summary">
						<h1>Tổng tiền giỏ hàng</h1>

						<p class="sub-total">
							Tạm tính
							<span> <fmt:formatNumber type="number"
									pattern="###,###,### ₫" value="${sub}" />
							</span>
						</p>
						<p class="sub-total">
							Giảm giá <span> <fmt:formatNumber type="number"
									pattern="###,###,### ₫" value="${salePrice}" />
							</span>
						</p>
						<p>
							Tổng tiền (${quantity} sản phẩm) <span> <fmt:formatNumber
									type="number" pattern="###,###,### ₫" value="${price}" />
							</span>
						</p>
					</div>

				</div>
			</div>
		</div>
	</div>
</div>