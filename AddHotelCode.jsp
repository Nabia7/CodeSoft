<%-- 
    Document   : save
    Created on : 31 Mar, 2023, 12:30:39 AM
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
         <%@page import="java.io.*,java.sql.*,java.util.*,org.apache.commons.fileupload.disk.DiskFileItemFactory,org.apache.commons.fileupload.servlet.ServletFileUpload,org.apache.commons.fileupload.FileItem" %>
           <%! int id; %>
           <%
               try   // exception handling try block
               
               {  DiskFileItemFactory factory = new DiskFileItemFactory();
                    ServletFileUpload sfu =new ServletFileUpload(factory);
                    
                    if(! ServletFileUpload.isMultipartContent(request)){
                        out.println("Sorry, No file Selected");
                        return;
                    }
                      //parse request
                    List items = sfu.parseRequest(request);
                    FileItem hid = (FileItem) items.get(0);
                    String hotelid = hid.getString();
                    id=Integer.parseInt(hotelid);
                    
                     FileItem hname = (FileItem) items.get(1);
                    String  name = hname.getString();
                    System.out.println(name);
                    
                     FileItem hloc = (FileItem) items.get(2);
                    String  locat = hloc.getString();
                    
                     FileItem roomf = (FileItem) items.get(3);
                    String  romf = roomf.getString();
                    
                     FileItem hrat = (FileItem) items.get(4);
                    String  rating = hrat.getString();
                    
                     FileItem ham = (FileItem) items.get(5);
                    String  amn = ham.getString();
                    
                     FileItem phone = (FileItem) items.get(6);
                    String  phno = phone.getString();
                    
                     FileItem price = (FileItem) items.get(7);
                    String  pric = price.getString();
                    
                      //get uploaded file/pic
                    FileItem file = (FileItem) items.get(8);
                    
                     Class.forName("oracle.jdbc.driver.OracleDriver");   // for database connectivity
                     Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","travelbliss","travelbliss");   // for database connectivity
                     String qry="insert into addhotel values(?,?,?,?,?,?,?,?,?)"; // send qry for execution 
                     PreparedStatement ps=con. prepareStatement(qry);  //create DB connection
                     ps.setInt(1, id);  //passing parameter
                     ps.setString(2, name);  //passing parameter
                     ps.setString(3, locat);  //passing parameter
                     ps.setString(4, romf);  //passing parameter
                     ps.setString(5, rating);  //passing parameter
                     ps.setString(6, amn);  //passing parameter
                     ps.setString(7, phno);  //passing parameter
                     ps.setString(8, pric);  //passing parameter
                     ps.setBinaryStream(9, file.getInputStream(), (int)file.getSize());  //passing parameter
                     ps.executeUpdate();  //execute SQL qry
                     out.println("Record Saved");
}catch (Exception ex)  // exception handling catch block
               {
                   out.println(ex);
               }
           %>
                            
    </body>
</html>
