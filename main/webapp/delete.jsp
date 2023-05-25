<%@page import="Model.BookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" type="text/css" href="COmplete.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>
<%
int bid=Integer.parseInt(request.getParameter("bid"));
BookDao dao=new BookDao();
boolean r=dao.deleteBook(bid);
if(r)
	out.print("Deletion Sucessfull......");
else
	out.print("Record Not Found..");
%>
</h1>
<a href="ShowAll.jsp">ShowAll</a>
</body>
</html>