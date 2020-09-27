<%-- 
    Document   : customgroup
    Created on : 8 Apr, 2020, 12:24:17 PM
    Author     : sahil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Social Chat</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
 $(document).ready(function(){
   $(".creategroup").hide();
   $(".join").css("background","#03a9f4");
   $(".crg").css("background","white");
    
   $(".crg").click(function(){
    $(".joingroup").hide();
	$(".creategroup").show();
	$(".join").css("background","white");
	$(".crg").css("background","#03a9f4");
   });
   $(".join").click(function(){
    $(".joingroup").show();
	$(".creategroup").hide();
	$(".join").css("background","#03a9f4");
	$(".crg").css("background","white");
   });
  });
</script>    
<style>
    #button
    {
        font-family: arial;
	font-size: 16px;
        background: transparent;
	 border: none;
	 width: 7%;
	 outline: none;
	 color: #0a165e;
	 background: #03a9f4;
	 padding: 10px 20px;
	 cursor: pointer;
	 border-radius: 10px 10px 0px 0px;
	 height: 40px;
         margin-top: 30px;
     margin-right:30.45%;
     position:absolute;
     top:0;
     right:0;
     
    }
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
	border-radius:  10px 0px 10px 10px;
	border: 8px solid #fff;
	box-sizing: border-box;
	background: #FFF;
	clear: both;
}
.join,
.crg{
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
.joingroup
{
	box-sizing: border-box;
	padding: 40px;
	clear: both;
	width: 100%;
	height: 500px;
	background: #03a9f4;
	border-radius:  0px 0px 5px 5px;
}
.creategroup
{
	background: #03a9f4;
	box-sizing: border-box;
	padding: 40px;
	clear: both;
	border-radius:  0px 0px 10px 10px;
	width: 100%;
	height: 500px;
}
.input2
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
.input{
	font-size: 20px;
	color:  #fff;
	letter-spacing: 1px;
}
::placeholder{
	color: #0a165e;
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
    </style>
    </head>
    <body>
        <div class="container">
            <form action="signoutserv" method="post">
                <input type="submit" value="Sign Out" id="button">		  
            </form>
       <div class="join" >Join Group</div>
	   <div class="crg">Create Group</div>
	   <div class="joingroup">
               <form action="groupfinder" method="post">
		   <div class="input">
              <br><br>
                       <input type="text" name="group"placeholder="Enter Group id"class="input2" required><br><br>
                       <input type="password" name="password" placeholder="Enter Password" class="input2" required><br><br>
           </div>		 
		  <input type="submit"name=""value="Join Group"class="button">	
		  </form>
	   </div>
	   <div class="creategroup">
          <form action="creategroup" method="post">
		  <input type="text" name="name"placeholder="Enter Group name"class="input2" required>
		  <input type="text" name="gname"placeholder="Enter Group id"class="input2" required>
		  <input type="password" name="pass" placeholder="Enter Password" class="input2" required>
                  <input type="password" name="cnfpass" placeholder="Confirm Password" class="input2" required>
		  
		  <input type="submit"name=""value="Create Group"class="button"">
		  </form>
		  </form>
	   </div>
	</div>

    </body>
</html>
