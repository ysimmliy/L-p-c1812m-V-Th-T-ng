/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projectsemii;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author dangq
 */
public class ConnectDB {

    String url = "jdbc:sqlserver://localhost:1433;databaseName=ProjectSemII";
    String user = "sa";
    String password = "120612";

    public Connection getConnect() {
        try {
            return DriverManager.getConnection(url, user, password);
        } catch (SQLException ex) {
            Logger.getLogger(ConnectDB.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
}
