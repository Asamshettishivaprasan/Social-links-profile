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
String name = request.getParameter("name");
String password = request.getParameter("password");
String bio = request.getParameter("bio");
String img =request.getParameter("img");

String github = request.getParameter("l1");
String hacker = request.getParameter("l2");
String codechef = request.getParameter("l3");
String leetcode = request.getParameter("l4");
String linked = request.getParameter("l6");
String mail = request.getParameter("l5");


String insertUser="insert into users values("+id+", '"+name+"', '"+password+"' , '"+bio+"','"+img+"')";
String insertSocial="insert into social values("+id+", '"+github+"', '"+mail+"' , '"+linked+"', '"+leetcode+"', '"+hacker+"', '"+codechef+"')";

DB.st.executeUpdate(insertUser);
DB.st.executeUpdate(insertSocial);


DB.currId=id;
response.sendRedirect("profile.jsp");


%>
</body>
</html>