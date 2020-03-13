<%-- 
    Document   : success
    Created on : Feb 12, 2020, 1:51:17 PM
    Author     : sath_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
//            String user = (String) application.getAttribute("user");
            String user = (String) pageContext.getAttribute("user", PageContext.APPLICATION_SCOPE);
        %>
        <%= user+"!" %>
    </body>
</html>
