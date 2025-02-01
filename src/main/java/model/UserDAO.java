package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import utils.DBConnection;

public class UserDAO {
    
    public boolean saveUser(User user) {
        String query = "INSERT INTO homework_3 (email, password, birthday, new_student, college, major, favorite_color, terms_accepted) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection connection = DBConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {

            preparedStatement.setString(1, user.getEmail());
            preparedStatement.setString(2, user.getPassword());  // Be sure to hash the password
            preparedStatement.setString(3, user.getBirthday());
            preparedStatement.setBoolean(4, user.isNewStudent());
            preparedStatement.setString(5, user.getCollege());
            preparedStatement.setString(6, user.getMajor());
            preparedStatement.setString(7, user.getFavoriteColor());
            preparedStatement.setBoolean(8, user.isTermsAccepted());

            int result = preparedStatement.executeUpdate();
            return result > 0;  // Return true if data was saved successfully
        } catch (SQLException e) {
            e.printStackTrace();
            return false;  // Return false if there was an error
        }
    }
}
