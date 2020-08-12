	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="attendance.model.vo.Atndn, java.util.*, student.model.vo.Member,
java.util.Date, java.text.SimpleDateFormat"%>
<%
	Member loginmember = (Member) session.getAttribute("loginMember");
	ArrayList<Atndn> list = (ArrayList<Atndn>) request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<h1>출결입력페이지</h1>
<form action="/beet/atnupdate" method="post">
	<table id="stable" cellpadding="10px">
		<tr>
			<select id="selected" name="selectweek">
				<% for (int i = 1; i <= 16; i++) { %>
				<option value="week<%= i %>"><%=i%>주차
				</option>
				<% } %>
			</select>

		</tr>
		<tr>
			<th>순번</th>
			<th>학번</th>
			<th>학과</th>
			<th>이름</th>
			<th>출결입력</th>

		</tr>
			<%
				int i = 1;
				for (Atndn a : list) {
			%>
			<tr>
				<td><%= i %></td>
				<td><%=a.getSid()%><input type="text" name="who<%= i %>" value="<%= a.getSid() %>" style="display:none;"></td>
				<td><%=a.getMajorname()%><input type="text" name="lcode" value="<%= a.getLcode() %>" style="display:none;"></td>
				<td><%=a.getSname()%></td>
				<td><select class="atndt" name="selectfour<%= i %>" style="width: 80px; height: 30px">
						<option value="-" selected disabled hidden>-</option>
						<option value="1">출석</option>
						<option value="2">결석</option>
						<option value="3">조퇴</option>
						<option value="4">지각</option>
				</select></td>
				<!-- 강의목록 join시 중복되는 문제 해결 필요 -->
				</td>
			</tr>
			<%
				}
			%>
		
	</table>
	<p style="position:relative;float:center;" align="center">
		<input type="submit" value="저장"> &nbsp;
	</p>
</form>
<p style="position:relative;float:center;" align="center">
	<input type="reset" value="취소"> &nbsp; 
	<a href="/beet/scmain.p">이전 페이지</a> 
	<a href="/beet/index.jsp">시작 페이지</a>
</p>
</body>
</html>