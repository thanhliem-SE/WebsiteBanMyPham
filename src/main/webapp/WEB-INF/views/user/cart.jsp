<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<div class="cart-page">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="cart-page-inner">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th>Product</th>
                                            <th>Price</th>
                                            <th>Quantity</th>
                                            <th>Total</th>
                                            <th>Remove</th>
                                        </tr>
                                    </thead>
                                    <tbody class="align-middle">
                                    <c:forEach var="ds" items="${sessionScope.cart}">
                                        <tr>
                                        
                                         
                                       
                                            <td>
                                                <div class="img">
                                                    <a href="#"><img src="${pageContext.request.contextPath}/${urlUserImg}/category-8.jpg" alt="Image"></a>
                                                    <p>${ds.sp.tenSanPham }</p>
                                                </div>
                                            </td>
                                            <td>${ds.sp.donGia }</td>
                                            <td>
                                                <div class="qty">
                                                <a href="removeCartItem/${ds.sp.maSanPham}"> <button class="btn-minus"><i class="fa fa-minus"></i></button></a>                                                                                             
                                                    <input type="text" value="${ds.soLuong}">
                                                    <a href="addCartItem/${ds.sp.maSanPham}"> <button class="btn-plus"><i class="fa fa-plus"></i></button></a>
                                                </div>
                                            </td>
                                            <td>${ds.sp.donGia * ds.soLuong}</td>
                                            <td><a href="deletecart/${ds.sp.maSanPham}"><button><i class="fa fa-trash"></i></button></a> </td>
                                             
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
                                            <h1>Cart Summary</h1>
                                            <p>Sub Total<span>${sub}</span></p>
                                            <p>Shipping Cost<span>$0</span></p>
                                            <h2>Grand Total<span>${sub}</span></h2>
                                        </div>
                                        <div class="cart-btn">
                                            <button>Update Cart</button>
                                            <button>Checkout</button>
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