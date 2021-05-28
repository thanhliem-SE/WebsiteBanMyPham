<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/common/taglib.jsp" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 <div class="checkout">
            <div class="container-fluid"> 
                <div class="row">
                    <div class="col-lg-8">
                        <div class="checkout-inner">
                            <div class="billing-address">
                                <h2>Billing Address</h2>
                                <div class="row">
                                <form:form  action="checkout/themHoaDon" method="post" modelAttribute="hoaDon"> 
                                <div class="col-md-6">
                                        <label>First Name</label>
                                        <form:input cssClass="form-control" path="tenNhanHang" placeholder="First Name"/>
                                    </div>
                                    
                                    <div class="col-md-6">
                                        <label>E-mail</label>
                                        <form:input cssClass="form-control" path="email" placeholder="First Name"/>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Mobile No</label>
                                        <form:input cssClass="form-control" path="sdtNhanHang" placeholder="First Name"/>
                                    </div>
                                    <div class="col-md-12">
                                        <label>Address</label>
                                        <input cssClass="form-control" path="diaChi" placeholder="Address"/>
                                    </div>
                                    <div class="custom-control custom-radio">
                                        
                                            <select name="maThanhToan">
                                            	<c:forEach var="tt" items="${listThanhToans}">
                                            		<option value="${tt.maThanhToan}" selected="selected"> ${tt.phuongThucTT}</option>
                                            	</c:forEach>
                                            </select>
                                        </div>
                                   <div>
                                   <input type="submit" value="Đặt hàng">
                                   </div>
                                
                                </form:form>
                                    
                                </div>
                            </div>

                            
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="checkout-inner">
                            <div class="checkout-summary">
                                <h1>Cart Total</h1>
                              
                                <p class="sub-total">Sub Total<span>${price}</span></p>
                              	 <p class="sub-total">Tax <span>${tax}</span></p>
                                <h2>Grand Total (${quantity} sản phẩm)<span>${sub}</span></h2>
                            </div>

                            <div class="checkout-payment">
                                <div class="payment-methods">
                                    <h1>Payment Methods</h1>
                                    <div class="payment-method">
                                        <div class="custom-control custom-radio">
                                        
                                          
                                        </div>
                                        
                                    </div>
                                    
                                </div>
                                <div class="checkout-btn">
                                    <button>Place Order</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>