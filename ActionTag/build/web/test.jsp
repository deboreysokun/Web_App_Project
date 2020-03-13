<%-- 
    Document   : test
    Created on : Mar 10, 2020, 10:50:48 AM
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
        <h1>Testing!</h1>
        ${param.userName}
        
    <jsp:useBean id="dto" class="com.Student" scope="session"/>
    <jsp:getProperty name="dto" property="name"/>
    <jsp:getProperty name="dto" property="age"/>
    
    </body>
</html>
