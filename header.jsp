<%@page import="hmo.AccountDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body>
	<%
		AccountDTO login = (AccountDTO) session.getAttribute("login");
		
		String admin = (login != null) ? login.getAdmin() : "n";
	%>

	 <div id="header">
        <h1>나만의 홈페이지</h1>
    	<div id="menu">
            <p><a href="Main.jsp">메인</a></p>
            <p><a href="board.jsp">듣는 노래</a></p>
            <p><a href="join.jsp">회원가입</a></p>
            <p>
            	<a href="<%=(login == null) ? "login.jsp" : "logout.jsp"%>">
            	<%=(login == null) ? "로그인" : "로그아웃" %></a>
            </p>
            <p>
          		<a href="list.jsp">
				<%=("y".equals(admin)) ? "멤버" : "" %>
				</a>
			</p>
        </div>
    </div>
	
    <hr>