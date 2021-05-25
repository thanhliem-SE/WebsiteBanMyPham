<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
                            <a class="nav-link" href="index.html"><i class="fa fa-sign-out-alt"></i>Logout</a>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="dashboard-tab" role="tabpanel" aria-labelledby="dashboard-nav">
                                <h4>Dashboard</h4>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. In condimentum quam ac mi viverra dictum. In efficitur ipsum diam, at dignissim lorem tempor in. Vivamus tempor hendrerit finibus. Nulla tristique viverra nisl, sit amet bibendum ante suscipit non. Praesent in faucibus tellus, sed gravida lacus. Vivamus eu diam eros. Aliquam et sapien eget arcu rhoncus scelerisque.
                                </p> 
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
                                            <tr>
                                                <td>1</td>
                                                <td>Product Name</td>
                                                <td>01 Jan 2020</td>
                                                <td>$99</td>
                                                <td>Approved</td>
                                                <td><button class="btn">View</button></td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Product Name</td>
                                                <td>01 Jan 2020</td>
                                                <td>$99</td>
                                                <td>Approved</td>
                                                <td><button class="btn">View</button></td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>Product Name</td>
                                                <td>01 Jan 2020</td>
                                                <td>$99</td>
                                                <td>Approved</td>
                                                <td><button class="btn">View</button></td>
                                            </tr>
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
                                        <h5>Payment Address</h5>
                                        <p>123 Payment Street, Los Angeles, CA</p>
                                        <p>Mobile: 012-345-6789</p>
                                        <button class="btn">Edit Address</button>
                                    </div>
                                    <div class="col-md-6">
                                        <h5>Shipping Address</h5>
                                        <p>123 Shipping Street, Los Angeles, CA</p>
                                        <p>Mobile: 012-345-6789</p>
                                        <button class="btn">Edit Address</button>
                                    </div>
                                </div>
                            </div>
                           
                            <div class="tab-pane fade" id="account-tab" role="tabpanel" aria-labelledby="account-nav">
                                <h4>Account Details</h4>
                                <form:form method="post" name="submitForm" action="${pageContext.request.contextPath}/updateAccount">
	                                <div class="row">
	                                    <div class="col-md-6">
	                                        <input class="form-control" type="text" placeholder="Họ và tên" name="tenKhachHang" value="${khachHang.tenKhachHang} ">
	                                    </div>
	                                 	<div class="col-md-6">
	                                        <input class="form-control" type="text" placeholder="CMND" name="soCMND" value="${khachHang.soCMND} ">
	                                    </div>
	                                 
	                                    <div class="col-md-6">
	                                        <input class="form-control" type="text" placeholder="Số điện thoại" name="soDienThoai" value="${khachHang.soDienThoai}">
	                                    </div>
	                                    <div class="col-md-6">
	                                        <input class="form-control" type="text" placeholder="Email" name ="email" value="${khachHang.email}">
	                                    </div>
	                                    <div class="col-md-6">
	                                        <select class="form-control" name="thanhPho">
	                                        	<option value="${diaChi.thanhPho}" selected hidden>${diaChi.thanhPho}</option>
	                                        	<option value="Hồ Chí Minh">Hồ Chí Minh</option>
	                                        	<option value="Đồng Nai">Đồng Nai</option>
	                                        	<option value="Tiền Giang">Tiền Giang</option>
	                                        </select>
	                                    </div>
	                                    <div class="col-md-6">
	                                        <select class="form-control" name="quan">
	                                        	<option value="${diaChi.quan}" selected hidden>${diaChi.quan}</option>
	                                        	<option value="Quận 1">Quận 1</option>
	                                        	<option value="Quận 2">Quận 2</option>
	                                        	<option value="Gò Vấp">Gò Vấp</option>
	                                        </select>
	                                    </div>
	                                    <div class="col-md-6">
	                                        <select class="form-control" name="phuong">
	                                       		<option value="${diaChi.phuong}" selected hidden>${diaChi.phuong}</option>
	                                        	<option value="Phường 1">Phường 1</option>
	                                        	<option value="Phường 2">Phường 2</option>
	                                        	<option value="Phường Hiệp Bình Phước">Phường Hiệp Bình Phước</option>
	                                        </select>
	                                    </div>
	                                    <div class="col-md-6">
	                                        <input class="form-control" type="text" placeholder="VD: 42/5" name="soNha" value="${diaChi.soNha}">
	                                    </div>
	                                    <div class="col-md-12">
	                                        <input class="form-control" type="text" placeholder="VD: 42/5, đường số 2, phường Hiệp Bình Phước, Thủ Đức, HCM" name="ghiChu" value="${diaChi.ghiChu}">
	                                    </div>
	                                  
	                                    <div class="col-md-12">
	                                        <button class="btn" type="submit">Update Account</button>
	                                        <br><br>
	                                    </div>
	                                </div>
                                </form:form>
                                <h4>Password change</h4>
                                <div class="row">
                                    <div class="col-md-12">
                                        <input class="form-control" type="password" placeholder="Current Password">
                                    </div>
                                    <div class="col-md-6">
                                        <input class="form-control" type="text" placeholder="New Password">
                                    </div>
                                    <div class="col-md-6">
                                        <input class="form-control" type="text" placeholder="Confirm Password">
                                    </div>
                                    <div class="col-md-12">
                                        <button class="btn">Save Changes</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>