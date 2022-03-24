<%-- 
    Document   : updateProduct
    Created on : Mar 17, 2022, 4:03:16 AM
    Author     : Happy-2001
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>DoBook | Add Product</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="Colo Shop Template">
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
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
                                    <li><a href="manager">Manager Product</a></li>
                                    <li><a href="home">home</a></li>
                                    <li><a href="productcontrol">Shop</a></li>
                                    <li><a href="contact">contact</a></li>
                                </ul>
                                <ul class="navbar_user">
                                    <li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a></li>
                                    <li><div style="display: flex">
                                            <a href="login"><i class="fa fa-user" aria-hidden="true"></i></a>
                                            <c:if test="${account!=null}"><a style="width: 100%">${disname} </a>  </c:if>
                                            </div></li>
                                        <li class="checkout">
                                            <a href="#">
                                                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                                <span id="checkout_items" class="checkout_items"  >${carts.size() eq "0" ? "0":carts.size()}</span>
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

        <section class="py-5 px-4 px-lg-5 " style="padding-top:7rem !important;min-height: 500px; margin: auto">                                                              
            <form action="addProduct" method="POST" style="margin:0 500px">
                <table>
                    <tr >
                        <td >ID:</td><td><input style="margin: 10px 0px" type="text" name="id" /></td>
                    </tr>
                    <tr>
                        <td>Name:</td><td><input style="margin: 10px 0px" type="text" name="name"/></td>
                    </tr>
                    <tr>
                        <td>Price:</td><td><input style="margin: 10px 0px" type="text" name="price"/></td>
                    </tr>
                    <tr>
                        <td>Quantity:</td><td><input style="margin: 10px 0px" type="text" name="quantity"/></td>
                    </tr>
                    <tr>
                        <td>Description:</td><td><input style="margin: 10px 0px" type="text" name="des"/></td>
                    </tr>
                    <tr>
                        <td>ImageURL:</td><td><input style="margin: 10px 0px" type="text" name="image"/></td>
                    </tr>
                    <tr>
                        <td>Created_Date:</td><td><input style="margin: 10px 0px" type="date" name="date"/></td>
                    </tr>
                    <tr>
                        <td>CategoryID:  </td><td><input style="margin: 10px 0px" type="text" name="categoryid"/></td>
                    </tr>
                    <tr>
                        <td>Suppliers:</td><td><input style="margin: 10px 0px" type="text" name="suppliers"/></td>
                    </tr>


                    <tr><td><input style="margin: 10px 0px" type="submit" value="Create"/></td></tr>
                </table>
            </form>
        </section>
        <!-- Footer -->

        <footer class="footer" style="background-color: #ccc">
            <%@include file="components/footerComponent.jsp" %>
        </footer>
    </body>
</html>
