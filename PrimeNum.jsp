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
    min-height: 100vh; /* Ensures background covers full content */
    margin: 0;
    padding: 20px; /* Allows some spacing */
}

/* FORM STYLING */
form {
    width: 50%;
    padding: 25px;
    background: rgba(255, 255, 255, 0.10); /* Glassmorphism effect */
    backdrop-filter: blur(12px);
    border-radius: 12px;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
    border: 1px solid rgba(255, 255, 255, 0.3);
    position:fixed;
    top:170px;
    left:25%;
}

/* FORM TITLE */
h1 {
    text-align: center;
    color: black;
    font-weight: bold;
    text-transform: uppercase;
    position:fixed;
    top:80px;
}

/* INPUT FIELD STYLING */
/*input {
    width: 100%;
    padding: 10px;
    margin: 8px 0;
    border: 1px solid rgba(255, 255, 255, 0.5);
    border-radius: 6px;
    font-size: 16px;
    background: linear-gradient(to right, #8360c3, #2ebf91); 
     transition: 0.3s ease-in-out;
}*/
input, select {
    width: 100%;
    padding: 10px;
    margin: 8px 0;
    border: 1px solid rgba(255, 255, 255, 0.5);
    border-radius: 6px;
    font-size: 16px;
    background: rgba(255, 255, 255, 0.2); /* Soft translucent white */
    color: #fff; /* White text */
    
    transition: 0.3s ease-in-out;
}
input::placeholder {
    color: rgba(255, 255, 255, 0.6);
}
 input:focus {
    border: 1px solid #fff;
    background: rgba(255, 255, 255, 0.3); /* Slightly brighter on focus */
    box-shadow: 0 0 10px rgba(255, 255, 255, 0.5);
}

/* BUTTON STYLING */
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
            background: rgba(125, 59, 220, 0.9); /* Darker Purple */
        }

    </style>

</head>
<body>
<h1>Prime Number Chekcer</h1>
</body>
<div clas="container">
<form method="post">
<label>Enter Number:</label>
<input type="number" name ="num" placeholder="Enter a number to check whether it is prime or not">
<button>Check</button>
</form>
</div>




<%
 String  num1=request.getParameter("num");
if(num1!=null){
int num=Integer.parseInt(num1);

if(num<2){
	out.print("<script>alert('number  is not prime ');window.location.href='PrimeNum.jsp';</script>");
	
}else{
	for(int i=2;i<=num/2;i++){
		if(num%i==0){
			out.print("<script>alert(' "+ num +" is not prime');window.location.href='PrimeNum.jsp';</script>");
			
		}else{
			out.print("<script>alert(' "+ num +"  is prime');window.location.href='PrimeNum.jsp';</script>");
		}
	}
}
}
%>
</html>