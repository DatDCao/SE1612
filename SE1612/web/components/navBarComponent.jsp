<%-- 
    Document   : navBarComponent
    Created on : Mar 2, 2022, 11:55:31 PM
    Author     : Happy-2001
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Navigation-->
<header class="header trans_300">
		<!-- Top Navigation -->
		

		<!-- Main Navigation -->

		<div class="main_nav_container">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-right">
						<div class="logo_container">
							<a href="home">DoBook<span></span></a>
						</div>
						<nav class="navbar">
							<ul class="navbar_menu">
                                                                <li><a href="manager">Manager Product</a></li>
								<li><a href="home">home</a></li>
								<li><a href="productcontrol">Product</a></li>
								<li><a href="contact">contact</a></li>
							</ul>
							<ul class="navbar_user">
								<li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
								<li><a href="login"><i class="fa fa-user" aria-hidden="true"></i></a></li>
								<li class="checkout">
									<a href="#">
										<i class="fa fa-shopping-cart" aria-hidden="true"></i>
										<span id="checkout_items" class="checkout_items">${carts.size() eq "0" ? "0":carts.size()}</span>
									</a>
								</li>
							</ul>
							<div class="hamburger_container">
								<i class="fa fa-bars" aria-hidden="true"></i>
							</div>
						</nav>
					</div>
				</div>
			</div>
		</div>

	</header>