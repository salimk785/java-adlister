import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "MarcoCount", urlPatterns = "/Count")
public class count extends HttpServlet {
    int count = 0;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String name = request.getParameter("name");

        if(name == null) {
            response.setContentType("text/html");
            response.getWriter().println("<h3>Hello Codeup!</h3>");
            name = "Hello World!";
        }else{
            response.getWriter().println("Hello, " + name + "!");

        }
        count++;
        response.getWriter().println("I visited the page: " + count + " times.");

    }
}
