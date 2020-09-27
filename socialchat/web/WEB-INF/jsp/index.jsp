<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title >Social Chat</title>
        
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
 $(document).ready(function(){
   $(".signup-form").hide();
   $(".signin").css("background","#03a9f4");
   $(".signup").css("background","white");
    
   $(".signin").click(function(){
    $(".signup-form").hide();
	$(".signin-form").show();
	$(".signup").css("background","white");
	$(".signin").css("background","#03a9f4");
   });
   $(".signup").click(function(){
    $(".signup-form").show();
	$(".signin-form").hide();
	$(".signup").css("background","#03a9f4");
	$(".signin").css("background","white");
   });
  });

</script>
<style>
    html
{
	min-height: 100%;
}
body
{
 margin: 0;
 padding: 0;
 background-image: url("images/blue.jpg");
 background-size: cover;
 background-position: center;
 background-repeat: no-repeat;
 height: 100%;
}
.container{
	width: 600px;
	margin: 70px auto;
	border-radius:  10px 10px 10px 10px;
	border: 8px solid #fff;
	box-sizing: border-box;
	background: #FFF;
	clear: both;
}
.signup,
.signin{
	padding-top: 15px;
	color:  #0a165e;
	font-family: arial;
	font-size: 20px;
	letter-spacing: 2px;
	border-radius:  5px 5px 0px 0px;
	width: 50%;
	background: #fff;
	height: 30px;
	float: left;
	cursor: pointer;
	text-transform: uppercase;
	text-align: center;
}
.signup-form
{
	background: #03a9f4;
	box-sizing: border-box;
	padding: 40px;
	clear: both;
	border-radius:  0px 0px 10px 10px;
	width: 100%;
	height: 500px;
}
.signin-form
{
	background: #03a9f4;
	box-sizing: border-box;
	padding: 40px;
	clear: both;
	border-radius:  0px 0px 10px 10px;
	width: 100%;
	height: 500px;
}
 .inputBox input
{
	width: 75%;
	padding: 10px 0;
	font-size: 16px;
	color:  #fff;
	letter-spacing: 1px;
	margin-bottom: 30px;
	border: none;
	border-bottom: 1px solid #0a165e;
	outline: none;
	background: transparent;
	text-align: center;
	margin-left:13%;
	 
}
.button
{   
	 
	 margin-left:20%;
   	 text-transform: uppercase;
	 font-size: 18px;
	 background: transparent;
	 border: none;
	 width: 60%; 
	 outline: none;
	 color: #fff;
	 background: #0a165e;
	 
	 cursor: pointer;
	 border-radius: 20px;
	 height: 40px;
}
::placeholder{
	color: #0a165e;
	
}



 
</style>   
    </head>

    <body>
       <!-- <p>Social - Chat</p>
        
        <a href="http://localhost:8080/socialchat/signin.jsp">Sign In</a>
        <a href="http://localhost:8080/socialchat/signup.jsp">Sign Up</a>-->
       
       <div class="container">
       <div class="signin">sign in</div>
       <div class="signup" >sign up</div>
	  
	<div class="signup-form">
	 <form action="signupserv" method="post">
	      <div class="inputBox">
             <input type="text" name="_username"placeholder="Choose a Username" required>
			 <input type="text" name="_firstname"placeholder="First Name" required>
			 <input type="text" name="_lastname"placeholder="Last Name" >
		     <input type="password" name="_password"placeholder="Choose a Password" required>
		     <input type="password" name="_confirmpassword" placeholder="Confirm Password" required>
		  </div>
         <input type="submit"name=""value="Create Account"class="button">		  
	  </form>
	</div>
	<div class="signin-form">
	 <form action="signinserv" method="post">
	      <div class="inputBox">
                  <br><br>
             <input type="text" name="_username"placeholder="Username" required>
             <br><br>
		     <input type="password" name="_password"placeholder="Password" required>
		  </div>
             <br><br>
         <input type="submit"name="Submit"value="Sign in"class="button">		  
	  </form>
	</div>
	
   </div>
        
        
    </body>
</html>
