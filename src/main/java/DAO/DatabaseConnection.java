/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import javax.xml.crypto.Data;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author M S I
 */
public class DatabaseConnection {
    protected static Connection _conn;
    protected Connection conn;

    public static Connection getInstance() {
        if (_conn == null) {
            createConnection();
        }

        return _conn;
    }




    private static void createConnection() {
        try {
            // Đăng ký driver
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            _conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=SMS;user=sa;password=ktpm@123;serverTimezone=UTC;encrypt=true;trustServerCertificate=true");
            System.out.println("Kết nối thành công" + _conn.getCatalog());

        } catch (ClassNotFoundException ex) {
            System.out.println("Lỗi : " + ex.toString());
        } catch (SQLException ex) {
            System.out.println("Lỗi : " + ex.toString());
        }
    }


    public void open() {
        conn = DatabaseConnection.getInstance();
    }

    public void close() {
//        try {
//            this.conn.close();
//        } catch (SQLException ex) {
//            System.out.println("Lỗi : " + ex.toString());
//        }
    }
}
