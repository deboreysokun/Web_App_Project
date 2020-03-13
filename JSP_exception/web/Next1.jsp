<%-- 
    Document   : Next1
    Created on : Feb 14, 2020, 9:14:32 AM
    Author     : sath_
--%>

<%@page errorPage="vireak.jsp" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
          String user = request.getParameter("user");
          if (user.equals("comino")){
              throw new NullPointerException();
          }
        %>
        <h1>Welcome Guy</h1>
    </body>
</html>
