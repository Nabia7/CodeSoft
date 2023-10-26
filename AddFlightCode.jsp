<%-- 
    Document   : AddFlightDetails
    Created on : 5 Mar, 2023, 6:35:47 PM
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
        <%! int fno; String fnm,deptime,arvltime,sor,dest,dur,fare; %>  // variable declaration
        <%
        try   // exception handling try block
        {
              // catching values
            fno=Integer.parseInt(request.getParameter("txtfno"));
            fnm=request.getParameter("txtfnm");
            deptime=request.getParameter("txtdept");
            arvltime=request.getParameter("txtarrt");
            sor=request.getParameter("txtsor");
            dest=request.getParameter("txtdes");
            dur=request.getParameter("txtdur");
            fare=request.getParameter("txtfare");
            
          Class.forName("oracle.jdbc.driver.OracleDriver");    // for database connectivity
          Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","travelbliss","travelbliss");    // for database connectivity
          String qry="insert into addflight values(?,?,?,?,?,?,?,?)";  // send qry for execution 
          PreparedStatement ps=con. prepareStatement(qry);   //create DB connection
          ps.setInt(1, fno);   //passing parameter
          ps.setString(2, fnm);  //passing parameter
          ps.setString(3, sor);  //passing parameter
          ps.setString(4, dest);  //passing parameter
          ps.setString(5, fare);  //passing parameter
          ps.setString(6, deptime);  //passing parameter
          ps.setString(7, arvltime);  //passing parameter
          ps.setString(8, dur);  //passing parameter
          response.sendRedirect("HomePage.jsp");  // open homepage
          ps.executeQuery();  //execute SQL qry
          ps.close();  //close connection
          con.close(); //close connection
        }
        catch(Exception ex)  // exception handling catch block
        {
             out.println(ex);
        }
         %>
    </body>
</html>
