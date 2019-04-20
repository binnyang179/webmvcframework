package me.crab179.javabean;

public class UserBean implements java.io.Serializable {
    private String username;
    private String password;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * check user input data
     *
     * @return
     */
    public boolean validate() {
        if ("".equals(this.username) || "".equals(this.password)) {
            return false;
        }
        return true;
    }

    /**
     * because we only care express level,
     * this is just simulation ,the real project need SQL to get from databases,
     *
     * @return
     */
    public boolean login() {
        if ("crab179".equals(this.username) && "123".equals(password)) {
            return true;
        }
        return false;
    }

    @Override
    public String toString() {
        return "UserBean [username=" + username + ",password=" + password + "]";
    }
}
