<%-- 
    Document   : contact
    Created on : Mar 24, 2022, 6:28:31 AM
    Author     : docao
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>DoBook </title>
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
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="styles/responsive.css">
<link rel="stylesheet" type="text/css" href="css/styles_1.css">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
    

    <!-- Main Stylesheet -->
    <link rel="stylesheet" href="css/style.css" />
    </head>
    <body>
         <header class="header trans_300">
                <!-- Top Navigation -->
                <div class="top_nav">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="top_nav_left">free shipping on all u.s orders over $49</div>
                            </div>
                            <div class="col-md-6 text-right">
                                <div class="top_nav_right">
                                    <ul class="top_nav_menu">
                                        <!-- Currency / Language / My Account -->

                                        <c:if test="${roll==2}">
                                            <li class="account">
                                                <a href="manager">Manager</a>
                                            </li>
                                        </c:if>
                                        <c:if test="${account!=null}">
                                            <li class="account">

                                                <a href="logout">Logout</a>

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
                                        <li><a href="productcontrol">Shop</a></li>
                                        <li><a href="#">contact</a></li>
                                    </ul>

                                    <ul class="navbar_user">
                                        <form action="Search">
                                            <li><input type="text" placeholder="Search.." name="search"> <button><i  class="fa fa-search" aria-hidden="true"></i></button></li>
                                            <li>
                                                <div style="display: flex">
                                                    <a href="login"><i class="fa fa-user" aria-hidden="true"></i></a>
                                                    <c:if test="${account!=null}"><a style="width: 100%">${disname} </a>  </c:if>
                                                </div>
                                                
                                                </li>
                                                <li class="checkout">
                                                    <a href="Checkout">
                                                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                                        <span id="checkout_items" class="checkout_items" >${carts.size() eq "0" ? "0":carts.size()}</span>
                                                </a>
                                            </li>
                                    </ul>
                                    </form>          
                                    <div class="hamburger_container">
                                        <i class="fa fa-bars" aria-hidden="true"></i>
                                    </div>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>

            </header>
                                                <section class="page-wrapper" style="margin-top: 250px">
      <div class="contact-section">
        <div class="container">
          <div class="row">
            <!-- Contact Form -->
            <div class="contact-form col-md-6">
              <form id="contact-form" method="post" action="" role="form">
                <div class="form-group">
                  <input
                    type="text"
                    placeholder="Your Name"
                    class="form-control"
                    name="name"
                    id="name"
                  />
                </div>

                <div class="form-group">
                  <input
                    type="email"
                    placeholder="Your Email"
                    class="form-control"
                    name="email"
                    id="email"
                  />
                </div>

                <div class="form-group">
                  <input
                    type="text"
                    placeholder="Subject"
                    class="form-control"
                    name="subject"
                    id="subject"
                  />
                </div>

                <div class="form-group">
                  <textarea
                    rows="6"
                    placeholder="Message"
                    class="form-control"
                    name="message"
                    id="message"
                  ></textarea>
                </div>

                <div id="mail-success" class="success">
                  Thank you. The Mailman is on His Way :)
                </div>

                <div id="mail-fail" class="error">
                  Sorry, don't know what happened. Try later :(
                </div>

                <div id="cf-submit">
                  <input
                    type="submit"
                    id="contact-submit"
                    class="btn btn-transparent"
                    value="Submit"
                  />
                </div>
              </form>
            </div>
            <!-- ./End Contact Form -->

            <!-- Contact Details -->
            <div class="contact-details col-md-6">
              <div class="google-map">
                <div>
                  <iframe
                    src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7448.9889582965725!2d105.52276718308103!3d21.012891772457408!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31345b465a4e65fb%3A0xaae6040cfabe8fe!2zVHLGsOG7nW5nIMSQ4bqhaSBI4buNYyBGUFQ!5e0!3m2!1svi!2s!4v1647158030172!5m2!1svi!2s"
                    width="100%"
                    height="240"
                    style="border: 0"
                    allowfullscreen=""
                    loading="lazy"
                  ></iframe>
                </div>
                <ul class="contact-short-info">
                  <li>
                    <i class="tf-ion-ios-home"></i>
                    <span>Thach That, Ha Noi, Viet Nam</span>
                  </li>
                  <li>
                    <i class="tf-ion-android-phone-portrait"></i>
                    <span>Phone: 024-3368-3308</span>
                  </li>
                  <li>
                    <i class="tf-ion-android-globe"></i>
                    <span>Fax: 024-3368-3308</span>
                  </li>
                  <li>
                    <i class="tf-ion-android-mail"></i>
                    <span>Email: DoBock@gmail.com</span>
                  </li>
                </ul>
              </div>

              
            </div>
            <!-- / End Contact Details -->
          </div>
          <!-- end row -->
        </div>
        <!-- end container -->
      </div>
    </section>
                                                <%@include file="components/footerComponent.jsp" %>
    </body>
</html>
