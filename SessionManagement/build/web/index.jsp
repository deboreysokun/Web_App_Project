<%-- 
    Document   : index
    Created on : Jan 15, 2020, 11:48:54 AM
    Author     : sokun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="ValidateServlet" method="post">
           Username: <input type="text" name="user">
           Email Address:<input type="email" name="email">
           Login <input type="submit" name="login">
        </form>
    </body>
</html>
