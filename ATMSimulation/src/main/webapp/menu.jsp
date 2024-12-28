<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>ATM Menu</title>
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
        .menu-container {
            background: #ffffff;
            padding: 20px 30px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }
        .menu-container h2 {
            margin-bottom: 20px;
            color: #333333;
        }
        .menu-container ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }
        .menu-container ul li {
            margin: 10px 0;
        }
        .menu-container ul li a {
            display: block;
            text-decoration: none;
            background-color: #007bff;
            color: #ffffff;
            padding: 10px;
            border-radius: 4px;
            font-size: 14px;
            transition: background-color 0.3s ease;
        }
        .menu-container ul li a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="menu-container">
        <h2>ATM Menu</h2>
        <ul>
            <li><a href="ATMServlet?action=balance">Balance Enquiry</a></li>
            <li><a href="withdraw.jsp">Withdraw Amount</a></li>
            <li><a href="deposit.jsp">Deposit Amount</a></li>
            <li><a href="ATMServlet?action=exit">Exit</a></li>
        </ul>
    </div>
</body>
</html>
