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
        <title>Colo Shop Product</title>
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
        <%@include file="components/navBarComponent.jsp" %>
        <section class="py-5 px-4 px-lg-5 " style="padding-top:7rem !important;min-height: 500px">                                                              
        <form action="UpdateProduct" method="POST">
            <table>
                <tr>
                    <td>ID:</td><td>${product.id}<input type="hidden" name="id" value="${product.id}"/></td>
                </tr>
                <tr>
                    <td>Name:</td><td><input type="text" name="name" value="${product.name}"/></td>
                </tr>
                <tr>
                    <td>Price:</td><td><input type="text" name="price" value="${product.price}"/></td>
                </tr>
                <tr>
                    <td>Quantity:</td><td><input type="text" name="quantity" value="${product.quantity}"/></td>
                </tr>
                <tr>
                    <td>Description:</td><td><input type="text" name="des" value="${product.description}"/></td>
                </tr>
                <tr>
                    <td>ImageURL:</td><td><input type="text" name="image" value="${product.imageURL}"/></td>
                </tr>
                <tr>
                    <td>Created_Date:</td><td><input type="date" name="date" value="${product.createdDate}"/></td>
                </tr>
                <tr>
                    <td>CategoryID:</td><td><input type="text" name="categoryid" value="${product.categoryid}"/></td>
                </tr>
                <tr>
                    <td>Suppliers:</td><td><input type="text" name="suppliers" value="${product.suppliers}"/></td>
                </tr>
                
                
                <tr><td><input type="submit" value="Update"/></td></tr>
            </table>
        </form>
        </section>
                                                                        <!-- Footer -->

       <footer class="footer" style="background-color: #ccc">
		<%@include file="components/footerComponent.jsp" %>
	</footer>
    </body>
</html>
