
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.Random,java.util.ArrayList,java.io.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hi World!</h1>
        
            <%@include file="header.jsp" %>
            Random number : 
            
            <%
                Random r = new Random();
                int n=r.nextInt(100);
                out.println(n);
            %>
            
            <%= n %>
        
        
        <%!
            int a=40;
            int b=20;
            
            String name = "Dev Prasad Bashyal";
            
            public int doSum(){
                return a+ b;
            }
                
            public String reverse(){
                StringBuffer br = new StringBuffer(name);
                return br.reverse().toString();
            }
        %>
        
        <%
            out.println(a);
            out.println("<br>");
            out.println(b);
            out.println("<br>");
            out.println("Sum is "+doSum());
            out.println("<br>");
            out.println("Reverse of String is: " + reverse());
        %>
        
        <h1>Sum is: <%= doSum() %></h1>
    </body>
</html>
