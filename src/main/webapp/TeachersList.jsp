<%@ page import ="com.simplilearn.pojo.Teachers" %>
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
<h3 style="text-align:center;"><i> Teacher's List </i></h3>
<table border="1">
<tr><th>Teacher id</th><th>Teacher Name</th><th>Teacher's Age</th></tr>
<% 
DbRetrieveDAO dbdao = new DbRetrieveDAO();
List<Teachers> tlist = dbdao.displayTeachers();
for(Teachers t:tlist){
%>
<tr><td><%=t.getId()%></td><td><%=t.getName()%></td><td><%=t.getAge()%></td></tr>
		
<% }%>
</table>
</body>
</html>