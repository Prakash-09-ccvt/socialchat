<%-- 
    Document   : chatgui
    Created on : 2 Mar, 2020, 10:37:26 PM
    Author     : sahil
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Social Chat</title>
<link href="chatcss.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
<style>
    body
    {
        background-image: url("images/g1.jpg");
    }
    #button
    {
        background: transparent;
	 border: none;
	 width: 7%;
	 outline: none;
	 color: white;
	 background-color: rgba(0,0,0,0.0) !important;
	 border: 2px solid #ccc;
	 cursor: pointer;
	 border-radius: 0px 15px 0px 0px;
	 height: 50px;
         margin-top: 15px;
     margin-right:13.9%;
     position:absolute;
     top:0;
     right:0;
    }
    
.groupname
{
	font-family:sans-serif;
	color:white;
	text-align: center;
	font-size: 30px;
}

</style> 
	
 
</head>
<body>

    <div class="container">
        
			<div class="msg-header">
                            <form action="signoutserv" method="post">
                <input type="submit" value="Sign Out" id="button">		  
            </form>
                            <%
                                HttpSession s1 = request.getSession();
                                String id =session.getAttribute("_group").toString();
                                try
            {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
            //Connection conn= DriverManager.getConnection("jdbc:mysql://socialchat.cerxggui.us-east-1.rds.amazonaws.com:3306/project","admin","socialchat");
            Statement st1= conn.createStatement();
            ResultSet rs1 =st1.executeQuery("select * from groups where gid = '"+id+"'");
            if(rs1.next())
            {
                out.println("<div class=\"groupname\">");
            out.println(rs1.getString(3));
            out.println("</div>");
            }
            
            }
                                catch(Exception e)
                                {
                                    out.println("Exception"+e.getMessage());
                                }
                                %>
				
                                    
                                    
				
			</div>
                             
        <div class="chat-page">
				<div class="msg-inbox">
					<div class="chats">
						<div class="msg-page">
				<%
        String username=session.getAttribute("username").toString();
       HttpSession s = request.getSession();
       String groupname=session.getAttribute("_group").toString();
       //out.println(groupname);
          
        if(username!=null)
        {
        try
            {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
            Statement st= conn.createStatement();
            ResultSet rs =st.executeQuery("select * from "+groupname+"");
            
            while(rs.next())
            {   
                
                /*out.println("<div class=\"msg_cotainer\">");
                out.println("<div class=\"text\">");
                out.println("<p>"+rs.getString(1)+":"+rs.getString(2)+"</p>"); 
                
               // out.print("<p class=\"chat-message\">"+rs.getString(1)+":"+rs.getString(2)+"</p>");
                
                 out.println("</div>");
                out.println("</div>");*/
                 /*out.println("<h1>"+username+"</h1>");
                 out.println("<h1>"+rs.getString(1)+"</h1>");*/
                if(username.equals(rs.getString(1)))
                {
                   
                    out.println("<div class=\"msg_cotainer_me\">\n" +
								
"								<p>"+rs.getString(1)+": "+rs.getString(2)+"" +
"								</p>\n" +
								
"								</div>");
                }
                
                else
                {
                    out.println("<div class=\"msg_cotainer\">\n" +
								
"								<p>"+rs.getString(1)+": "+rs.getString(2)+"" +
"								</p>\n" +
								
"								</div>");
                }
                
                
                
            }
            }
           catch (Exception ex)
            {
                out.println("Exception"+ex.getMessage());
                
            }
        }
        else
        {
            response.sendRedirect("index.jsp");
        }
               
    
    %>
								



									
								
						
					</div>
				</div>
                                    <form action="sendmessage"method="post">
						<div class="card-footer">
							<div class="input-group">
								
								<textarea name="_msg" class="form-control type_msg" placeholder="Type your message..."></textarea>
								<div class="input-group-append">
									
									<input class="button" type="submit" value="Send" name="_btn">
									
									
								</div>
							</div>
						</div>
						</form>
		
		</div>
		</div>
		</div>
		
</body>
</html>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        