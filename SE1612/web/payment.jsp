<%-- 
    Document   : payment
    Created on : Mar 12, 2022, 5:18:34 PM
    Author     : Happy-2001
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>DoBook</title>
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
        <link rel="stylesheet" type="text/css" href="plugins/jquery-ui-1.12.1.custom/jquery-ui.css">
        <link rel="stylesheet" type="text/css" href="styles/categories_styles.css">
        <link rel="stylesheet" type="text/css" href="styles/categories_responsive.css">
    
    </head>
    <body>
        <!-- Header -->
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
								<li><a href="home">home</a></li>
								<li><a href="productcontrol">Product</a></li>
								<li><a href="contact">contact</a></li>
							</ul>
							<ul class="navbar_user">
								<li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
								<li><div style="display: flex">
                                                    <a href="login"><i class="fa fa-user" aria-hidden="true"></i></a>
                                                    <c:if test="${account!=null}"><a style="width: 100%">${disname} </a>  </c:if>
                                                </div></a></li>
								<li class="checkout">
									<a href="#">
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
        <section class="py-5 px-4 px-lg-5 " style="padding-top:7rem !important">
            <div class="container" style="min-height: 500px">
                <div class="row">
                    <div class="col-md-8" style="border:1px solid #ccc ; border-radius:5px; padding:1rem">
                        <table class="table  table-hover">
                            <c:if test="${sessionScope.carts.size()==0}">
                                <h1>List is Empty</h1>
                            </c:if>
                            <c:if test="${sessionScope.carts.size()!=0}">
                                <thead>
                                    <tr>
                                        <th scope="col">Sản Phẩm</th>
                                        <th scope="col">Image</th>
                                        <th scope="col">Name</th>
                                        <th scope="col">Price</th>
                                        <th scope="col">Quantity</th>
                                        <th scope="col">ToTal Price</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${carts}" var="C">

                                        <tr> 
                                    <input type="hidden" name="productid" value="${C.value.product.id}">
                                    <td>1</td>
                                    <td><img src="${C.value.product.imageURL}" width="50"></td>
                                    <td>${C.value.product.name}</td>
                                    <td>${C.value.product.price}</td>
                                    <td>${C.value.quantity}</td>
                                    <td>${C.value.product.price*C.value.quantity}</td>
                                    </tr>


                                </c:forEach>

                                </tbody>

                            </c:if>
                                
                        </table>
                        
                        <h3>TotalMoney: $${Total}</h3>
                    </div>
                    <div class="col-md-4" style="border:1px solid #ccc ; border-radius:5px; padding:1rem">

                        <form action="payment" method="post">
                            <ul>
                            <li>Name: ${name} </li>
                            <li>Phone: ${phone}</li>
                            <li>Address: ${address}</li>
                            <li>Email: ${email}</li>
                            </ul>
                            <div class="mb-3">
                                <label for="note">Note</label>
                                <textarea class="form-control" id="note" name="note" rows="7"></textarea>
                            </div>
                            <div class="mb-3 form-check">
                                <input type="checkbox" class="form-check-input" id="exampleCheck1" style="margin-left: 2px">
                                <label class="form-check-label" for="exampleCheck1" >Check me out</label>
                            </div>
                            <button type="submit" class="btn btn-primary w-100" style="background-color: #fe4c50;border-color: #fe4c50">Submit</button>
                        </form>


                    </div>
                    
                </div>


                
            </div>
        </section>
        <!-- Footer -->

       <footer class="footer" style="background-color: #ccc">
		<%@include file="components/footerComponent.jsp" %>
	</footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

        <script src="js/scripts.js"></script>

    </body>
</html>
