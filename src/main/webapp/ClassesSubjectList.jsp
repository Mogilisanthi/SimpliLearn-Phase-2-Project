<%@ page import ="com.simplilearn.pojo.Classes" %>
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
<h3 style="text-align:center;"><i> Classes - Subjects List </i></h3>
<table border="1">

<tr><th>Class id</th><th>Section Name</th><th>Teacher</th><th> Time</th></tr>
<% 
DbRetrieveDAO dbdao = new DbRetrieveDAO();
List<Classes> cslist = dbdao.displayClass(2);
for(Classes cs:cslist){
%>

<tr><td><%=cs.getId()%></td><td><%=cs.getSection()%></td><td><%=cs.getTeacher()%></td><td><%=cs.getTime()%></td></tr>

<% }%>
</table>
</body>
</html>