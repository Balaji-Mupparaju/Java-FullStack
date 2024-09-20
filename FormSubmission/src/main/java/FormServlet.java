import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/submitForm")
public class FormServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get form parameters
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String ageStr = request.getParameter("age");

        // Convert age to integer
        int age = Integer.parseInt(ageStr);

        // Database connection details
        String jdbcURL = "jdbc:mysql://localhost:3306/loginform";
        String dbUser = "root";
        String dbPassword = "Mbpvk@2435";

        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            // Load MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Establish the connection
            connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

            // Prepare SQL statement
            String sql = "INSERT INTO users (firstname, lastname, age) VALUES (?, ?, ?)";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, firstname);
            preparedStatement.setString(2, lastname);
            preparedStatement.setInt(3, age);

            // Execute SQL statement
            preparedStatement.executeUpdate();

            // Redirect or send response
            response.sendRedirect("game.html");

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.html");
        } finally {
            try {
                if (preparedStatement != null) preparedStatement.close();
                if (connection != null) connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
