<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Even and Odd Numbers</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background: linear-gradient(to right, #8360c3, #2ebf91);
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        min-height: 100vh;
        margin: 0;
        padding: 20px;
        color: white;
    }

    form {
        width: 40%;
        padding: 20px;
        background: rgba(255, 255, 255, 0.1);
        backdrop-filter: blur(12px);
        border-radius: 12px;
        box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
        border: 1px solid rgba(255, 255, 255, 0.3);
        text-align: center;
        margin-bottom: 20px;
    }

    input {
        width: 90%;
        padding: 10px;
        border: 1px solid rgba(255, 255, 255, 0.5);
        border-radius: 6px;
        font-size: 16px;
        background: rgba(255, 255, 255, 0.2);
        color: #fff;
        margin-bottom: 10px;
    }

    button {
        width: 100%;
        padding: 12px;
        border: none;
        border-radius: 6px;
        font-size: 18px;
        background: linear-gradient(to right, #007bff, #0056b3);
        color: white;
        cursor: pointer;
        font-weight: bold;
        text-transform: uppercase;
        transition: 0.3s ease-in-out;
    }

    button:hover {
        background: rgba(125, 59, 220, 0.9);
    }

    .list-container {
        display: flex;
        justify-content: space-around;
        width: 60%;
        margin-top: 20px;
        text-align: center;
    }

    .list-container div {
        width: 45%;
        background: rgba(255, 255, 255, 0.15);
        padding: 15px;
        border-radius: 12px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
    }

    ul {
        list-style-type: none;
        padding: 0;
    }

    ul li {
        background: rgba(255, 255, 255, 0.2);
        margin: 5px 0;
        padding: 8px;
        border-radius: 6px;
        font-size: 18px;
    }

    h2 {
        margin-bottom: 10px;
        color: #fff;
        text-transform: uppercase;
    }
</style>
</head>
<body>
<h1>Even and Odd Numbers Generator</h1>
<hr>

<form method="post">
    <label>Enter a limit to fetch Even and Odd Numbers:</label>
    <input type="number" name="num" placeholder="Enter a number" required>
    <button type="submit">Submit</button>
</form>

<% 
String num1 = request.getParameter("num");
if (num1 != null && !num1.isEmpty()) {
    int num = Integer.parseInt(num1);
%>

<!-- Display an alert when the form is submitted -->
<script>
    alert("You entered the number: <%= num %>");
</script>

<h1>Even and Odd Numbers from 1 to <%= num %></h1>

<div class="list-container">
    <div>
        <h2>Even Numbers</h2>
        <ul>
            <%
            for (int i = 1; i <= num; i++) {
                if (i % 2 == 0) {
                    out.print("<li>" + i + "</li>");
                }
            }
            %>
        </ul>
    </div>

    <div>
        <h2>Odd Numbers</h2>
        <ul>
            <%
            for (int i = 1; i <= num; i++) {
                if (i % 2 != 0) {
                    out.print("<li>" + i + "</li>");
                }
            }
            %>
        </ul>
    </div>
</div>

<% } %>

</body>
</html>
