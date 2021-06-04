<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<div class="wishlist-page">
	<div class="container-fluid">
		<div class="col-12 col-md-12">

			<div class="row bg-white pb-5 rounded">
				<div class="col-12">
					<div
						class="success d-flex align-items-center justify-content-center mt-4 mb-2">
						<div
							class="circle-blue me-3 d-flex align-items-center justify-content-center">
							<i class="fas fa-badge-check fs-24 cl-FFFF"></i>
						</div>
						<div class="cl-0085 fs-24 fw-bold"
							style="text-transfrom: uppercase;">ĐẶT MUA THÀNH CÔNG</div>
					</div>
				</div>
					<div class="col-12">
						<p class="fs-15 cl-3333" style="text-align: center">Cảm ơn anh
							<b style="font-size: 24px;">${nguoiNhan }</b> đã cho ESTORE cơ hội được phục vụ. trong 10
							phút, anh sẽ nhận được GMAIL thông tin thanh toán trong giây lát
							ạ.</p>
					</div>
				<div class="col-12 col-lg-6 border-end">
					<div class="row mb-3">
						<div class="col-12">
							<span class="text-uppercase fs-14 cl-3333 fw-bold">Địa chỉ
								giao hàng</span>
						</div>
					</div>
					<div class="row mt-1">
						<div class="col-4">
							<span class="fs-14 cl-7E82">Người nhận: </span>
						</div>
						<div class="col-8">
							<span class="fs-14 cl-3333"><b style="font-size: 18px;">${nguoiNhan }</b></span>
						</div>
					</div>
					<div class="row mt-1">
						<div class="col-4">
							<span class="fs-14 cl-7E82">Địa chỉ: </span>
						</div>
						<div class="col-8">
							<span class="fs-14 cl-3333">${sonha}, </span>
							<span class="fs-14 cl-3333">${phuong}, </span>
							<span class="fs-14 cl-3333">${quan}, </span>
							<span class="fs-14 cl-3333">${tp}</span>
						</div>
					</div>
					<div class="row mt-1">
						<div class="col-4">
							<span class="fs-14 cl-7E82">Điện thoại:</span>
						</div>
						<div class="col-8">
							<span class="fs-14 cl-3333">${sdt }</span>
						</div>
					</div>
					<div class="row mt-2">
						<div class="col-12">
							<span class="fs-13" style="color: #2A2B2C;"><i
								class="fas fa-truck fs-20"></i> Giao hàng tận nơi</span>
						</div>
					</div>
				</div>
				<div class="col-12 col-lg-6">
					<div class="row mb-3">
						<div class="col-12">
							<span class="text-uppercase fs-14 cl-3333 fw-bold">Thông
								tin sản phẩm</span>
						</div>
					</div>
					<div class="row mt-1">
						<div class="col-4">
							<span class="fs-14 cl-7E82">Tên sản phẩm: </span>
						</div>
						<div class="col-8">
							<span class="fs-14 cl-3333">${tensp }</span>
						</div>
					</div>
					<div class="row mt-1">
						<div class="col-4">
							<span class="fs-14 cl-7E82">Số lượng: </span>
						</div>
						<div class="col-8">
							<span class="fs-14 cl-3333">${sl } ${dvt }</span>
						</div>
					</div>
					<div class="row mt-1">
						<div class="col-4">
							<span class="fs-14 cl-7E82">Giá bán: </span>
						</div>
						<div class="col-8">
							<span class="fs-14 cl-3333">${tamtinh }₫</span>
						</div>
					</div>
					<div class="row mt-1">
						<div class="col-4">
							<span class="fs-14 cl-7E82">Phí vận chuyển:</span>
						</div>
						<div class="col-8">
							<span class="fs-14 cl-3333">0 ₫</span>
						</div>
						<span class="separate pt-1"></span>
					</div>
					<div class="row mt-2">
						<div class="col-4">
							<span class="fs-14 cl-7E82">Thành tiền</span>
						</div>
						<div class="col-8">
							<span class="fs-5" style="color: #BF081F;">${thanhtien  } ₫</span><br>
							<span class="fs-13 cl-7E82">(Đã bao gồm VAT nếu có)</span>
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<div class="receive text-center pt-1">
								<span class="badge bg-recei py-2 fs-14 px-3"><span
									class="cl-3333">Bạn chọn thanh toán:</span> <span
									class="cl-0085">thanh toán khi nhận</span></span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<div class="receive text-center pt-1">
								<span class="badge bg-recei py-2 fs-14 px-3"></span> <a
									href="<c:url value="/"/>" class="cl-3333">Trở về trang chủ</a>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
</div>