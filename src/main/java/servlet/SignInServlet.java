package servlet;

import entity.User;
import exception.user.UserException;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/signin")
public class SignInServlet extends HttpServlet {
    private UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("user") == null){
            getServletContext().getRequestDispatcher("/WEB-INF/signin.jsp").forward(req,resp);
        }else{
            resp.getWriter().println("You are already in system." +
                    "Please log out to sign in or register new account.");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            String username = req.getParameter("username");
            String password = req.getParameter("password");

            try {
                User userInSession = userService.getLoggedInUser(username,password);
                req.getSession().setAttribute("user", userInSession);
                req.setAttribute("message","You are logged in system.");
            } catch (UserException e) {
                req.setAttribute("message",e.getMessage());
            }
            getServletContext().getRequestDispatcher("/WEB-INF/signin.jsp").forward(req,resp);
    }
}
