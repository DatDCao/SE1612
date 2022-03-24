<%-- 
    Document   : createAC
    Created on : Mar 13, 2022, 7:48:41 PM
    Author     : Happy-2001
--%>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Sign in</title>
        <%@include file="components/link.jsp" %>
        
</head>
<body>
	<section class="signin-page account">
      <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3" style="margin: auto">
            <div class="block text-center">
              <a class="logo" href="home">
                <img src="images/logo.png" alt="" />
              </a>
              <h2 class="text-center">Create Your Account</h2>
              <form class="text-left clearfix" action="createAccount" method="POST">
                <div class="form-group">
                  <input
                    class="form-control"
                     type="text" name="username" placeholder="Enter Username"
                  />
                </div>
                <div class="form-group">
                  <input
                    type="text"
                    class="form-control"
                    name="displayname" placeholder="Enter DisplayName"
                  />
                </div>
                <div class="form-group">
                  <input
                    type="text"
                    class="form-control"
                    name="address" placeholder="Enter Address"
                  />
                </div>
                  <div class="form-group">
                  <input
                      type="text"
                    class="form-control"
                    name="phone" placeholder="Enter Phone"
                  />
                </div>
                <div class="form-group">
                  <input
                    type="email"
                    class="form-control"
                    name="email" placeholder="Enter Email"
                  />
                </div>
                <div class="form-group">
                  <input
                    type="password"
                    class="form-control"
                    name="password" placeholder="Enter Password"
                  />
                </div>
                <div class="text-center">
                  <button type="submit" class="btn btn-main text-center">
                    Sign In
                  </button>
                </div>
              </form>
              <p class="mt-20">
                Already hava an account ?<a href="login"> Login</a>
              </p>
              <p><a href="forgot"> Forgot your password?</a></p>
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
						Sign In
					</span>
				</div>

				<form class="login100-form validate-form" action="createAccount" method="POST">
					<div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
						<span class="label-input100">Username</span>
                                                <input class="input100" type="text" name="username" placeholder="Enter Username">
						<span class="focus-input100"></span>
					</div>

                                        <div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">DisplayName</span>
						<input class="input100" type="text" name="displayname" placeholder="Enter DisplayName">
						<span class="focus-input100"></span>
					</div> 
                                    
                                        <div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">Address</span>
						<input class="input100" type="text" name="address" placeholder="Enter Address">
						<span class="focus-input100"></span>
					</div>
                                                
                                        <div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">Phone</span>
						<input class="input100" type="text" name="phone" placeholder="Enter Phone">
						<span class="focus-input100"></span>
					</div>
                                             
                                        <div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">Email</span>
						<input class="input100" type="email" name="email" placeholder="Enter Email">
						<span class="focus-input100"></span>
					</div>
                                                
                                        <div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">Password</span>
						<input class="input100" type="password" name="password" placeholder="Enter Password">
						<span class="focus-input100"></span>
					</div>

					

					<div class="container-login100-form-btn" >
                                            <a class="login100-form-btn" href="login" style="margin-right: 40px"/>Login</a>
                                            
                                            <input class="login100-form-btn" type="submit" value="Create Account"/>
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
