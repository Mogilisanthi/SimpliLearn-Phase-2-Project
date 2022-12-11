<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3 style="text-align:center;"><i> Administrator Login  </i></h3>
<%
if(request.getParameter("admin").equals(request.getParameter("pwd"))){
	out.print("successfull login");
}

else{
out.print("login failed");
response.sendRedirect("logout.jsp");
}%>
<h3>Go to... </h3>

<form action = StudentsList.jsp>
<input type = "submit" value= "Students List"></form><br>
<form action = TeachersList.jsp>
<input type = "submit" value = " Teacher's List"></form><br>
<form action = "ClassesList.jsp">
<input type = "submit"  value=" Classes List"></form><br>
<form action = "SubjectList.jsp">
<input type = "submit" value=" Subject List"></form><br>
<form action = "ClassesSubjectList.jsp">
<input type = "submit" value=" Classes-Subject List"></form><br>
<form action = "ClassReport.jsp">
<input type = "submit" value= "Class Report card"></form><br>


</body>
</html>