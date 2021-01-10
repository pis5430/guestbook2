<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import= "com.javaex.vo.GuestVo" %>
<%@ page import= "com.javaex.dao.GuestDao" %>

<%	
	
	int no = Integer.parseInt(request.getParameter("no"));
	//request.setAttribute("guest_no", no); 전달받은 별명으로 넣기
	//vo.get 방식으로 불러와서 input에 넣으니 오류남 --> 다른방법으로 시도
	//체크 : get파라미터에서 거내오는게 더 빠름 --> 수정
	
	System.out.println("======deleteForm.jsp======");
	System.out.println(no); 
	


%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="/guestbook2/gbc" method="post">
		
		비밀번호 : <input type="text" name="password">
		<button type="submit">확인</button>
		<br>
		<a href="/gbc">메인으로 돌아가기</a>
		<%-- hidden--%>
		<input type="hidden" name="no" value=<%=no%>>
		<input type="hidden" name="action" value="delete">
	
	</form>
	


</body>
</html>