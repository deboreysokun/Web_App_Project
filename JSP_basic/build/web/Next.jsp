<%-- 
    Document   : Next
    Created on : Feb 12, 2020, 11:58:04 AM
    Author     : sath_
--%>

<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h1>
            <%! String user; %>
            Welcome:    
            <%
//                System.out.println("Hello World");
//                out.println("To ");
//                String url = "index.jsp";
               user = request.getParameter("user");
               PrintWriter write =  response.getWriter();
               out.println("Hello from out object");
               write.println("Hello from write object");
//               session.setAttribute("user", user);
               pageContext.setAttribute("user", user, PageContext.APPLICATION_SCOPE);
               
            %>
            <%--<%= "My boss "+ user %>--%>
            <%= config.getInitParameter("school") %>
            <%= application.getInitParameter("city") %>
        </h1>
        
            <%--<%= this.log("") %>--%>
        <a href="success.jsp"> >Success Page</a>
    </body>
</html>
