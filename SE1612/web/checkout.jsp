<%-- 
    Document   : checkout
    Created on : Mar 9, 2022, 4:06:07 PM
    Author     : Happy-2001
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>DoBook | Shop Product</title>
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
                                    <li><a href="home">home</a></li>
                                    <li><a href="productcontrol">Product</a></li>
                                    <li><a href="contact.html">contact</a></li>
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
                <table class="table  table-hover">
                    <c:if test="${sessionScope.carts.size()==0}">
                        <h1>List is Empty</h1>
                    </c:if>
                    <c:if test="${sessionScope.carts.size()!=0}">
                        <thead>
                            <tr>
                                <th scope="col">Product</th>
                                <th scope="col">Image</th>
                                <th scope="col">Name</th>
                                <th scope="col">Price</th>
                                <th scope="col">Quantity</th>
                                <th scope="col">ToTal Price</th>
                                <th scope="col">Action</th>

                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${carts}" var="C">
                            <form action="UpdateCheckout">
                                <tr> 
                                <input type="hidden" name="productid" value="${C.value.product.id}">
                                <td>${C.value.product.id}</td>
                                <td><img src="${C.value.product.imageURL}" width="50"></td>
                                <td>${C.value.product.name}</td>
                                <td>${C.value.product.price} $</td>
                                <td><input onchange="this.form.submit()" type="number" value="${C.value.quantity}" name="quantity"></td>
                                <td>${C.value.product.price*C.value.quantity} $</td>
                                <td><a class="btn btn-outline-danger" href="DeleteCart?productid=${C.value.product.id}" onclick ="Delete(${C.value.product.id}) >
                                            <i class="bi bi-trash" "></i>Delete</a></td>
                                </tr>
                            </form>

                        </c:forEach>

                        </tbody>

                    </c:if>
                </table>
                <h3>TotalMoney: $${Total == 0 ? Total:"0"}</h3>
                <a class="btn btn-success" href="payment" style="border-color: #fe4c50;background-color: #fe4c50">Payment</a>

            </div>
        </section>
        <!-- Footer -->

        <footer class="footer" style="background-color: #ccc">
            <%@include file="components/footerComponent.jsp" %>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        
       function Delete(id){
           var option = confirm('Are you sure to delete?');
           if(option === true) {
               window.location.href = 'DeleteProduct?id=' + id;
           }
       }
   </script>
        <script src="js/scripts.js"></script>

        </body>
        </html>
        
