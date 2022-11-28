<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Login | SHOPNOW</title>
    
    <link href="csss/csss/css/animate.css" rel="stylesheet" type="text/css"/>
    <link href="csss/csss/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="csss/csss/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="csss/csss/css/main.css" rel="stylesheet" type="text/css"/>
    <link href="csss/csss/css/prettyPhoto.css" rel="stylesheet" type="text/css"/>
    <link href="csss/csss/css/price-range.css" rel="stylesheet" type="text/css"/>
    <link href="csss/csss/css/responsive.css" rel="stylesheet" type="text/css"/>
    <link href="csss/csss/css/css1.css" rel="stylesheet" type="text/css"/>
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>
	<header id="header"><!--header-->
		
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<!--<div class="logo pull-left">
							<a href="index.html"><img src="images/home/logo.png" alt="" /></a>
						</div>-->
						<div class="btn-group pull-right">
							
							
							
						</div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<li><a href=""><i class="fa fa-user"></i> Account</a></li>
								
								<li><a href="checkout.html"><i class="fa fa-crosshairs"></i> Checkout</a></li>
								<li><a href="cart.html"><i class="fa fa-shopping-cart"></i> Cart</a></li>
								
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		
	</header><!--/header-->
	
	<section id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						
                            <h2 class="form-title">Sign in</h2>
                            <form method="post" action="LoginServlet"  class="register-form" id="login-form">
                                <div class="form-group">
                                    <label for="email"><i class="zmdi zmdi-account material-icons-name"></i></label> <input type="text" name="email" id="username"
                                                                                                                            placeholder="Your Email" style="height:30px;" />
                                </div>
                                <div class="form-group">
                                    <label for="password"><i class="zmdi zmdi-lock"></i></label> <input
                                        type="password" name="password" id="password"
                                        placeholder="Password" style="height:30px;" />
                                </div>
                               
                                
                                <div class="form-group form-button"><input type="submit" name="signin" id="signin" class="form-submit" value="Log in" style="height:30px;" />
                                </div>
						</form>
					</div><!--/login form-->
				</div>
				<div class="col-sm-1">
					<!--<h2 class="or">OR</h2>-->
				</div>
   <section id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="SIGNUP-form"><!--login form-->
						<h2>Sign up </h2>
                                                <form method="post" action="SignupServlet"> 
                                                    <div class="form-group">
                                    <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label> <input type="text" name="prenom" id="prenom" placeholder="prenom" required="" style="height:30px;"/>
                                </div>
                                <div class="form-group">
                                    <label for="name">
                                        <i class="zmdi zmdi-account material-icons-name"></i></label> <input type="text" name="nom" id="nom" placeholder="nom" required="" style="height:30px;"/>
                                </div> 
                                                      <div class="form-group">
                                    <label for="contact"><i class="zmdi zmdi-phone "></i></label><input type="text" name="tele" id="t" placeholder="Telephone" style="height:30px;"/>
                                </div>
                                <div class="form-group">
                                    <label for="adresse"><i class="zmdi zmdi-lock-outline"></i></label><input type="text" name="adresse" id="adresse" placeholder="Adresse" style="height:30px;" />
                                </div>
                                <div class="form-group">
                                    <label for="email"><i class="zmdi zmdi-email"></i></label> <input type="email" name="email" id="email" placeholder="Your Email" required="" style="height:30px;"/>
                                </div>
                                <div class="form-group">
                                    <label for="password"><i class="zmdi zmdi-lock"></i></label> <input type="password" name="password" id="password" placeholder="Password" required="" style="height:30px;"/>
                                </div>
                              
                                
                                <div class="form-group form-button"> <input type="submit" name="signup" id="signup"
                                           class="form-submit" value="Register" style="height:30px;" /> 
                                     
                                </div>
					
                                                </form>                            

				 
		
	
	</section><!--/form-->
	
	
	<footer ><!--Footer-->
		
		
		
		
	</footer><!--/Footer-->
	

  
   <!-- <script src="js/jquery.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>-->
</body>
</html>