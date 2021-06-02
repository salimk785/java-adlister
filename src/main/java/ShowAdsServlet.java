import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
@WebServlet(name = "ShowAdsServlet", urlPatterns = "/ads")
public class ShowAdsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //"Hey Servlet, go instantiate from that getProductsDao method I set up!" == get a DAO object
        Ad ListAdsDao = DaoFactory.getListAdsDao();
        //Let's get all the products

        List<Ad> showAds = ListAdsDao.all();

        //Send all the products up to the JSP!
        request.setAttribute("Ads", showAds);
        request.getRequestDispatcher("ads/Index.jsp").forward(request, response);


}
}
