<%-- 
    Document   : index
    Created on : Mar 2, 2020, 1:47:47 PM
    Author     : sokun
--%>
<!--isThreadSafe ==true --cocurrency-->
<%@page  import = "com.TestJava, java.util.Date" info="index jsp" language ="java" autoFlush="false" buffer = "8kb" isThreadSafe="false" contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <!--session-->
        <%
            //session.setAttribute("user", "Nara
//            Thread.sleep(5000);
            out.println("Hello");
//            Thread.sleep(5000);
            out.println(out.getBufferSize()/1024);
            out.println(getServletInfo());
            
//            for(int i=0; i<5000; i++)
//            { out.println("Hello...");
//            out.flush();}

            TestJava t = new TestJava();
            out.println(t.getMessage());
            Date date = new Date();
            out.println(date);
              
        %>
    </body>
</html>
