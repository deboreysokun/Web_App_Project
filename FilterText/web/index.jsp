<%-- 
    Document   : index
    Created on : Feb 4, 2020, 9:45:32 AM
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
        <form action="AccountFilter" method="POST">
            <input type="text" name="user">
            Choose your role:</br><select name="role">
                <option value="admin">Admin</option>
                <option value="hr">HR</option>
                <option value="teacher">Teacher</option>
            </select>
            <input type="submit" value="Login"/>         
        </form>
    </body>
</html>
