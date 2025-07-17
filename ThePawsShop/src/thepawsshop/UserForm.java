package thepawsshop;

/**
 *
 * @author Deshan-Notebook
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.swing.JOptionPane;
public abstract class UserForm extends javax.swing.JFrame {

    protected Connection getConnection() throws SQLException {
        return Database.getConnection();
    }
    protected abstract boolean validateCredentials(String username, String password);
    

    protected void showError(String message) {
        JOptionPane.showMessageDialog(this, message, "Error", JOptionPane.ERROR_MESSAGE);
    }
    protected void showDashboard() {
        JOptionPane.showMessageDialog(this, "Default User Dashboard", "Dashboard", JOptionPane.INFORMATION_MESSAGE);
    }
     protected abstract String getRole();
}
