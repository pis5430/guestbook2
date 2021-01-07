<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import= "com.javaex.vo.GuestVo" %>
<%@ page import= "com.javaex.dao.GuestDao" %>

<%

	GuestVo no = (GuestVo)request.getAttribute("no");
	System.out.println("======deleteForm.jsp======");
	System.out.println(no); 
	
	//int no = (int)request.getAttribute("no"); 
	//형변환 필요

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="guestbook2/gbc" method="get">
		
		비밀번호 : <input type="text" name="password">
		<button type="submit">확인</button>
		<br>
		<a href="/gbc">메인으로 돌아가기</a>
		<%-- hidden--%>
		<input type="hidden" name="no" value=<%=no%>>
		<input type="hidden" name="action" value="deform">
	
	</form>


</body>
</html>