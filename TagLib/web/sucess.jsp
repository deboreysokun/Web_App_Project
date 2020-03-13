<%-- 
    Document   : sucess
    Created on : Mar 11, 2020, 1:54:31 PM
    Author     : sokun
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Sucess</h1>
        ${sessionScope.mark}
        ${param.color}
        <c:forEach var="i" begin="0" end="10" step="2">
            <c:out value="${i}"/>
        </c:forEach>
        <c:forEach var="temp" items="${sessionScope.list}">
            <c:out value="${temp}"/>
        </c:forEach>
        
        <c:forTokens var="tempo" delims="," items="test,test1,test3">
            <c:out value="${tempo}"/>
        </c:forTokens>
        
        <c:catch var="e">
            <%
                int c = 200/0;
            %>
        </c:catch>
        <c:out value="${e}"/>
        <c:if test="${e ne null}">
            <c:out value="Exception..."/>
        </c:if>
              
    </body>
</html>
