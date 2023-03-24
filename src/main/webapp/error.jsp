<%-- 
    Document   : error
    Created on : 24 Mar, 2023, 7:47:57 PM
    Author     : Dev-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sorry..</title>
        <style>
            *{
                padding: 0px;
                margin: 0px;
            }
        </style>
    </head>
    <body>
        <div style="padding: 20px; color: blue; background: #e2e2e2;">
            <h1>Sorry !! Something went wrong.</h1>
            <p><%= exception %></p>
        </div>
    </body>
</html>
