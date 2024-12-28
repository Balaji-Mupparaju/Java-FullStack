<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Withdraw</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .withdraw-container {
            background: #ffffff;
            padding: 20px 30px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }
        .withdraw-container h2 {
            margin-bottom: 20px;
            color: #333333;
        }
        .withdraw-container label {
            display: block;
            margin: 10px 0 5px;
            color: #555555;
            font-size: 14px;
        }
        .withdraw-container input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #dddddd;
            border-radius: 4px;
            font-size: 14px;
        }
        .withdraw-container input[type="submit"] {
            background-color: #dc3545;
            color: #ffffff;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px;
            transition: background-color 0.3s ease;
        }
        .withdraw-container input[type="submit"]:hover {
            background-color: #c82333;
        }
        .error-message {
            color: red;
            margin-bottom: 15px;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div class="withdraw-container">
        <h2>Withdraw Amount</h2>

        <!-- Display error message dynamically -->
        <%
            String errorMessage = (String) request.getAttribute("errorMessage");
            if (errorMessage != null) {
        %>
            <p class="error-message"><%= errorMessage %></p>
        <%
            }
        %>

        <form action="ATMServlet?action=withdraw" method="post">
            <label for="amount">Amount:</label>
            <input type="text" id="amount" name="amount" required>
            <input type="submit" value="Withdraw">
        </form>
    </div>
</body>
</html>
