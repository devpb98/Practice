<%-- 
    Document   : jstl
    Created on : 24 Mar, 2023, 7:06:13 PM
    Author     : Dev-PC
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page errorPage="error.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello Dev!</h1>
        <hr>
        <c:set var="name" value="Dev Prasad Bashyal"></c:set>
        <c:out value="${name}"></c:out>
        
        <%!
            int a= 40;
            int b= 0;
        %>
        
        <%
            int division = a/b;
        %>
        
        <h2>Division : <%= division %> </h2>
            
    </body>
</html>
