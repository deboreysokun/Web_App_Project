
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <%@include file="Footer.jsp" %>
        ${10+5}
        ${"Nara"}
        
        <form action="NextServlet" method="POST">
<!--            <input type="text" name="username">-->
            <input type="submit" value="submit">
        </form>
    </body>
</html>
