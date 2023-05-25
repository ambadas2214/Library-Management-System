<%@page import="Model.BookPojo"%>
<%@page import="java.util.List"%>
<%@page import="Model.BookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  
<!DOCTYPE html>
<html>
<head>
		<link rel="stylesheet" type="text/css" href="Labrary.css">
<meta charset="UTF-8">
<title>**Insert title here</title>
</head>
<body>
<% 
	BookDao dao=new BookDao();
	List<BookPojo> blist=dao.Showall();
	request.setAttribute("blist", blist);
%>
<h1>*--------------------------------Online Libray Management System------------------------------------*</h1>
	<table border="1">
	<caption>**All Records Of Books Detailes.....</caption>
	 <tr bgcolor="pink">
	     <td height="25">Bid</td>
	 	 <td>Bname</td>
	 	 <td>Author</td>
	  	 <td>Price</td>
	  	 <td>Records (Delete/Update/Insert)</td>
	 </tr>
	
	 <c:forEach var="b" items="${blist}">
	 <tr>
	 	<td>${b.getBid()}</td>
	 	 <td>${b.getBname()}</td>
	 	 <td>${b.getAuthor()}</td>
	 	 <td>${b.getPrice()}</td>
	 	 <td>
	 	 <a href="delete.jsp?bid=${b.getBid()}">Delete__</a>
	 	 <a href="update.html">Update Book__</a>
	 	 <a href="addbook.html">Insert Book__</a>
	 	 </td>
	 	 <td>
	 	 
	 	 </td>
	 	  </tr>
	 </c:forEach>
	</table><br>

	
</body>
</html>