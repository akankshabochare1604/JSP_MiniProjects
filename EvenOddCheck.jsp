<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background: linear-gradient(to right, #8360c3, #2ebf91);
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        margin: 0;
        padding: 20px;
    }

    form {
        width: 50%;
        padding: 25px;
        background: rgba(255, 255, 255, 0.10);
        backdrop-filter: blur(12px);
        border-radius: 12px;
        box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
        border: 1px solid rgba(255, 255, 255, 0.3);
        position: fixed;
        top: 150px;
        left: 25%;
        text-align: center;
    }

    h1 {
        text-align: center;
        color: black;
        font-weight: bold;
        text-transform: uppercase;
        position: fixed;
        top: 80px;
    }

    input {
        width: 100%;
        padding: 10px;
        margin: 8px 0;
        border: 1px solid rgba(255, 255, 255, 0.5);
        border-radius: 6px;
        font-size: 16px;
        background: rgba(255, 255, 255, 0.2);
        color: #fff;
        transition: 0.3s ease-in-out;
    }

    input::placeholder {
        color: rgba(255, 255, 255, 0.6);
    }

    input:focus {
        border: 1px solid #fff;
        background: rgba(255, 255, 255, 0.3);
        box-shadow: 0 0 10px rgba(255, 255, 255, 0.5);
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

    /* Output Styling */
    .output {
        margin-top: 20px;
        padding: 10px;
        background: rgba(255, 255, 255, 0.1);
        border-radius: 8px;
        color: #fff;
        font-size: 18px;
        text-align: center;
    }

</style>
</head>
<body>
<h1>Even Odd Checker</h1>

<form method="post">
<label>Enter a number To check the number is even or odd: </label>
<input type="number " name="num" placeholder="Enter a number" required>
<button>Submit</button>
</form>
<%
String num1=request.getParameter("num");
if(num1 !=null){
	int num=Integer.parseInt(num1);
	if(num%2==0){
		out.print("<script>alert('"+ num +" is Even');window.location.href='EvenOddCheck.jsp';</script>");
	}
	else{
		out.print("<script>alert('"+ num +" is Odd');window.location.href='EvenOddCheck.jsp';</script>");

	}
}
%>

</body>
</html>