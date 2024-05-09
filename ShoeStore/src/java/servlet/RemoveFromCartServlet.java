package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import MA_package.MenProduct;
import java.util.List;

public class RemoveFromCartServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        List<MenProduct> cartList = (List<MenProduct>) request.getSession().getAttribute("cart-list");
        for (MenProduct product : cartList) {
            if (product.getId().equals(id)) {
                cartList.remove(product);
                break;
            }
        }
        response.sendRedirect("cart.jsp");
    }
}