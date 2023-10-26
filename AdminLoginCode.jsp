<%-- 
    Document   : AdminLoginCode
    Created on : 10 Apr, 2023, 3:23:43 AM
    Author     : Nabiya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <%@page import="java.sql.*" %>
        <%
        try{  // exception handling try block
           String usr,pwd;  // variable declaration
           ResultSet r;
           usr=request.getParameter("txt"); // catch value 
           pwd=request.getParameter("pass"); // catch value 
           Class.forName("oracle.jdbc.driver.OracleDriver");   // for database connectivity
          Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","travelbliss","travelbliss");   // for database connectivity
          String qry="select * from admin where usernm="+"'"+usr+"'"+" and passowrd="+"'"+pwd+"'"+""; // send qry for execution with passing parameters
          PreparedStatement ps=con. prepareStatement(qry);  // create DB connection
          r=ps.executeQuery();  //execute SQL qry
           if(r.next())  // if record matched
          {
              response.sendRedirect("AdminHome.jsp");   // open homepage
          }
          else
          {
        %>
        <div>
            <table>
                <td>
                    <%= "Wrong Current Password"%>
                </td>
            </table>
        </div>
                <%
                            }    
      
                                          
                            }
                     catch(Exception ex)  //exception handling catch block
                     {
                       out.println(ex);
                     }
                %>
        
    </body>
</html>
