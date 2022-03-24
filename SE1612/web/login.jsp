<%-- 
    Document   : login
    Created on : Mar 13, 2022, 5:09:15 PM
    Author     : Happy-2001
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>DoBook | Login</title>
        <%@include file="components/link.jsp" %>
    </head>
    <body >
        <section class="signin-page account" style="margin: auto">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-md-offset-3" style="margin: auto">
                        <div class="block text-center">
                            <a class="logo" href="home">
                                <img src="images/logo.png" alt="" />
                            </a>
                            <h2 class="text-center">Welcome Back</h2>
                            <form class="text-left clearfix" action="login" method="POST">
                                <div class="form-group">
                                    <input
                                        type="text"
                                        class="form-control"
                                        name="username" placeholder="Username" value="${username}"
                                        />
                                </div>
                                <div class="form-group">
                                    <input
                                        type="password"
                                        class="form-control"
                                        name="password" placeholder="Password"value="${password}"
                                        />
                                </div>
                                <div class="flex-sb-m w-full p-b-30">
                                    <div class="contact100-form-checkbox">
                                        <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember">
                                        <label class="label-checkbox100" for="ckb1">
                                            Remember me
                                        </label>
                                    </div>

                                    <div>
                                        <a href="forgot" class="txt1">
                                            Forgot Password?
                                        </a>
                                    </div>
                                </div>
                                <div class="text-center">
                                    <h6 style="color: red;margin-bottom: 10px">${err}</h6>
                                    <button type="submit" value="Login" class="btn btn-main text-center">
                                        Login
                                    </button>
                                </div>
                            </form>
                            <p class="mt-20">
                                New in this site ?<a href="createAccount"> Create New Account</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        

        <!--===============================================================================================-->
        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/animsition/js/animsition.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/daterangepicker/moment.min.js"></script>
        <script src="vendor/daterangepicker/daterangepicker.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/countdowntime/countdowntime.js"></script>
        <!--===============================================================================================-->
        <script src="js/main.js"></script>

    </body>
</html>
