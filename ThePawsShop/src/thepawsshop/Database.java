package thepawsshop;

/**
 *
 * @author Deshan-Notebook
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class Database {
private static final String dataConn = "jdbc:mysql://localhost:3306/thepawsshop";
    private static final String username = "root";
    private static final String password = "";

    private Database() {
    }

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(dataConn, username, password);
    }
}
