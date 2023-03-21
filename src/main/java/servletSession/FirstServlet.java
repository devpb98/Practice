
package servletSession;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class FirstServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out = resp.getWriter();
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Servlet 1</title>");
        out.println("\n" +
"        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">");
        out.println("</head>");
        out.println("<body>");
        
        String name = req.getParameter("user_name");
        out.println("<h1>Hi "+req.getParameter("user_name")+", Welcome.</h1>");
        out.println("<a href=SecondSessionServlet>Second Servlet</a>");
        
        
        Cookie c = new Cookie("user", name.trim().toString());
        resp.addCookie(c);
       
        out.println("</body>");
        out.println("</html>");
    }
    
}
