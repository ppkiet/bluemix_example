package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connect {

    // Kết nối vào MySQL.
    public static Connection getMySQLConnection() throws SQLException,
            ClassNotFoundException {
        String hostName = "us-cdbr-iron-east-03.cleardb.net";

        String dbName = "ad_a16896ec0593e07";
        String userName = "bbca0004fc9c82";
        String password = "600ddeca";

        return getMySQLConnection(hostName, dbName, userName, password);
    }

    public static Connection getMySQLConnection(String hostName, String dbName,
            String userName, String password) throws SQLException,
            ClassNotFoundException {

        Class.forName("com.mysql.cj.jdbc.Driver");

        String connectionURL = "jdbc:mysql://" + hostName + ":3306/" + dbName;

        Connection conn = DriverManager.getConnection(connectionURL, userName,
                password);
        return conn;
    }

    public static void main(String[] args) {
        try {
            Connect c = new Connect();
            c.getMySQLConnection();
            System.out.println("thanh cong");
        } catch (Exception e) {
            System.out.println("that bai");
        }

    }

}
