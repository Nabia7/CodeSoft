<%-- 
    Document   : custreg
    Created on : 3 Mar, 2023, 9:44:55 PM
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
        <%@page import="java.io.*,java.sql.*" %>
        <%! String fnm,email,pwd,cpwd,phnno; %>    // variable declaration
        <%
        try     // exception handling try block
        {
            fnm=request.getParameter("txtfullnm");   //catch value
            email=request.getParameter("txtemail");     //catch value
            pwd=request.getParameter("txtpassword");    //catch value
            cpwd=request.getParameter("txtcpassword");    //catch value
            phnno=request.getParameter("txtphoneno");    //catch value
          Class.forName("oracle.jdbc.driver.OracleDriver");               // for database connectivity
          Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","travelbliss","travelbliss");   // for database connectivity
          String qry="insert into customer values(?,?,?,?,?)";   // send qry for execution
          PreparedStatement ps=con. prepareStatement(qry);    //create DB connection
          ps.setString(1, fnm);    //passing parameter
          ps.setString(2, email);    //passing parameter
          ps.setString(3, pwd);     //passing parameter
          ps.setString(4, cpwd);    //passing parameter
          ps.setString(5, phnno);    //passing parameter
          response.sendRedirect("HomePage.jsp");   //open homepage
          ps.executeQuery();   //execute SQL qry
          ps.close();       //close connection
          con.close();     //close connection
          
            
        }
        catch(Exception ex)    // exception handling catch block
        {
             out.println(ex);

        }
         %>
    </body>
</html>
