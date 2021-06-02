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
						<h2>ĐỊA CHỈ GIAO HÀNG</h2>
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
									<label>Số nhà</label>
									<input class="form-control" name="soNha" type="text"
										placeholder="số nhà, tên đường" />
								</div>

								<div class="col-md-12">
									<div class="form-group">
										<label>Phường</label> <select name="phuong"
											class="custom-select" required>
											<option value="Phường 1" selected="selected">Phường
												1</option>
											<option value="Phường 2">Phường 2</option>
											<option value="Phường 3">Phường 3</option>
											<option value="Phường 4">Phường 4</option>
											<option value="Phường 5">Phường 5</option>
											<option value="Phường 6">Phường 6</option>
											<option value="Phường 7">Phường 7</option>
											<option value="Phường 8">Phường 8</option>
											<option value="Phường 9">Phường 9</option>
											<option value="Phường 10">Phường 10</option>
											<option value="Phường 11">Phường 11</option>
											<option value="Phường 12">Phường 12</option>
										</select>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<label>Quận</label> <select name="quan" class="custom-select"
											required>
											<option value="Quận 1" selected="selected">Quận 1</option>
											<option value="Quận 2">Quận 2</option>
											<option value="Quận 3">Quận 3</option>
											<option value="Quận 4">Quận 4</option>
											<option value="Quận 5">Quận 5</option>
											<option value="Quận 6">Quận 6</option>
											<option value="Quận 7">Quận 7</option>
											<option value="Quận 8">Quận 8</option>
											<option value="Quận 9">Quận 9</option>
											<option value="Quận 10">Quận 10</option>
											<option value="Quận 11">Quận 11</option>
											<option value="Quận 12">Quận 12</option>
										</select>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<label>Thành phố</label> <select name="thanhPho"
											class="custom-select" required>
											<option value="Hồ Chí Minh" selected="selected">Hồ
												Chí Minh</option>
											<option value="Hà Nội">Hà Nội</option>
										</select>
									</div>
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
								<div class="col-md-12">
									<label>Ghi chú</label>
									<textarea class="form-control" name="ghiChu"
										rows="3"></textarea>
								</div>
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
							Tạm tính <span> <fmt:formatNumber type="number"
									pattern="###,###,### ₫" value="${tamtinh}" />
							</span>
						</p>
						<p class="sub-total">
							Giảm giá <span> <fmt:formatNumber type="number"
									pattern="###,###,### ₫" value="${giamgia}" />
							</span>
						</p>
						<p>
							Tổng tiền (${quantity} sản phẩm) <span> <fmt:formatNumber
									type="number" pattern="###,###,### ₫" value="${tongtien}" />
							</span>
						</p>
					</div>

				</div>
			</div>
		</div>
	</div>
</div>