<%-- 
    Document   : index
    Created on : Jan 15, 2020, 2:27:17 PM
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
        <form action="ValidateServlet" method="POST">
            UserName: <input type="text" name="user"/>
            Password: <input type="password" name="pass" />
            <input type="submit" value="login"/>
        </form>
    </body>
</html>
