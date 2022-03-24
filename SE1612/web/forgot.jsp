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
	<title>Request Password</title>
        <%@include file="components/link.jsp" %>
</head>
<body>
	<section class="forget-password-page account">
      <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3" style="margin: auto">
            <div class="block text-center">
              <a class="logo" href="home">
                <img src="images/logo.png" alt="" />
              </a>
              <h2 class="text-center">Welcome Back</h2>
              <form class="text-left clearfix" action="forgot" method="POST">
                <p>
                  Please enter the email address for your account. A
                  verification code will be sent to you. Once you have received
                  the verification code, you will be able to choose a new
                  password for your account.
                </p>
                <div class="form-group">
                  <input
                    type="email"
                    class="form-control"
                    id="exampleInputEmail1"
                    placeholder="Account email address"
                    name="mail"
                  />
                </div>
                <div class="text-center">
                  <button type="submit" class="btn btn-main text-center" value="Send Mail">
                    Request password reset
                  </button>
                </div>
              </form>
              <p class="mt-20"><a href="login">Back to log in</a></p>
            </div>
          </div>
        </div>
      </div>
    </section>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(images/bg-01.jpg);">
					<span class="login100-form-title-1">
						Forgot Password
					</span>
				</div>

				<form class="login100-form validate-form" action="forgot" method="POST">
					<div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
						<span class="label-input100">Mail</span>
                                                <input class="input100" type="text" name="mail" placeholder="Enter mail">
						<span class="focus-input100"></span>
                                        </div>

					<div class="container-login100-form-btn" >
                                            <input class="login100-form-btn" type="submit" value="Send Mail"/>
					</div>
                                                
				</form>
			</div>
		</div>
	</div>
	
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
