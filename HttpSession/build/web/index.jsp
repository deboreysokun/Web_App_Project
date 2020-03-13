<%-- 
    Document   : index
    Created on : Jan 15, 2020, 2:07:57 PM
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
        <h1>Hello World!</h1>
        <form action="ValidateServlet" method="post">
            <h1>
                Username:<input type="text" name="user">
                Password: <input type="password" name="pass"> 
                Login<input type="submit" name="Login">
            </h1>          
        </form>
    </body>
</html>
