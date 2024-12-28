<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Deposit</title>
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
        .deposit-container {
            background: #ffffff;
            padding: 20px 30px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }
        .deposit-container h2 {
            margin-bottom: 20px;
            color: #333333;
        }
        .deposit-container label {
            display: block;
            margin: 10px 0 5px;
            color: #555555;
            font-size: 14px;
        }
        .deposit-container input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #dddddd;
            border-radius: 4px;
            font-size: 14px;
        }
        .deposit-container input[type="submit"] {
            background-color: #28a745;
            color: #ffffff;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px;
            transition: background-color 0.3s ease;
        }
        .deposit-container input[type="submit"]:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <div class="deposit-container">
        <h2>Deposit Amount</h2>
        <form action="ATMServlet?action=deposit" method="post">
            <label for="amount">Amount:</label>
            <input type="text" id="amount" name="amount" required>
            <input type="submit" value="Deposit">
        </form>
    </div>
</body>
</html>
