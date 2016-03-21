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

            ResultSet rs = st.executeQuery("select uname,pass from user_login");
           
            if (rs.next()) {
                //s=rs.getString("uname");
              %>
              <table>
                  <tr><td><%= rs.getString("pass")%></td></tr>
                  
              </table>
              
              
              <%
                out.println("welcome " + rs.getString("uname"));
                out.println("<a href='logout.jsp'>Log out</a>");
               
                
               // response.sendRedirect("home.html");
            } else {
                out.println("Invalid password <a href='index.jsp'>try again</a>");
                 response.sendRedirect("Login_Form.html");
            }

           
             }
             catch(Exception e){
                 out.println(e);
             }
        %>