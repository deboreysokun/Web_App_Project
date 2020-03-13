<%-- 
    Document   : index
    Created on : Feb 6, 2020, 11:40:20 AM
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
        <form action="ConversionServlet" method="POST">
            USD: <input type="number" name="currency"/>
            <button>Submit</button>
            
        </form>
    </body>
</html>
