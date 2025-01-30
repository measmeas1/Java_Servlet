package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import model.User;
import util.DB;
public class UserDao {
  public static void saveUser(User user){
    String sql = "INSERT INTO homework_3 (email, password, birthday, new_student, college, major, favorite_color, terms_accepted) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    try (Connection con = DB.getConnection();
        PreparedStatement stmt = con.prepareStatement(sql);) {
        
          stmt.setString(1, user.getEmail());
          stmt.setString(2, user.getPassword());
          stmt.setString(3, user.getBirthday());
          stmt.setBoolean(4, user.isNewStudent());
          stmt.setString(5, user.getCollege());
          stmt.setString(6, user.getMajor());
          stmt.setString(7, user.getFavoriteColor());
          stmt.setBoolean(8, user.isTermsAccepted());

          stmt.executeUpdate();
    } catch (Exception e) {
      e.printStackTrace();
    }
  }
}
