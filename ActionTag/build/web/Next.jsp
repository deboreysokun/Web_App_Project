<%-- 
    Document   : Next
    Created on : Mar 10, 2020, 10:52:58 AM
    Author     : sokun
--%>

<%@page import="com.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%--    <jsp:forward page="test.jsp">
            <jsp:param name="userName" value="${param.user}"/>
        </jsp:forward>
        <%= "After forwarding..."%>  
    --%>
    <%--
        Student dto = new Student();
        String name = request.getParameter("user");
        String age = request.getParameter("age");
        
        dto.setName(name);
        dto.setAge(age);
        session.setAttribute("dto", dto);
    --%>
    <%-- Below jsp code to replace the above Java code --%>
    <jsp:useBean id="dto" class="com.Student" scope="session"/>
    <jsp:setProperty name="dto" property="name" value="${param.user}"/>
    <jsp:setProperty name="dto" property="age" value="${param.age}"/>
    <jsp:forward page="test.jsp"/>
    </body>
</html>
