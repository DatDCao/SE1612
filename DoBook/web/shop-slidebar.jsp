<%-- 
    Document   : shop-slidebar
    Created on : Mar 15, 2022, 1:22:16 AM
    Author     : docao
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Basic Page Needs
      ================================================== -->
        <meta charset="utf-8" />
        <title>DoBook | Shop</title>

        <!-- Mobile Specific Metas
      ================================================== -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="description" content="Construction Html5 Template" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1.0, maximum-scale=5.0"
            />
        <meta name="author" content="Themefisher" />
        <meta name="generator" content="Themefisher Constra HTML Template v1.0" />

        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />

        <!-- Themefisher Icon font -->
        <link rel="stylesheet" href="plugins/themefisher-font/style.css" />
        <!-- bootstrap.min css -->
        <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css" />

        <!-- Animate css -->
        <link rel="stylesheet" href="plugins/animate/animate.css" />
        <!-- Slick Carousel -->
        <link rel="stylesheet" href="plugins/slick/slick.css" />
        <link rel="stylesheet" href="plugins/slick/slick-theme.css" />

        <!-- Main Stylesheet -->
        <link rel="stylesheet" href="css/style.css" />
    </head>

    <body id="body">
        <!-- Start Top Header Bar -->
        <%@include file="components/narBarComponents.jsp" %>
        <!-- End Top Header Bar -->

        <!-- Main Menu Section -->
        <%@include file="components/mainMenuSectionComponents.jsp" %>

        <section class="page-header">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="content">
                            <h1 class="page-name"><a href="shop">Shop</a></h1>
                            <ol class="breadcrumb">
                                <li><a href="index.html">Home</a></li>
                                <li class="active">shop</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="products section">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="widget">
                            <h4 class="widget-title">Short By</h4>
                            <form method="post" action="#">
                                <select class="form-control">
                                    <option>Man</option>
                                    <option>Women</option>
                                    <option>Accessories</option>
                                    <option>Shoes</option>
                                </select>
                            </form>
                        </div>
                        <div class="widget product-category">
                            <h4 class="widget-title">Categories</h4>
                            <div
                                class="panel-group commonAccordion"
                                id="accordion"
                                role="tablist"
                                aria-multiselectable="true"
                                >
                                <!--hien ra list categories-->
                                <c:forEach items="${listCategories}" var="C">
                                    <div class="panel panel-default">
                                        <div class="panel-heading" role="tab" id="headingOne">
                                            <h4 class="panel-title">
                                                <a
                                                    href="filter-category?categoryId=${C.id}"
                                                    >
                                                    ${C.name}
                                                </a>
                                            </h4>
                                        </div> 
                                    </div> 
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="row">
                            <div style="width: 100%; height: 34.8px">

                            </div>
                            <c:forEach items="${listCategories}" var="C">
                                <div class="panel panel-default" style="${C.id != category ? "display: none" : "" } " >
                                    <div class="panel-heading" role="tab" id="headingOne" style="background-color: white ; height: 34px">
                                        <h4 class="panel-title" >
                                            <a
                                                href="filter-category?categoryId=${C.id}"
                                                style="display: flex;
                                                justify-content: center"
                                                >
                                                ${C.name}
                                            </a>
                                        </h4>
                                    </div> 
                                </div> 
                            </c:forEach>
                            <c:forEach items="${listProducts}" var="P">
                                <div class=" col-md-4 col-sm-6 col-xs-12" style=" height: 390px">
                                    <div class="product-item">
                                        <div class="product-thumb">
                                            <span class="bage">Sale</span>
                                            <img
                                                class="img-responsive"
                                                src="${P.imageUrl}"
                                                alt="product-img"
                                                style=" height: 300px"
                                                />
                                            <div class="preview-meta">
                                                <ul>
                                                    <li>
                                                        <a href="detailProduct?productId=${P.id}&producCategoryId=${P.categoryId}"><i class="tf-ion-ios-search-strong"></i></a>
                                                    </li>
                                                    <!--                                                    <li>
                                                                                                            <a href="#!"><i class="tf-ion-ios-heart"></i></a>
                                                                                                        </li>-->
                                                    <li>
                                                        <a href="#!"><i class="tf-ion-android-cart"></i></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <h4><a href="detailProduct?productId=${P.id}&producCategoryId=${P.categoryId}">${P.name}</a></h4>
                                            <p class="price">$${P.price}</p>
                                        </div>
                                    </div>
                                </div> 
                            </c:forEach>


                        </div>
                        <c:choose >
                            <c:when test="${listProducts == null || listProducts.size() == 0}">
                                <h1 style="margin: 0">
                                    Don't have Product!
                                </h1>
                            </c:when>
                            <c:otherwise>
                                <nav  aria-label="Page navigation example " >
                                    <ul class="pagination "  style=" display: flex;
                                        justify-content: center;">
                                        <li class="page-item"  style="${totalPage == null ? "display: none" : "" }">
                                            <a class="page-link"  href="shop?page=${page == 0 ? page - 1 : 1}" aria-label="Previous" style="color: #000">
                                                <span aria-hidden="true">&laquo;</span>
                                            </a>
                                        </li>
                                        <c:forEach begin="1" end="${totalPage}" var="i">
                                            <li class="page-item"  ><a class="page-link" href="shop?page=${i}" style="color: ${i == page ? "red": "#000"}">${i}</a></li>
                                            </c:forEach>

                                        <li class="page-item" style="${totalPage == null ? "display: none" : ""}">
                                            <a class="page-link"  href="shop?page=${page == totalPage+1 ? page + 1 : totalPage }" aria-label="Next" style="color: #000">
                                                <span aria-hidden="true">&raquo;</span>
                                            </a>
                                        </li>
                                    </ul>
                                </nav>
                            </c:otherwise>
                        </c:choose>

                    </div>
                </div>
            </div>
        </section>
        <!--Footer-->
        <%@include file="components/footerComponents.jsp" %>

        <!-- 
        Essential Scripts
        =====================================-->

        <!-- Main jQuery -->
        <script src="plugins/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap 3.1 -->
        <script src="plugins/bootstrap/js/bootstrap.min.js"></script>
        <!-- Bootstrap Touchpin -->
        <script src="plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
        <!-- Instagram Feed Js -->
        <script src="plugins/instafeed/instafeed.min.js"></script>
        <!-- Video Lightbox Plugin -->
        <script src="plugins/ekko-lightbox/dist/ekko-lightbox.min.js"></script>
        <!-- Count Down Js -->
        <script src="plugins/syo-timer/build/jquery.syotimer.min.js"></script>

        <!-- slick Carousel -->
        <script src="plugins/slick/slick.min.js"></script>
        <script src="plugins/slick/slick-animation.min.js"></script>

        <!-- Google Mapl -->
        <!-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script> -->
        <!-- <script type="text/javascript" src="plugins/google-map/gmap.js"></script> -->

        <!-- Main Js File -->
        <script src="js/script.js"></script>
    </body>
</html>
