<%-- 
    Document   : Logout_Servlet
    Created on : 20-Mar-2016, 08:49:19
    Author     : Ruturaj
--%>

<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
         <% 
               String hostname = "localhost";
            String port = "3306";
            String dbname = "user_login";
            String username = "root";
            String password = "";
            String jdbc = String.format("jdbc:mysql://%s:%s/%s", hostname, port, dbname);
             try {
           
            Connection connection = DriverManager.getConnection(jdbc, username, password);

            Statement st = connection.createStatement();

           // String id = request.getParameter("id");  

            ResultSet rs = st.executeQuery("select * from info");
           
            ResultSetMetaData rsm = rs.getMetaData();
           while (rs.next()) {
        //   out.println(rs.getString("uname")); 
          // out.println(rs.getString("pass")); 
           //s=rs.getString("uname");
                 
                    
                
              %>
              <table>
                  <tr><td><b><%= rs.getString("biz_name")%></b></td></tr>
                  <tr><td><%= rs.getString("address")%></td></tr>
                  <tr><td><%= rs.getString("first_name")%></td></tr>
                  <tr><td><%= rs.getString("last_name")%></td></tr>
                  <tr><td><%= rs.getString("email")%></td></tr>
                  <tr><td><%= rs.getString("contact_no")%></td></tr>
                  
              </table>
              
              
              <%
              //  out.println("welcome " + rs.getString("uname"));
              //  out.println("<a href='logout.jsp'>Log out</a>");
               
                }
               // response.sendRedirect("home.html");
            } 
           
             
             catch(Exception e){
                 out.println(e);
             }
        %>
    </body>
</html>
