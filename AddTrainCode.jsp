<%-- 
    Document   : AddTrainDetails
    Created on : 7 Mar, 2023, 9:52:16 PM
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
        <%! int tno; String tnm,deptime,arvltime,sor,dest,rdays,fare; %>  // variable declaration
        <%
        try  // exception handling try block
        {
             // catching values
            tno=Integer.parseInt(request.getParameter("txttno"));
            tnm=request.getParameter("txttnm");
            deptime=request.getParameter("txtdept");
            arvltime=request.getParameter("txtarrt");
            sor=request.getParameter("txtsor");
            dest=request.getParameter("txtdes");
            rdays=request.getParameter("txtrun");
            fare=request.getParameter("txtfare");
            
          Class.forName("oracle.jdbc.driver.OracleDriver");   // for database connectivity
          Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","travelbliss","travelbliss");  // for database connectivity
          String qry="insert into addtrain values(?,?,?,?,?,?,?,?)";  // send qry for execution 
          PreparedStatement ps=con. prepareStatement(qry);   //create DB connection
          ps.setInt(1, tno);  //passing parameter
          ps.setString(2, tnm);  //passing parameter
          ps.setString(3, deptime);  //passing parameter
          ps.setString(4, arvltime);  //passing parameter
          ps.setString(5, sor);  //passing parameter
          ps.setString(6, dest);  //passing parameter
          ps.setString(7, rdays);  //passing parameter
          ps.setString(8, fare);  //passing parameter
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
