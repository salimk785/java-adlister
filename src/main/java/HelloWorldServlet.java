import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "MarcoHelloWorld", urlPatterns = "/Hello")
public class HelloWorldServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {


        String name = request.getParameter("name");

        if(name == null){
            name = "Hello World!";

            response.getWriter().println("<h1>Hello World!</h1>");
            response.getWriter().println("<h1>Hello Codeup!</h1>");
        }


    }
}
