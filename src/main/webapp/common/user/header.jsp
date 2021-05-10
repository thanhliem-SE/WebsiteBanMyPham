<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="top-bar">
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-6">
				<i class="fa fa-envelope"></i> mypham.store@Estore.com
			</div>
			<div class="col-sm-6">
				<i class="fa fa-phone-alt"></i> +0987 789 789
			</div>
		</div>
	</div>
</div>
<div class="nav">
	<div class="container-fluid">
		<nav class="navbar navbar-expand-md bg-dark navbar-dark">
			<a href="#" class="navbar-brand">MENU</a>
			<button type="button" class="navbar-toggler" data-toggle="collapse"
				data-target="#navbarCollapse">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse justify-content-between"
				id="navbarCollapse">
				<div class="navbar-nav mr-auto">
					<a href="${pageContext.request.contextPath}/trangchu"
						class="nav-item nav-link active">Home</a> <a
						href="${pageContext.request.contextPath}/product"
						class="nav-item nav-link">Products</a> <a href="product-details"
						class="nav-item nav-link">Product Detail</a> <a href="cart"
						class="nav-item nav-link">Cart</a> <a href="checkout"
						class="nav-item nav-link">Checkout</a> <a href="account"
						class="nav-item nav-link">My Account</a>
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle"
							data-toggle="dropdown">More Pages</a>
						<div class="dropdown-menu">
							<a href="wish" class="dropdown-item">Wishlist</a> <a href="login"
								class="dropdown-item">Login & Register</a> <a href="contact"
								class="dropdown-item">Contact Us</a>
						</div>
					</div>
				</div>
				<div class="navbar-nav ml-auto">
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle"
							data-toggle="dropdown">User Account</a>
						<div class="dropdown-menu">
							<a href="#" class="dropdown-item">Login</a> <a href="#"
								class="dropdown-item">Register</a>
						</div>
					</div>
				</div>
			</div>
		</nav>
	</div>
</div>
<div class="bottom-bar">
	<div class="container-fluid">
		<div class="row align-items-center">
			<div class="col-md-3">
				<div class="logo">
					<a href="/mypham/trangchu"> <img src="${url}/img/logo.png"
						alt="Logo">
					</a>
				</div>
			</div>
			<div class="col-md-6">
				<div class="search">
					<input type="text" placeholder="Search">
					<button>
						<i class="fa fa-search"></i>
					</button>
				</div>
			</div>
			<div class="col-md-3">
				<div class="user">
					<a href="${pageContext.request.contextPath}/wish"
						class="btn wishlist"> <i class="fa fa-heart"></i> <span>(0)</span>
					</a> <a href="cart.html" class="btn cart"> <i
						class="fa fa-shopping-cart"></i> <span>(0)</span>
					</a>
				</div>
			</div>
		</div>
	</div>
</div>
