<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
        table {
            width: 50%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid black;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: lightgray;
        }
    </style>
</head>
<body>
<h1>Even And Odd Numbers From 1 to 20</h1>

<table>

<tr>
<th>Even numbers</th>
<th>Odd numbers</th>
</tr>

<%
for(int i=1;i<=20;i++){
if(i%2==0){
	out.print("<tr><td>"+i+"</td><td></td> </tr>");
}else{
	out.print("<tr><td></td><td>"+i+" </td> </tr>");
}
}
%>
</table>
</body>
</html>