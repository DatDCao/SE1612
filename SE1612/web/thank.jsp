<%-- 
    Document   : thank
    Created on : Mar 13, 2022, 4:43:18 AM
    Author     : Happy-2001
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<title>Colo Shop</title>
<meta charset="utf-8">
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Colo Shop Template">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="styles/responsive.css">
<link rel="stylesheet" type="text/css" href="css/styles_1.css">
</head>
    <body>
        <header class="header trans_300">
		<!-- Top Navigation -->
		<div class="top_nav">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<div class="top_nav_left">free shipping on all u.s orders over $50</div>
					</div>
					<div class="col-md-6 text-right">
						<div class="top_nav_right">
							<ul class="top_nav_menu">
								<!-- Currency / Language / My Account -->
								
                                                                <c:if test="${account!=null}">
                                                                <li class="account">
									<a href="login">Logout</a>
								</li>
                                                                </c:if>
                                                                <c:if test="${account==null}">
								<li class="account">
									<a href="login">Login</a>
								</li>
                                                                </c:if>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

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
								<li><a href="home">home</a></li>
								<li><a href="productcontrol">Product</a></li>
								<li><a href="contact">contact</a></li>
							</ul>
							<ul class="navbar_user">
								<li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
								<li><div style="display: flex">
                                                    <a href="login"><i class="fa fa-user" aria-hidden="true"></i></a>
                                                    <c:if test="${account!=null}"><a style="width: 100%">${disname} </a>  </c:if>
                                                </div></li>
								<li class="checkout">
									<a href="Checkout">
										<i class="fa fa-shopping-cart" aria-hidden="true"></i>
										<span id="checkout_items" class="checkout_items" >${carts.size() eq "0" ? "0":carts.size()}</span>
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
                                                                        <div style="margin-top: 200px;text-align: center">
                            <h1 >Thank you!</h1>
        <a href="home" style="text-align: center">Continue Shopping</a>
                            </div>
                                                                       
    </body>
    <footer class="py-5 bg-light">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-lg-4 col-xl-3">
                        <h5>About</h5>
                        <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                        <p class="mb-0">
                            Chúng tôi mang đến cho bạn những sản phẩm chất lượng và dịch vụ tốt nhất
                        </p>
                    </div>

                   <!-- Footer -->

	<%@include file="components/footerComponent.jsp" %>
                </div>
        </footer>
</html>
