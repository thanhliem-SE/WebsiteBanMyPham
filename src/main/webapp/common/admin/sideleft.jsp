<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- #Top Bar -->
    <section>
        <!-- Left Sidebar -->
        <aside id="leftsidebar" class="sidebar">
            <!-- User Info -->
            <div class="user-info">
                <div class="image">
                    <img src="<c:url value="/resources/admin/images/wow.jpg"/>" width="48" height="48" alt="User" />
                </div>
                <div class="info-container">
                    <div class="name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Trung Vinh</div>
                    <div class="email">trungvinh@estore.com</div>
                    <div class="btn-group user-helper-dropdown">
                        <i class="material-icons" data-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="true">keyboard_arrow_down</i>
                        <ul class="dropdown-menu pull-right">
                            <li><a href="javascript:void(0);"><i class="material-icons">person</i>Profile</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="javascript:void(0);"><i class="material-icons">group</i>Followers</a></li>
                            <li><a href="javascript:void(0);"><i class="material-icons">shopping_cart</i>Sales</a></li>
                            <li><a href="javascript:void(0);"><i class="material-icons">favorite</i>Likes</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="javascript:void(0);"><i class="material-icons">input</i>Sign Out</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- #User Info -->
            <!-- Menu -->
            <div class="menu">
                <ul class="list">
                    <li class="header">Main menu</li>
                    <li class="active">
                        <a href="${pageContext.request.contextPath}/admin">
                            <i class="material-icons">home</i>
                            <span>Tổng Quan</span>
                        </a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/quanlyadmin">
                            <i class="material-icons">account_circle</i>
                            <i class="zmdi zmdi-account-box"></i>
                            <span>Quản Lý Admin</span>
                        </a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/quanlyuser">
                            <i class="material-icons">
                                supervised_user_circle
                            </i>

                            <span>Quản Lý User</span>
                        </a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/quanlydanhmuc" class="menu-toggle">
                            <i class="material-icons">widgets</i>
                            <span>Danh Mục</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="javascript:void(0);" class="menu-toggle">
                                    <span>Danh Mục Sản Phẩm</span>
                                </a>
                                <ul class="ml-menu">
                                    <li>
                                        <a href="javascript:void(0);">Danh Mục Loại Sản Phẩm</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript:void(0);" class="menu-toggle">
                                    <span>Danh Mục Khách Hàng</span>
                                </a>
                                <ul class="ml-menu">
                                    <li>
                                        <a href="javascript:void(0);">Danh Mục Loại Khách Hàng</a>
                                    </li>

                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/quanlydonhang" class="menu-toggle">
                            <i class="material-icons">shopping_cart</i>
                            <span>Đơn Hàng</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="#">Đơn Hàng 1</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">assignment</i>
                            <span>Chi Tiết Đơn Hàng</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="javascript:void(0);">Chi Tiết Đơn Hàng 1</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/quanlythuonghieu" class="menu-toggle">
                            <i class="material-icons">view_list</i>
                            <span>Thương Hiệu</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="javascript:void(0);">Danh Sách Thương Hiệu</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/quanlyreview" class="menu-toggle">
                            <i class="material-icons">rate_review</i>
                            <span>Reviews</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="javascript:void(0);">Review 1</a>
                            </li>


                        </ul>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">feed</i>
                            <span>Tin Tức</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="javascript:void(0);">Danh Sách Tin Tức</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">contacts</i>
                            <span>Information</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="${pageContext.request.contextPath}/profile">Profile</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/session/new">Sign In</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/signup/new">Sign Up</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/password_resets/new">Forgot Password</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/blank_page">Blank Page</a>
                            </li>
                            <li>
                                <a href="p${pageContext.request.contextPath}/page_404">404 - Not Found</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/page_500">500 - Server Error</a>
                            </li>
                        </ul>
                    </li>
                    <li class="header">LABELS</li>
                    <li>
                        <a href="javascript:void(0);">
                            <i class="material-icons col-red">donut_large</i>
                            <span>Important</span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
                            <i class="material-icons col-amber">donut_large</i>
                            <span>Warning</span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);">
                            <i class="material-icons col-light-blue">donut_large</i>
                            <span>Information</span>
                        </a>
                    </li>
                </ul>
            </div>
            <!-- #Menu -->
            <!-- Footer -->
            <div class="legal bg-danger fs13">
                <div class="copyright text-center">
                    <span>&copy; 2021 Estore, Inc. </span>
                </div>
            </div>
            <!-- #Footer -->
        </aside>
        <!-- #END# Left Sidebar -->
        <!-- Right Sidebar -->
        <aside id="rightsidebar" class="right-sidebar">
            <ul class="nav nav-tabs tab-nav-right" role="tablist">
                <li role="presentation" class="active"><a href="#skins" data-toggle="tab">SKINS</a></li>
                <li role="presentation"><a href="#settings" data-toggle="tab">SETTINGS</a></li>
            </ul>
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane fade in active in active" id="skins">
                    <ul class="demo-choose-skin">
                        <li data-theme="red" class="active">
                            <div class="red"></div>
                            <span>Red</span>
                        </li>
                        <li data-theme="pink">
                            <div class="pink"></div>
                            <span>Pink</span>
                        </li>
                        <li data-theme="purple">
                            <div class="purple"></div>
                            <span>Purple</span>
                        </li>
                    </ul>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="settings">
                    <div class="demo-settings">
                        <p>GENERAL SETTINGS</p>
                        <ul class="setting-list">
                            <li>
                                <span>Report Panel Usage</span>
                                <div class="switch">
                                    <label><input type="checkbox" checked><span class="lever"></span></label>
                                </div>
                            </li>
                            <li>
                                <span>Email Redirect</span>
                                <div class="switch">
                                    <label><input type="checkbox"><span class="lever"></span></label>
                                </div>
                            </li>
                        </ul>
                        <p>SYSTEM SETTINGS</p>
                        <ul class="setting-list">
                            <li>
                                <span>Notifications</span>
                                <div class="switch">
                                    <label><input type="checkbox" checked><span class="lever"></span></label>
                                </div>
                            </li>
                            <li>
                                <span>Auto Updates</span>
                                <div class="switch">
                                    <label><input type="checkbox" checked><span class="lever"></span></label>
                                </div>
                            </li>
                        </ul>
                        <p>ACCOUNT SETTINGS</p>
                        <ul class="setting-list">
                            <li>
                                <span>Offline</span>
                                <div class="switch">
                                    <label><input type="checkbox"><span class="lever"></span></label>
                                </div>
                            </li>
                            <li>
                                <span>Location Permission</span>
                                <div class="switch">
                                    <label><input type="checkbox" checked><span class="lever"></span></label>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </aside>
        <!-- #END# Right Sidebar -->
    </section>