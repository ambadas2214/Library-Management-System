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
<jsp:useBean id="bobj" class="Model.BookPojo"></jsp:useBean>
<jsp:setProperty property="*" name="bobj"/>
<h1>
<%
BookDao dao=new BookDao();
boolean r=dao.insertBook(bobj);
if(r)
	out.print("Insertion Sucessfull.....");
%>
</h1>
<a href="ShowAll.jsp">ShowAll</a>
</body>
</html>