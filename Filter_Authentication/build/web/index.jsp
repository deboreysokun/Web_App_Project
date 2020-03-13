<%-- 
    Document   : index
    Created on : Feb 6, 2020, 12:04:19 PM
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
        <form action="LoginServlet" method="POST">
            Name:<input type="text" name="user"/>
            Password:<input type="password" name="pass"/>
            <input type="submit" value="Log in"/>
        </form>
    </body>
</html>
