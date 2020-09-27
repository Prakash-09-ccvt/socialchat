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
public class groupfinder extends HttpServlet {

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
          
            String _group = request.getParameter("group");
            String _pass = request.getParameter("password");
            
            try
            {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
            Statement st= conn.createStatement();
            ResultSet rs =st.executeQuery("select * from groups where gid ='"+_group+"'");
            if(rs.next())
            {
               if(rs.getString(2).equals(_pass))
               {
                   //ut.println("<h1>"+rs.getString(3)+"</h1>");
                   HttpSession session = request.getSession();
                   session.setAttribute("_group", _group);
                   
response.sendRedirect("chatgui.jsp");                   
//response.SendRedirect("http://localhost:8080/socialchat/chatwindow.jsp");
//out.println("<a href=\"http://localhost:8080/socialchat/chatwindow.jsp\">Link</a>");
               }   
                else
               {
                   out.print("<div class=\"errortext\">Incorrect Password</div>");
                   response.setHeader("Refresh", "5;url=group.jsp");
               }
            
            }
            }
            
            catch (Exception ex)
            {
                out.println("Exception"+ex.getMessage());
                response.setHeader("Refresh", "5;url=group.jsp");
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            //out.println("<h1>Servlet groupfinder at " + request.getContextPath() + "</h1>");
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
