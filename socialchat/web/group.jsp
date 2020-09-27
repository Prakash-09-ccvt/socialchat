<%-- 
    Document   : group
    Created on : 26 Feb, 2020, 12:58:10 PM
    Author     : sahil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
 $(document).ready(function(){
   $(".discussion").hide();
   $(".join").css("background","#03a9f4");
   $(".dis").css("background","white");
    
   $(".dis").click(function(){
    $(".joingroup").hide();
	//$(".discussion").show();
	$(location).attr('href',"customgroup.jsp");
        $(".join").css("background","white");
	$(".dis").css("background","#03a9f4");
   });
   $(".join").click(function(){
    $(".joingroup").show();
	$(".discussion").hide();
	$(".join").css("background","#03a9f4");
	$(".dis").css("background","white");
   });
  });
</script>
        <title>Social Chat</title>
        <style>
    
    #button
    {
        font-family: arial;
	font-size: 16px;
        background: transparent;
	 border: none;
	 width: 7%;
	 outline: none;
	 color:  #0a165e;
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
.dis{
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
.discussion
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
	color: #0a165e;
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
	color: #0a165e;
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
.ortext
{
    color: #0a165e;
    font-family: arial;
	font-size: 20px;
            
        text-align: center;
}


    </style>
    </head>
    <body>
            
        <div class="container">
            <form action="signoutserv" method="post">
                <input type="submit" value="Sign Out" id="button">		  
            </form>
       <div class="join" > College Groups</div>
	   <div class="dis">Custom Groups</div>
	   <div class="joingroup">
          <form action="groupfinder" method="post">
		   <div class="input">
              		  
                       <select  name="group"   class="input2" required=>
                     
    <option  value="">Choose Your Branch</option>  
    <option value="ccvt">Cloud Computing & Virtualization Technology</option>
    <option value="csf">Cyber Security</option>
    <option value="iot">Internet of Things </option>
    <option value="gg">Graphics & Gaming</option>
    <option value="ogi">Oil & Gas</option>
    <option value="dop">Xebia Dev-Ops</option>
  </select><br><br>
		    <input type="password" name="password" placeholder="Enter Password" class="input2"required>
           </div>		 
		  <input type="submit" value="Join Group"class="button">	
	
          </form>
               <br><br>
               <div class="ortext">OR</div>
              <form action="disscussion" method="post">
		  <br><br>
		  <input type="submit" value="Join Discussion"class="button">		  
		  </form>
               
	   </div>
	   <div class="discussion">
          
	   </div>
	</div>
</body>
</html>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        <!--
        <form  action="groupfinder" method="post">
  <label for="group">Choose a group:</label>
  <select  name="group">
    <option value="ccvt">Cloud Computing & Virtualization Technology</option>
    <option value="csf">Cyber Security</option>
    <option value="iot">Internet of Things </option>
    <option value="gg">Graphics & Gaming</option>
    <option value="ogi">Oil & Gas</option>
    <option value="dop">Xebia Dev-Ops</option>
  </select>
  <br>Password:<br>
  <input type="password" name="password"><br>
  <input type="submit">
</form>
    </body>
</html>
-->