<%-- 
    Document   : DetailProduct
    Created on : Mar 22, 2022, 6:06:57 AM
    Author     : docao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Basic Page Needs
      ================================================== -->
        <meta charset="utf-8" />
        <title>DoBook | Detail Product </title>

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
        
        <section class="single-product">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <ol class="breadcrumb">
                            <li><a href="index.html">Home</a></li>
                            <li><a href="shop">Shop</a></li>
                            <li class="active">Single Product</li>
                        </ol>
                    </div>
                    <div class="col-md-6">
                        <ol class="product-pagination text-right">
                            <li>
                                <a href="detailProduct?productId=${product.id-1}&producCategoryId=${product.categoryId}"
                                   ><i class="tf-ion-ios-arrow-left"></i> Next
                                </a>
                            </li>
                            <li>
                                <a href="detailProduct?productId=${product.id+1}&producCategoryId=${product.categoryId}"
                                   >Preview <i class="tf-ion-ios-arrow-right"></i
                                    ></a>
                            </li>
                        </ol>
                    </div>
                </div>
                <div class="row mt-20">
                    <div class="col-md-3">
                        <div class="single-product-slider">
                            <div
                                id="carousel-custom"
                                class="carousel slide"
                                data-ride="carousel"
                                >
                                <div class="carousel-outer">
                                    <!-- me art lab slider -->
                                    <div class="carousel-inner">
                                        <div class="item active">
                                            <img
                                                src="${product.imageUrl}"
                                                alt=""
                                                />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="single-product-details">
                            <h2>${product.name}</h2>
                            <p class="product-price">$${product.price}</p>

                            <p class="product-description mt-20">
                                ${product.description}
                            </p>

                            <div class="product-quantity">
                                <span>Quantity:</span>
                                <div class="product-quantity-slider">
                                    <input
                                        id="product-quantity"
                                        type="text"
                                        value="0"
                                        name="product-quantity"
                                        />
                                </div>
                            </div>
                            <!--              <div class="product-category">
                                            <span>Categories:</span>
                                            <ul>
                                              <li><a href="product-single.html">${product}</a></li>
                                            </ul>
                                          </div>-->
                            <a href="cart.html" class="btn btn-main mt-20">Add To Cart</a> 
                            <a href="checkout.html" class="btn btn-main mt-20 btn-solid-border">By Now</a>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-xs-12">
                        <div class="tabCommon mt-20">
                            <ul class="nav nav-tabs">
                                <li class="active">
                                    <a data-toggle="tab" href="#details" aria-expanded="true"
                                       >Details</a
                                    >
                                </li>
                                <li class="">
                                    <a data-toggle="tab" href="#reviews" aria-expanded="false"
                                       >Reviews</a
                                    >
                                </li>
                            </ul>
                            <div class="tab-content patternbg">
                                <div id="details" class="tab-pane fade active in">
                                    <h4>Product Description</h4>
                                    <p>
                                        ${product.description}
                                    </p>

                                </div>
                                <div id="reviews" class="tab-pane fade">
                                    <div class="post-comments">
                                        <ul class="media-list comments-list m-bot-50 clearlist">
                                            <!-- Comment Item start-->
                                            <li class="media">
                                                <a class="pull-left" href="#!">
                                                    <img
                                                        class="media-object comment-avatar"
                                                        src="images/blog/avater-1.jpg"
                                                        alt=""
                                                        width="50"
                                                        height="50"
                                                        />
                                                </a>

                                                <div class="media-body">
                                                    <div class="comment-info">
                                                        <h4 class="comment-author">
                                                            <a href="#!">Jonathon Andrew</a>
                                                        </h4>
                                                        <time datetime="2013-04-06T13:53"
                                                              >July 02, 2015, at 11:34</time
                                                        >
                                                        <a class="comment-button" href="#!"
                                                           ><i class="tf-ion-chatbubbles"></i>Reply</a
                                                        >
                                                    </div>

                                                    <p>
                                                        Lorem ipsum dolor sit amet, consectetur adipiscing
                                                        elit. Quisque at magna ut ante eleifend
                                                        eleifend.Lorem ipsum dolor sit amet, consectetur
                                                        adipisicing elit. Quod laborum minima, reprehenderit
                                                        laboriosam officiis praesentium? Impedit minus
                                                        provident assumenda quae.
                                                    </p>
                                                </div>
                                            </li>
                                            <!-- End Comment Item -->

                                            <!-- Comment Item start-->
                                            <li class="media">
                                                <a class="pull-left" href="#!">
                                                    <img
                                                        class="media-object comment-avatar"
                                                        src="images/blog/avater-4.jpg"
                                                        alt=""
                                                        width="50"
                                                        height="50"
                                                        />
                                                </a>

                                                <div class="media-body">
                                                    <div class="comment-info">
                                                        <div class="comment-author">
                                                            <a href="#!">Jonathon Andrew</a>
                                                        </div>
                                                        <time datetime="2013-04-06T13:53"
                                                              >July 02, 2015, at 11:34</time
                                                        >
                                                        <a class="comment-button" href="#!"
                                                           ><i class="tf-ion-chatbubbles"></i>Reply</a
                                                        >
                                                    </div>

                                                    <p>
                                                        Lorem ipsum dolor sit amet, consectetur adipiscing
                                                        elit. Quisque at magna ut ante eleifend eleifend.
                                                        Lorem ipsum dolor sit amet, consectetur adipisicing
                                                        elit. Magni natus, nostrum iste non delectus atque
                                                        ab a accusantium optio, dolor!
                                                    </p>
                                                </div>
                                            </li>
                                            <!-- End Comment Item -->

                                            <!-- Comment Item start-->
                                            <li class="media">
                                                <a class="pull-left" href="#!">
                                                    <img
                                                        class="media-object comment-avatar"
                                                        src="images/blog/avater-1.jpg"
                                                        alt=""
                                                        width="50"
                                                        height="50"
                                                        />
                                                </a>

                                                <div class="media-body">
                                                    <div class="comment-info">
                                                        <div class="comment-author">
                                                            <a href="#!">Jonathon Andrew</a>
                                                        </div>
                                                        <time datetime="2013-04-06T13:53"
                                                              >July 02, 2015, at 11:34</time
                                                        >
                                                        <a class="comment-button" href="#!"
                                                           ><i class="tf-ion-chatbubbles"></i>Reply</a
                                                        >
                                                    </div>

                                                    <p>
                                                        Lorem ipsum dolor sit amet, consectetur adipiscing
                                                        elit. Quisque at magna ut ante eleifend eleifend.
                                                    </p>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="products related-products section">
            <div class="container">
                <div class="row">
                    <div class="title text-center">
                        <h2>Related Products</h2>
                    </div>
                </div>
                <div class="row">
                    <c:forEach items="${listProductsDetail}" var="P">
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
                                                <a href="detailProduct?productId=${P.id}"><i class="tf-ion-ios-search-strong"></i></a>
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
                                    <h4><a href="detailProduct?productId=${P.id}">${P.name}</a></h4>
                                    <p class="price">$${P.price}</p>
                                </div>
                            </div>
                        </div> 
                    </c:forEach>
                    <c:forEach items="${listProductsDetail}" var="P">
                        <div class="col-md-3">
                            <div class="product-item">
                                <div class="product-thumb">
                                    <img
                                        class="img-responsive"
                                        src="images/shop/products/product-3.jpg"
                                        alt="product-img"
                                        />
                                    <div class="preview-meta">
                                        <ul>
                                            <li>
                                                <span data-toggle="modal" data-target="#product-modal">
                                                    <i class="tf-ion-ios-search-strong"></i>
                                                </span>
                                            </li>
                                            <li>
                                                <a href="#"><i class="tf-ion-ios-heart"></i></a>
                                            </li>
                                            <li>
                                                <a href="#!"><i class="tf-ion-android-cart"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <h4><a href="product-single.html">${P.name}</a></h4>
                                    <p class="price">$${P.price}</p>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <div class="col-md-3">
                        <div class="product-item">
                            <div class="product-thumb">
                                <img
                                    class="img-responsive"
                                    src="images/shop/products/product-2.jpg"
                                    alt="product-img"
                                    />
                                <div class="preview-meta">
                                    <ul>
                                        <li>
                                            <span data-toggle="modal" data-target="#product-modal">
                                                <i class="tf-ion-ios-search"></i>
                                            </span>
                                        </li>
                                        <li>
                                            <a href="#"><i class="tf-ion-ios-heart"></i></a>
                                        </li>
                                        <li>
                                            <a href="#!"><i class="tf-ion-android-cart"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product-content">
                                <h4><a href="product-single.html">Strayhorn SP</a></h4>
                                <p class="price">$230</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="product-item">
                            <div class="product-thumb">
                                <img
                                    class="img-responsive"
                                    src="images/shop/products/product-3.jpg"
                                    alt="product-img"
                                    />
                                <div class="preview-meta">
                                    <ul>
                                        <li>
                                            <span data-toggle="modal" data-target="#product-modal">
                                                <i class="tf-ion-ios-search"></i>
                                            </span>
                                        </li>
                                        <li>
                                            <a href="#"><i class="tf-ion-ios-heart"></i></a>
                                        </li>
                                        <li>
                                            <a href="#!"><i class="tf-ion-android-cart"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="product-content">
                                <h4><a href="product-single.html">Bradley Mid</a></h4>
                                <p class="price">$200</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Modal -->
        <div class="modal product-modal fade" id="product-modal">
            <button
                type="button"
                class="close"
                data-dismiss="modal"
                aria-label="Close"
                >
                <i class="tf-ion-close"></i>
            </button>
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-8">
                                <div class="modal-image">
                                    <img
                                        class="img-responsive"
                                        src="images/shop/products/modal-product.jpg"
                                        />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="product-short-details">
                                    <h2 class="product-title">GM Pendant, Basalt Grey</h2>
                                    <p class="product-price">$200</p>
                                    <p class="product-short-description">
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                        Rem iusto nihil cum. Illo laborum numquam rem aut officia
                                        dicta cumque.
                                    </p>
                                    <a href="#!" class="btn btn-main">Add To Cart</a>
                                    <a href="#!" class="btn btn-transparent"
                                       >View Product Details</a
                                    >
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
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
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
        <script type="text/javascript" src="plugins/google-map/gmap.js"></script>

        <!-- Main Js File -->
        <script src="js/script.js"></script>
    </body>
</html>

