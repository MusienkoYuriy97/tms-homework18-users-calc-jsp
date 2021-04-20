package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/logout")
public class LogOutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("user") != null) {
            getServletContext().getRequestDispatcher("/WEB-INF/logout.jsp").forward(req,resp);
        }else {
            resp.getWriter().println("Please sign in or register new account.");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getSession().invalidate();
        req.setAttribute("message", "Successfully log out from system.");
        getServletContext().getRequestDispatcher("/WEB-INF/logout.jsp").forward(req, resp);
    }
}
