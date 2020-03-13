<%-- 
    Document   : index
    Created on : Mar 13, 2020, 8:58:28 AM
    Author     : Deborey
--%>
<!--SQL JSTL using PreparedStatement-->
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
        <sql:setDataSource
            var="mydb"
            driver="com.mysql.jdbc.Driver"
            url="jdbc:mysql://localhost:3306/mydb?useSSL=false"
            user="root"
            password="root"/>
        <sql:transaction dataSource="${mydb}">
        <sql:update > insert into test values (?,?);
            <sql:param value="Oppa"/>
            <sql:param value="54"/>
        </sql:update>
        <sql:update > insert into test values (?,?);
            <sql:param value="Keat"/>
            <sql:param value="54"/>
        </sql:update>
        <sql:update >insert into test values (?,?);
            <sql:param value="Yanty"/>
            <sql:param value="54"/>
        </sql:update>
        </sql:transaction>

        <sql:query var="rs" dataSource="${mydb}">
        select * from test;
        </sql:query>
        <table>
            <tr>
                <th>Name</th>
                <th>Age</th>
            </tr>
        <c:forEach var="row" items="${rs.rows}">
        <tr>
            <td><c:out value="${row.uname}"/></td>
            <td>${row.age}</td>
        </tr>
        </c:forEach>
        </table>
    </body>
</html>