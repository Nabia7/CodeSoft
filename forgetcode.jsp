<%-- 
    Document   : forgetcode
    Created on : 17 Mar, 2023, 9:38:22 AM
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
         <%@page import="java.util.*,javax.mail.*" %>
         <%@page import="javax.mail.internet.*" %>
         
         <%! String rmail; %>    // variable declaration
         <%
             try{   // exception handling try block
             rmail=request.getParameter("txteml");  // catch value 
            Class.forName("oracle.jdbc.driver.OracleDriver");    // for database connectivity
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","travelbliss","travelbliss");    // for database connectivity
           String qry="select * from client where emailid="+"'"+rmail+"'";  // send qry for execution with passing parameters
           PreparedStatement ps=con. prepareStatement(qry);   // create DB connection
           ResultSet rs=ps.executeQuery();  //execute SQL qry
            if(rs.next())  // if record matched
            { 
                
            final String messg = rs.getString("paswd");
            final String from = "nabia07092002@gmail.com";
            final String pass = "nab070902";
            String host = "smtp.gmail.com";
            String to=rmail;
            String subject="Password Recovery";
            
            //Creating Properties
             Properties props = new Properties();
            props.put("mail.smtp.host",host);
            props.put("mail.transport.protocol", "smtp");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.smarttls.enable", "ture");
            props.put("mail.user", from);
            props.put("mail.password", pass);
            props.put("mail.port", "587");
            
            //Authorisation Code
            Session mailSession = Session.getInstance(props, new javax.mail.Authenticator () {
           
             @Override
            
            protected PasswordAuthentication getPasswordAuthentication () {
                
                return new PasswordAuthentication(from, pass);
                        }
        
        });
           
            //Mail sending Code
                MimeMessage message = new MimeMessage(mailSession);
                message.setFrom(new InternetAddress(from));
                message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
                message.setSubject(subject);
                message.setText(messg);
                
                //Send message
                Transport transport = mailSession.getTransport();
                transport.connect();
                transport.sendMessage(message, message.getRecipients(Message.RecipientType.TO));
                transport.close();
                out.println("Your Password sent to mail Successfully.....");
            }
                else    //if unmatched
                out.println("EmailID Not Registered");
            
             } catch(MessagingException mex)   // exception handling catch block
             {
                 out.println(mex);
             }
         %>
    </body>
</html>
