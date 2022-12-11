<%@ page import ="com.simplilearn.pojo.Student" %>
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
<h3 style="text-align:center;"><i> Students List </i></h3>
<table border="1">
<tr><th>Student id</th><th>Student Name</th><th>Age</th><th> Class</th></tr>

<% 
DbRetrieveDAO dbdao = new DbRetrieveDAO();
List<Student> slist = dbdao.display();
for(Student s:slist){
%>
<tr><td><%=s.getid()%></td><td><%=s.getSname()%></td><td><%=s.getSage()%></td><td><%=s.getSclass()%></td></tr>
		
<% }%>
</table>
</body>
</html>