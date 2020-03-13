<%-- 
    Document   : jstl
    Created on : Mar 13, 2020, 9:08:36 AM
    Author     : Deborey
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <c:set var="user" value="Rithy" />
        <c:set var="age" value="26" />
        <sql:setDataSource var="mydb" driver="com.mysql.cj.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/mydb?useSSL=false"
        user="root" password="root" scope="session"/>
        <sql:query dataSource="${mydb}" var="rs"> select * from test;</sql:query>
        <c:forEach items="${rs.rows}" var="row">
            <c:out value="${row.uname}"/>
            <c:out value="${row.age}"/>
        </c:forEach>
        <sql:update dataSource="${mydb}"> 
                insert into test values("Both1", "20");
        </sql:update>
        <sql:update dataSource="${mydb}"> insert into test values("Yuklin", "50");</sql:update>
        <sql:update dataSource="${mydb}">insert into test values("Brooke", "51");</sql:update>
    </body>
</html>