package controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;
import model.UserDAO;

public class UserController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get form data from the request
        String email = request.getParameter("email");
        String password = request.getParameter("password");  // Consider hashing the password
        String birthday = request.getParameter("birthday");
        boolean newStudent = Boolean.parseBoolean(request.getParameter("newStudent"));
        String college = request.getParameter("college");
        String major = request.getParameter("major");
        String favoriteColor = request.getParameter("favoriteColor");
        boolean termsAccepted = Boolean.parseBoolean(request.getParameter("termsAccepted"));

        // Create a User object and set its properties
        User user = new User();
        user.setEmail(email);
        user.setPassword(password); 
        user.setBirthday(birthday);
        user.setNewStudent(newStudent);
        user.setCollege(college);
        user.setMajor(major);
        user.setFavoriteColor(favoriteColor);
        user.setTermsAccepted(termsAccepted);

        // Save the user to the database
        UserDAO dao = new UserDAO();
        boolean isSaved = dao.saveUser(user);

        // Set attributes for the result page
        request.setAttribute("isSaved", isSaved);  // This tells the result page whether it was successful
        request.setAttribute("user", user);  // This will pass the user object to the JSP

        // Forward to the result page
        request.getRequestDispatcher("/result.jsp").forward(request, response);
    }
}
