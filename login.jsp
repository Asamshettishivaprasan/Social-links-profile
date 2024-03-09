<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>  
<%@ page import ="p1.DB" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
DB.connect();

int id = Integer.parseInt(request.getParameter("id"));
String pass="";
String password = request.getParameter("password");

String getUserInfo="select * from users where id="+id;

ResultSet user = DB.st.executeQuery(getUserInfo);
if(user.next()){
		pass = user.getString(3);
		if(pass.equals(password)){
			DB.currId=id;
			response.sendRedirect("profile.jsp");
		}else{
			out.println("Incorrect Password");
		}
}else{
	out.println("No Account Found");
}
%>
</body>
</html>