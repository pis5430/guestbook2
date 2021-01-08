<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%@ page import="java.util.List" %>
<%@ page import="com.javaex.vo.GuestVo" %>

<!-- 컨트롤러로 포워드  -->
<%
	List<GuestVo> guestList = (List<GuestVo>)request.getAttribute("gList"); // (List<GuestVo>) 으로 형변환
	System.out.println("======addList.jsp======");
	System.out.println( "guestList :" + guestList.toString()); 
	//toSting()값이 안나옴...sql 커밋을 안해줘서 데이터가 없었음 -->해결

%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>guestbook 모델2</title>
</head>
<body>



	
	<form action="/guestbook2/gbc" method="get"> <%--컨트롤러로 --%>
		
		<h2>addList 메인화면(등록 및 리스트 출력 가능)</h2>	<%--form 밖으로 나가면 글씨가 안보임..왜??? --%>
		
		<table border="1">
			<tr>
				<td>이름</td>
				<td><input type="text" width="60" name="name"></td>
				<td>비밀번호</td>
				<td><input type="text" name="password"></td>
			</tr>
			<tr>
				<td colspan="4" ><textarea rows="5" cols="70" name="content"></textarea></td>
			</tr>	
			<tr>
				<td colspan="4"> <button type="submit"  name="action" value="insert">확인</button> </td>
			</tr>	
		</table>
		
		<%--action : <input type="hidden" name="action" value="insert"> action에 insert 넣기 --%>
			
		
	</form>
	
	<br><br>
	
	
	 	<%for ( int i = 0; i<guestList.size(); i++) { %>
		
			<table border = "1">
				<tr>
					<td><%= guestList.get(i).getNo() %></td>
					<td><%= guestList.get(i).getName() %></td>
					<td><%= guestList.get(i).getDate() %></td>
					<td><a href="/guestbook2/gbc?action=deform&no=<%= guestList.get(i).getNo()%>">[삭제]</a></td>
					<%--a태그에는 원래 value속성이 없다. 넣어서 시도해봣는데 안됨 --%>
					<%--href="경로?action=deform&no=삭제할 정보의 번호 불러오기" --%>
					<%--actin값으로 deform이 들어간 것은 확인이 되나 오류가남 = form에서 no값을 불러오는과정에서 실수 --%>
				</tr>
				<tr>
					<td colspan="4">
					<%= guestList.get(i).getContent() %>
					</td>
				</tr>	
			</table>
			<br>
		<%} %>
	
	



</body>
</html>