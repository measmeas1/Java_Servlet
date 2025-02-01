package model;

public class User {
    private String email;
    private String password;
    private String birthday;
    private boolean newStudent;
    private String college;
    private String major;
    private String favoriteColor;
    private boolean termsAccepted;

    // Getters and setters
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }

    public String getBirthday() { return birthday; }
    public void setBirthday(String birthday) { this.birthday = birthday; }

    public boolean isNewStudent() { return newStudent; }
    public void setNewStudent(boolean newStudent) { this.newStudent = newStudent; }

    public String getCollege() { return college; }
    public void setCollege(String college) { this.college = college; }

    public String getMajor() { return major; }
    public void setMajor(String major) { this.major = major; }

    public String getFavoriteColor() { return favoriteColor; }
    public void setFavoriteColor(String favoriteColor) { this.favoriteColor = favoriteColor; }

    public boolean isTermsAccepted() { return termsAccepted; }
    public void setTermsAccepted(boolean termsAccepted) { this.termsAccepted = termsAccepted; }
}
