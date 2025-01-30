package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import model.User;


@WebServlet("/submitForm")
public class SchoolForm extends HttpServlet {
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    User user = new User();

    user.setEmail(request.getParameter("email"));
    user.setPassword(request.getParameter("password"));
    user.setBirthday(request.getParameter("birthday"));
    user.setNewStudent("yes".equals(request.getParameter("newStudent")));
    user.setCollege(request.getParameter("college"));
    user.setMajor(request.getParameter("major"));
    user.setFavoriteColor(request.getParameter("favoriteColor"));
    user.setTermsAccepted(request.getParameter("terms") != null);

    // Save to database
    UserDao.saveUser(user);

    // Forward to JSP
    request.setAttribute("user", user);
    request.getRequestDispatcher("submit.jsp").forward(request, response);
  }
}
