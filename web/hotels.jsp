<%-- 
    Document   : hotels
    Created on : 20-Mar-2016, 10:40:09
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
        
         <%@include file="header.html" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body class="custom_image_bg">
    
    <!-- Navigation -->
    <a id="menu-toggle" href="#" class="btn btn-dark btn-lg toggle"><i class="fa fa-bars"></i></a>
    <nav id="sidebar-wrapper">
        <ul class="sidebar-nav">
            <a id="menu-close" href="#" class="btn btn-light btn-lg pull-right toggle"><i class="fa fa-times"></i></a>
            <li class="sidebar-brand">
                <a href="#top"  onclick = $("#menu-close").click(); >Start Bootstrap</a>
            </li>
            <li>
                <a href="#top" onclick = $("#menu-close").click(); >Home</a>
            </li>
            <li>
                <a href="#about" onclick = $("#menu-close").click(); >About</a>
            </li>
            <li>
                <a href="#services" onclick = $("#menu-close").click(); >Services</a>
            </li>
            <li>
                <a href="#portfolio" onclick = $("#menu-close").click(); >Portfolio</a>
            </li>
            <li>
                <a href="#contact" onclick = $("#menu-close").click(); >Contact</a>
            </li>
            <li> 
                 <a href="Logout_Servlet.jsp" onclick = $("#menu-close").click(); >Log Out</a> 
            </li>
        </ul>
    </nav>
    
     <section id="services" class="services bg-primary">
         <div class="container">
             <img src= "img/mylogo.png" class="img-responsive" /> 
             
         </div>
     </section>
     
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

            String id = request.getParameter("id");  

            ResultSet rs = st.executeQuery("select * from info");
           boolean val = true;
            
            ResultSetMetaData rsm = rs.getMetaData();
           while (rs.next()) {
        //   out.println(rs.getString("uname")); 
          // out.println(rs.getString("pass")); 
           //s=rs.getString("uname");
                
             if(val==true){
                 
             %>
             
             
             
    
     <div class="col-lg-2 custom_content"> 
         <h2>Popular Categories</h2>
                <ul class="navs">
                    <li><a href="#">Hotels</a></li>
                    <li><a href="#">Coffee Shops</a></li>
                    <li><a href="#">Banks</a></li>
                    <li><a href="#">Taxi Service</a></li>
                    <li><a href="#">University</a></li>
                    <li><a href="#">Hospitals</a></li>
                    <li><a href="#">Shopping</a></li>
                    <li><a href="#">Bus Service</a></li>
                    <li><a href="#">Cinema</a></li>
                    <li><a href="#">Child Care</a></li>
                    <li><a href="#">Phone Services</a></li>
                    <li><a href="#">Emergency Services</a></li>
                  </ul>  
              
              </div>         
             
             
             <%
                 val = false;
             }   
              %>
    
              
              <div class="container-fluid description ">
              <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-4">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/<%= rs.getString("image")%>"/>
                </div>
                
                <div class="col-lg-4 col-md-8 col-sm-4 detail  ">
                    <p><h2><%= rs.getString("biz_name")%><br></h2>
                        <%= rs.getString("address")%><br>
                        <%= rs.getString("first_name")%><br>
                        <%= rs.getString("email")%><br>
                    <%= rs.getString("contact_no")%></p>
                </div>
                
<!--              <table class="center_align">
                  <tr><td> </td></tr>
                  <tr><td><b><%= rs.getString("biz_name")%></b></td></tr>
                  <tr><td><%= rs.getString("address")%></td></tr>
                  <tr><td><%= rs.getString("first_name")%></td></tr>
                  <tr><td><%= rs.getString("last_name")%></td></tr>
                  <tr><td><%= rs.getString("email")%></td></tr>
                  <tr><td><%= rs.getString("contact_no")%></td></tr>
                  <hr class="center_align"> 
               </table>-->
              </div>
                  <hr>

             </div>
              </div> 
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
 
      <%@include file="footer.html" %>
    </body>
    
</html>
