<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>

	<p id="isLogin">
		<%=(login != null) ? login.getNickname() + " 로그인 중": "로그인 하지 않음" %>
	</p>

	<div id="main">
        <img src="src/다운로드.png">
    </div>

	
<%@ include file="footer.jsp"%>
