<%@ page import ="com.simplilearn.pojo.Student" %>
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
<h3 style="text-align:center;"><i> Report Card </i></h3>
<table border="1">
<tr><th>Student id</th><th>Student Name</th><th>Student Age</th><th>Student Class</th></tr>

<% 
DbRetrieveDAO dbdao = new DbRetrieveDAO();
List<Student> slist = dbdao.display();
List<Classes> clist = dbdao.displayClass(0);%>
<% for(Student s:slist){%>
<tr><td><%=s.getid()%></td><td><%=s.getSname()%></td><td><%=s.getSage()%></td><td><%=s.getSclass()%></td></tr>
<% }%>
<tr><th>Class Id </th><th>Class Section </th><th>Class Teacher </th><th>Class Subject</th><th>Time of Class </th></tr>
<%for(Classes c:clist){%>
<tr><td><%=c.getId()%></td><td><%=c.getSection()%></td><td><%=c.getTeacher()%></td><td><%=c.getSubject()%></td><td><%=c.getTime()%></td></tr>
<% }%>
</table>
</body>
</html>