<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ include file="/common/taglib.jsp"%>
 <div class="my-account">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-3">
                        <div class="nav flex-column nav-pills" role="tablist" aria-orientation="vertical">
                            <a class="nav-link active" id="dashboard-nav" data-toggle="pill" href="#dashboard-tab" role="tab"><i class="fa fa-tachometer-alt"></i>Dashboard</a>
                            <a class="nav-link" id="orders-nav" data-toggle="pill" href="#orders-tab" role="tab"><i class="fa fa-shopping-bag"></i>Orders</a>
                            <a class="nav-link" id="payment-nav" data-toggle="pill" href="#payment-tab" role="tab"><i class="fa fa-credit-card"></i>Payment Method</a>
                            <a class="nav-link" id="address-nav" data-toggle="pill" href="#address-tab" role="tab"><i class="fa fa-map-marker-alt"></i>address</a>
                            <a class="nav-link" id="account-nav" data-toggle="pill" href="#account-tab" role="tab"><i class="fa fa-user"></i>Account Details</a>
                            <a class="nav-link" href="${pageContext.request.contextPath}/login"><i class="fa fa-sign-out-alt"></i>Logout</a>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="dashboard-tab" role="tabpanel" aria-labelledby="dashboard-nav">
                                   <div class="row">
                                     <img src="${urlUserImg}/icon-avatar.jpg" class="col-sm-3 col-md-3 col-lg-3 col-xl-3">
                                    <div class="col-sm-9 col-md-9 col-lg-9 col-xl-9 mt-5">
                                        <p><b>H??? t??n:</b> ${khachHang.tenKhachHang}</p>
                                        <p><b>S??? ??i???n tho???i:</b> ${khachHang.soDienThoai}</p>
                                        <p><b>Email:</b> ${khachHang.email}</p>
                                        <p><b>S??? CMND/CCCD:</b> ${khachHang.soCMND}</p>
                                        <p><b>?????a ch???:</b> ${diaChi.getFullDiaChi()}</p>
                                    </div>
                                </div> 
                            </div>
                            <div class="tab-pane fade" id="orders-tab" role="tabpanel" aria-labelledby="orders-nav">
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <thead class="thead-dark">
                                            <tr>
                                                <th>No</th>
                                                <th>Product</th>
                                                <th>Date</th>
                                                <th>Price</th>
                                                <th>Status</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<c:if test="${not empty mapHoaDon}">

											      <c:forEach var="element" items="${mapHoaDon}">
											      
											         <tr>
		                                                <td>${element.key.maHoaDon}</td>
		                                                <td>${element.value}</td>
		                                                <td>${element.key.ngayLap}</td>
		                                                <td>${element.key.tongTien}</td>
		                                                <td>${element.key.trangThaiHoaDon}</td>
		                                                <td><button class="btn">View</button></td>
		                                            </tr>
											      </c:forEach>
	
											  </c:if>
                                           
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="payment-tab" role="tabpanel" aria-labelledby="payment-nav">
                                <h4>Payment Method</h4>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. In condimentum quam ac mi viverra dictum. In efficitur ipsum diam, at dignissim lorem tempor in. Vivamus tempor hendrerit finibus. Nulla tristique viverra nisl, sit amet bibendum ante suscipit non. Praesent in faucibus tellus, sed gravida lacus. Vivamus eu diam eros. Aliquam et sapien eget arcu rhoncus scelerisque.
                                </p> 
                            </div>
                            <div class="tab-pane fade" id="address-tab" role="tabpanel" aria-labelledby="address-nav">
                                <h4>Address</h4>
                                <div class="row">
                                    <div class="col-md-6">
                                        <h5>?????a ch??? thanh to??n</h5>
                                        <p>${diaChi.soNha}, ${diaChi.phuong}, ${diaChi.quan}, ${diaChi.thanhPho}</p>
                                        <p>S??? ??i???n tho???i: ${khachHang.soDienThoai}</p>
                                        <button class="btn">Edit Address</button>
                                    </div>
                                    <div class="col-md-6">
                                        <h5>?????a ch??? nh???n h??ng</h5>
                                        <p>${diaChi.soNha}, ${diaChi.phuong}, ${diaChi.quan}, ${diaChi.thanhPho}</p>
                                        <p>S??? ??i???n tho???i: ${khachHang.soDienThoai}</p>
                                        <button class="btn">Edit Address</button>
                                    </div>
                                </div>
                            </div>
                           
                            <div class="tab-pane fade" id="account-tab" role="tabpanel" aria-labelledby="account-nav">
                                <h4>Account Details</h4>
                                <form:form method="post" name="submitForm" action="${pageContext.request.contextPath}/updateAccount">
	                                <div class="row">
	                                    <div class="col-md-6">
	                                        <input class="form-control" type="text" placeholder="H??? v?? t??n" name="tenKhachHang" value="${khachHang.tenKhachHang} ">
	                                    </div>
	                                 	<div class="col-md-6">
	                                        <input class="form-control" type="text" placeholder="CMND" name="soCMND" value="${khachHang.soCMND} ">
	                                    </div>
	                                 
	                                    <div class="col-md-6">
	                                        <input class="form-control" type="text" placeholder="S??? ??i???n tho???i" name="soDienThoai" value="${khachHang.soDienThoai}">
	                                    </div>
	                                    <div class="col-md-6">
	                                        <input class="form-control" type="text" placeholder="Email" name ="email" value="${khachHang.email}">
	                                    </div>
	                                    <div class="col-md-6">
	                                        <select class="form-control" name="thanhPho">
	                                        	<c:if test="${not empty diaChi.thanhPho}">
	                                        		<option value="${diaChi.thanhPho}" selected hidden>${diaChi.thanhPho}</option>
	                                        	</c:if>
	                                        	<c:if test="${empty diaChi.thanhPho}">
	                                        		<option value="H??? Ch?? Minh" selected hidden>H??? Ch?? Minh</option>
	                                        	</c:if>
	                                     		<option value="H??? Ch?? Minh">H??? Ch?? Minh</option>
	                                        	<option value="?????ng Nai">?????ng Nai</option>
	                                        	<option value="Ti???n Giang">Ti???n Giang</option>
	                                        	<option value="An Giang">An Giang</option>
	                                        	<option value="?????ng Th??p">?????ng Th??p</option>
	                                        	<option value="C?? Mau">C?? Mau</option>
	                                        	<option value="H?? T??nh">H?? T??nh</option>
	                                        </select>
	                                    </div>
	                                    <div class="col-md-6">
	                                        <select class="form-control" name="quan">
	                                        	<c:if test="${not empty diaChi.quan}">
	                                        		<option value="${diaChi.quan}" selected hidden>${diaChi.quan}</option>
	                                        	</c:if>
	                                        	<c:if test="${empty diaChi.quan}">
	                                        		<option value="Qu???n 1" selected hidden>Qu???n 1</option>
	                                        	</c:if>
	                                        	<option value="Qu???n 1">Qu???n 1</option>
	                                        	<option value="Qu???n 2">Qu???n 2</option>
	                                        	<option value="Qu???n 3">Qu???n 3</option>
	                                        	<option value="Qu???n 4">Qu???n 4</option>
	                                        	<option value="Qu???n 5">Qu???n 5</option>
	                                        	<option value="Qu???n 6">Qu???n 6</option>
	                                        	<option value="Qu???n 7">Qu???n 7</option>
	                                        	<option value="Qu???n 8">Qu???n 8</option>
	                                        	<option value="G?? V???p">G?? V???p</option>
	                                        </select>
	                                    </div>
	                                    <div class="col-md-6">
	                                    
	                                        <select class="form-control" name="phuong">
	                                        	<c:if test="${not empty diaChi.phuong}">
	                                        		<option value="${diaChi.phuong}" selected hidden>${diaChi.phuong}</option>
	                                        	</c:if>
	                                        	<c:if test="${empty diaChi.phuong}">
	                                        		<option value="Ph?????ng 1" selected hidden>Ph?????ng 1</option>
	                                        	</c:if>
	                                        	<option value="Ph?????ng 1">Ph?????ng 1</option>
	                                        	<option value="Ph?????ng 2">Ph?????ng 2</option>
	                                        	<option value="Ph?????ng 3">Ph?????ng 3</option>
	                                        	<option value="Ph?????ng 4">Ph?????ng 4</option>
	                                        	<option value="Ph?????ng 5">Ph?????ng 5</option>
	                                        	<option value="Ph?????ng 6">Ph?????ng 6</option>
	                                        	<option value="Ph?????ng 7">Ph?????ng 7</option>
	                                        	<option value="Ph?????ng 8">Ph?????ng 8</option>
	                                        	<option value="Ph?????ng Hi???p B??nh Ph?????c">Ph?????ng Hi???p B??nh Ph?????c</option>
	                                        </select>
	                                    </div>
	                                    <div class="col-md-6">
	                                        <input class="form-control" type="text" placeholder="VD: 42/5" name="soNha" value="${diaChi.soNha}">
	                                    </div>
	                                    <div class="col-md-12">
	                                        <input class="form-control" type="text" placeholder="VD: 42/5, ???????ng s??? 2, ph?????ng Hi???p B??nh Ph?????c, Th??? ?????c, HCM" name="ghiChu" value="${diaChi.ghiChu}">
	                                    </div>
	                                  
	                                    <div class="col-md-12">
	                                        <button class="btn" type="submit" name="btnCapNhat" value="updateAccount">Update Account</button>
	                                        <br><br>
	                                    </div>
	                                </div>
                                </form:form>
                                <form:form method="post" name="submitForm" action="${pageContext.request.contextPath}/resetPassword">
                                <h4>Password change</h4>
                                <div class="row">
                                    <div class="col-md-12">
                                        <input class="form-control" type="password" placeholder="Current Password" name="old_password">
                                    </div>
                                    <div class="col-md-6">
                                        <input class="form-control" type="password" placeholder="New Password" name="new_password">
                                    </div>
                                    <div class="col-md-6">
                                        <input class="form-control" type="password" placeholder="Confirm Password" name="confirm_password">
                                    </div>
                                    <div class="col-md-12">
                                        <button class="btn" type="submit">Save Changes</button>
                                    </div>
                                </div>
                                </form:form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>