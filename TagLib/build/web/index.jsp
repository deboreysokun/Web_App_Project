<%-- 
    Document   : index
    Created on : Mar 11, 2020, 11:41:39 AM
    Author     : sokun
--%>
<%@page import="java.util.ArrayList"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:set var="mark" value="100" scope="session"/>
        <h1>Hello World!</h1>
        Before remove: <c:out value="${sessionScope.mark}"/> <br>
        
<!--   Removing the variable from the memory-->
        <c:remove var="mark" scope="session"/>
        After remove: <c:out value="${sessionScope.mark}"/>
<       
<%--    <c:choose>
            <c:when test="${mark gt 90 and mark le 100}">
                <c:out value="Distinction"/>
            </c:when>
            <c:when test="${mark>80}">
                <c:out value="First Class" />
            </c:when>
            <c:when test="${mark  ge  50}">
                <c:out value="Second Class"/>
            </c:when>
            <c:when test="${mark>90}"></c:when>

            <c:otherwise>
                <c:out value="Kak"/>
            </c:otherwise>
        </c:choose>  --%>

        <c:import url="footer.jsp"/>
        <c:import url="header.jsp"/>
        
        <c:url var="url1" value="sucess.jsp">
             <c:param name="color" value="Blue"/>
        </c:url>
        <%
            ArrayList<Integer> list = new ArrayList<Integer>();
            list.add(1);
            list.add(2);
            list.add(123);
            list.add(1234);
            list.add(456);
            
            session.setAttribute("list", list);
        %>
        <c:redirect url="${url1}"/>
        
       
                   
    </body>
</html>
