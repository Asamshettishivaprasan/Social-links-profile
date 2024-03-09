<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>  
<%@ page import ="p1.DB" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&display=swap" rel="stylesheet">
</head>

<style>
body{

  font-family: "Caveat", cursive;
  font-optical-sizing: auto;
  font-weight: 500;
  font-style: normal;
  color:white;
  background-color:#070F2B;
  	display:grid;
	place-content:center;

}
.profile-box{
	text-align:center;
	margin-top:50px;
	background-color:#9290C3;
	width:400px;
	height:500px;
	border-radius:5px;
}

.linker{
display:grid;
place-content:center;
margin-top:30px;
gap:7px;
}
.linker a{
border:soild;
border-width:3px;
background-color:#1B1A55;
 text-decoration: none;
 border-radius:5px;
width:130px;
color: inherit;
}

.linker a:hover{

background-color:white;
color:black;

}
</style>

<body>
<%
DB.connect();

int id;
String name="", bio="", image, leetcode="", codechef="", mail="", hacker="", link="", git="";
String getUserInfo="select * from users, social where id="+DB.currId+ " and sid="+DB.currId;

ResultSet user = DB.st.executeQuery(getUserInfo);
if(user.next()){
		id =user.getInt(1);
		name = user.getString(2);
		bio=user.getString(4);
		image=user.getString(5);
		git = user.getString(7);
		mail=user.getString(8);
		link=user.getString(9);
		leetcode=user.getString(10);
		hacker=user.getString(11);
		codechef=user.getString(12);
}

%>
<div class="profile-box">
<h1><%= name %></h1>
<p><%= bio %></p>

<div class="linker">
<a  href="<%= git%>" >Git Hub</a> <br>
<a  href="<%= link%>" >LinkedIn</a> <br>
<a  href="<%= leetcode%>" >LeetCode</a> <br>
<a href="<%= hacker%>" >Hacker Rank</a> <br>
<a  href="<%= codechef%>" >Code Chef</a> <br>
</div>
<p><% out.println(mail); %></p>
</div>

</body>
</html>