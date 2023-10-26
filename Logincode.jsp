<%-- 
    Document   : logincode
    Created on : 17 Mar, 2023, 9:04:54 PM
    Author     : Nabia
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
        try{   // exception handling try block
           String usr,pwd;  // variable declaration
           ResultSet r;
           usr=request.getParameter("txteml");  // catch value 
           pwd=request.getParameter("txtpass");  // catch value
           Class.forName("oracle.jdbc.driver.OracleDriver");    // for database connectivity
          Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","travelbliss","travelbliss");   // for database connectivity  
          String qry="select * from customerregistration where email="+"'"+usr+"'"+ "and password="+"'"+pwd+"'";  // send qry for execution with passing parameters
          PreparedStatement ps=con. prepareStatement(qry);   // create DB connection
          r=ps.executeQuery();  //execute SQL qry
          if(r.next())  // if record matched
          {
              
              session.setAttribute("cmail",r.getString("email"));  // create session
              session.setAttribute("cnm",r.getString("fullnm"));    //  create session
              response.sendRedirect("HomePage.jsp");   // open homepage
          }
          else    //if unmatched
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
