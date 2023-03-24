
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hi World!</h1>
        
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
            out.println(b);
            out.println("Sum is "+doSum());
            out.println(reverse());
        %>
        
        <h1>Sum is: <%= doSum() %></h1>
    </body>
</html>
