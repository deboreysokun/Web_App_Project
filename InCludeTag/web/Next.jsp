<%-- 
    Document   : Next
    Created on : Mar 3, 2020, 10:11:14 AM
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
        <!--Java Code-->
        <%--
            String name = request.getParameter("username");
            out.println(name);
        --%>
        
        <%=request.getParameter("username")%>
        <!--EL-->
        ${param.username}
<!--        sessionScope: the explicit object of the expression language to access the element from the session.-->
        ${sessionScope.studentList[1]}
    </body>
</html>
