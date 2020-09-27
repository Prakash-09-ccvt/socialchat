/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package chatpackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 *
 * @author sahil
 */
public class creategroup extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Social Chat</title>");
            out.println("<style>                      \n" +
"html\n" +
"{\n" +
"	min-height: 100%;\n" +
"}\n" +
"body\n" +
"{\n" +
" margin: 0;\n" +
" padding: 0;\n" +
" background-image: url(\"images/blue.jpg\");\n" +
" background-size: cover;\n" +
" background-position: center;\n" +
" background-repeat: no-repeat;\n" +
" height: 100%;\n" +
"}" +
".errortext\n" +
"        {\n" +
"font-family:sans-serif;\n" +
"color:white;\n" +
"margin-left:25%;\n" +
"margin-right:2%;\n" +
"margin-top: 22%; \n" +
"font-size: 50px;   \n" +
"        }\n" +
"</style>");
            out.println("</head>");
            out.println("<body>");
            
            String gid = request.getParameter("gname");
            String name = request.getParameter("name");
            String pass = request.getParameter("pass");
            String cnfpass = request.getParameter("cnfpass");
            if(pass.equals(cnfpass))
               {  
           try
            {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
           Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
           
            Statement st= conn.createStatement();
            st.executeUpdate("insert into groups values ('"+gid+"','"+pass+"','"+name+"')");
            st.executeUpdate("create table "+gid+"( uname varchar(15),message text)");
            //out.println("<h1>Updated</h1>");
            HttpSession session = request.getSession();
                   session.setAttribute("_group", gid);
            response.sendRedirect("chatgui.jsp");
            
            }
            
            catch (Exception ex)
            {
                out.println("Exception"+ex.getMessage());
                out.print("<div class=\"errortext\">This group id is not available</div>");
                response.setHeader("Refresh", "5;url=customgroup.jsp");
                   
            }
                      
            
               }
               else
               {
                   out.print("<div class=\"errortext\"> Password Not Matched</div>");
                   response.setHeader("Refresh", "5;url=customgroup.jsp");
               }
            out.println("</body>");
            out.println("</html>");
            
          
        
            
            
            
            
            
            
            
            
            
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
