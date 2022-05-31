<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.vo.GuestBookVo" %>

<%
	GuestBookVo guestVo = (GuestBookVo)request.getAttribute("guestVo");
	System.out.println(guestVo);
%>


<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>Insert title here</title>
</head>
<body>
   
   <form method="get" action="./gbc?action=delete">
   비밀번호 <input type="password" name ="password"><button type="submit">확인</button>
   <input type="hidden" name="no" value= "<%= guestVo.getNo() %>">
   <input type="hidden" name="action" value="delete">
   </form>
   <a href="./gbc?action=addlist">메인으로 돌아가기</a>
</body>
</html>