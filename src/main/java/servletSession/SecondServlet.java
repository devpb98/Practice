
package servletSession;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class SecondServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        resp.setContentType("text/html; charset=UTF-8");
        try(PrintWriter out = resp.getWriter()){
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet 2</title>");
            out.println("</head>");
            out.println("<body>");
 
            Cookie[] cookie = req.getCookies();
            boolean userExist = false;
            String name = "";
            
            if(cookie == null){
                out.println("<h1 href=index.html>You are new user. Please navigate to home page.</h1>");
                return;
            }else{
                for (Cookie c: cookie){
                    String tName = c.getName();
                    if(tName.equals("user")){
                        userExist=true;
                        name = c.getValue();
                        System.out.println(c.getValue());
                    }
                    
                }
            }
            
            if(userExist){
                out.println("<h1>Hello "+name+", Welcome back</h1>");
            }
            
            

           out.println("</body>");
           out.println("</html>");
        }
    }
}
