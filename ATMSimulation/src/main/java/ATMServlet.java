import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ATMServlet")
public class ATMServlet extends HttpServlet {
    private float balance = 1000;  // Default balance
    private int validPin = 1234;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        HttpSession session = request.getSession();

        if (action == null) {
            // Check PIN
            String pinParam = request.getParameter("pin");
            if (pinParam != null && !pinParam.isEmpty()) {
                try {
                    int enteredPin = Integer.parseInt(pinParam);
                    if (enteredPin == validPin) {
                        session.setAttribute("isLoggedIn", true);
                        session.setAttribute("balance", balance);
                        request.getRequestDispatcher("menu.jsp").forward(request, response);
                    } else {
                        request.setAttribute("errorMessage", "Invalid PIN, try again.");
                        request.getRequestDispatcher("login.jsp").forward(request, response);
                    }
                } catch (NumberFormatException e) {
                    request.setAttribute("errorMessage", "Invalid PIN format, please enter numbers only.");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                }
            } else {
                request.setAttribute("errorMessage", "PIN is required.");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } else if (action.equals("balance")) {
            request.setAttribute("balance", session.getAttribute("balance"));
            request.getRequestDispatcher("balance.jsp").forward(request, response);
        } else if (action.equals("withdraw")) {
            float amount = Float.parseFloat(request.getParameter("amount"));
            if (amount <= balance) {
                balance -= amount;
                session.setAttribute("balance", balance);
                request.getRequestDispatcher("menu.jsp").forward(request, response);
            } else {
            	request.setAttribute("errorMessage", "Insufficient balance!");
                request.getRequestDispatcher("withdraw.jsp").forward(request, response);
            }
        } else if (action.equals("deposit")) {
            float amount = Float.parseFloat(request.getParameter("amount"));
            balance += amount;
            session.setAttribute("balance", balance);
            request.getRequestDispatcher("menu.jsp").forward(request, response);
        } else if (action.equals("exit")) {
            session.invalidate();
            response.getWriter().println("Thank you for using our ATM!");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
