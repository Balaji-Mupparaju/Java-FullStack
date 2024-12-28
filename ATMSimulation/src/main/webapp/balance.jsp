<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Balance</title>
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
        .balance-container {
            background: #ffffff;
            padding: 20px 30px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }
        .balance-container h2 {
            margin-bottom: 20px;
            color: #333333;
        }
        .balance-container p {
            font-size: 16px;
            color: #555555;
            margin-bottom: 20px;
        }
        .balance-container a {
            display: inline-block;
            text-decoration: none;
            background-color: #007bff;
            color: #ffffff;
            padding: 10px 15px;
            border-radius: 4px;
            font-size: 14px;
            transition: background-color 0.3s ease;
        }
        .balance-container a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="balance-container">
        <h2>Your Balance</h2>
        <p>Current Balance: ${balance}</p>
        <a href="menu.jsp">Back to Menu</a>
    </div>
</body>
</html>
