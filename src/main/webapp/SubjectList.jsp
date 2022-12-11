<%@ page import ="com.simplilearn.pojo.Subject" %>
<%@ page import ="com.simplilearn.dao.DbRetrieveDAO" %>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3 style="text-align:center;"><i> Subjects List </i></h3>
<table border="1">
<tr><th>Subject id</th><th>Subject Name</th></tr>

<% 
DbRetrieveDAO dbdao = new DbRetrieveDAO();
List<Subject> list = dbdao.displaysub();
for(Subject sub:list){
%>
<tr><td><%=sub.getId()%></td><td><%=sub.getName()%></td><tr>
		
<% }%>
</table>
</body>
</html>