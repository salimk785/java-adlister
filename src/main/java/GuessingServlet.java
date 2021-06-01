import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "GuessingServlet", urlPatterns = "/guess")
public class GuessingServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.getRequestDispatcher("/guessinggame/guess.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int number = Integer.parseInt(request.getParameter("Num"));
        if(number >= 1 && number <= 3) {
            response.sendRedirect("/correct");
        }else {
            response.sendRedirect("/incorrect");


        }

    }


}