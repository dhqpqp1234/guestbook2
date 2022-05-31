<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="java.util.List" %>
<%@ page import="com.javaex.dao.GuestBookDao" %>
<%@ page import="com.javaex.vo.GuestBookVo" %>


<%


	List<GuestBookVo> list =(List<GuestBookVo>)request.getAttribute("gList");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form action="./gbc" method= "get">
		<input type="hidden" name="action" value="add">
		<table border="1" width="500">
			<tr>
				<td>이름</td><td><input type="text" name="name"></td>
				<td>비밀번호</td><td><input type="password" name="pass"></td>
			</tr>
			<tr>
				<td colspan=4><textarea name="content" cols=60 rows=5></textarea></td>
			</tr>
			<tr>
				<td colspan=4 align=right><button type="submit">등록</button></td>
			</tr>
		</table>
	</form>
	<br/>
	
	
	<% 
		for(int i=0; i<list.size();i++){
	%>
			<table width=510 border=1>
				<tr>
					<td><%=list.get(i).getNo() %></td>
					<td><%=list.get(i).getName() %></td>
					<td><%=list.get(i).getRegDate() %></td>
					<td><a href="./gbc?action=deleteForm&no=<%=list.get(i).getNo() %>">삭제</a></td>
				</tr>
				<tr>
					<td colspan=4><%=list.get(i).getContent() %></td>
				</tr>
			</table>
		    <br/>
	<% 
		}
	%>
	
</body>
</html>