<%-- 
    Document   : AddPackageDetails
    Created on : 7 Mar, 2023, 10:22:10 PM
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
        <%! int pckid; String pcknm,pcktype,sor,dest,desc,dur,mot,bugt; %>  // variable declaration
        <%
        try  // exception handling try block
        {
             // catching values
            pckid=Integer.parseInt(request.getParameter("txtpid"));
            pcknm=request.getParameter("txtpnm");
            pcktype=request.getParameter("ptype");
            sor=request.getParameter("from");
            dest=request.getParameter("to");
            desc=request.getParameter("des");
            dur=request.getParameter("txtdur");
            mot=request.getParameter("txtmot");
            bugt=request.getParameter("txtbudt");
            
          Class.forName("oracle.jdbc.driver.OracleDriver");   // for database connectivity
          Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","travelbliss","travelbliss");   // for database connectivity
          String qry="insert into addpackage values(?,?,?,?,?,?,?,?,?)";  // send qry for execution 
          PreparedStatement ps=con. prepareStatement(qry);   //create DB connection
          ps.setInt(1, pckid);  //passing parameter
          ps.setString(2, pcknm);  //passing parameter
          ps.setString(3, pcktype);  //passing parameter
          ps.setString(4, sor);  //passing parameter
          ps.setString(5, dest);  //passing parameter
          ps.setString(6, desc);  //passing parameter
          ps.setString(7, dur);  //passing parameter
          ps.setString(8, mot);  //passing parameter
          ps.setString(9, bugt);  //passing parameter
          response.sendRedirect("HomePage.jsp");  // open homepage
          ps.executeQuery();  //execute SQL qry
          ps.close();  //close connection
          con.close();  //close connection
        }
        catch(Exception ex)  // exception handling catch block
        {
             out.println(ex);
        }
         %>
    </body>
</html>
