<%-- 
    Document   : index
    Created on : Feb 6, 2020, 11:40:09 AM
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
        <form action="NewServlet" method="POST">
            USD: <input type="text" name="amount"/>
            <input type="submit" value="Convert"/>
        </form>
    </body>
</html>
