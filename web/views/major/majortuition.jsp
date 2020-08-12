<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="major.model.vo.Major1"%>
<% 
	Major1 major1 = (Major1)request.getAttribute("major1");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!--  학부 학과 이름 등록금 장학금 납부액 납입시간 일주일인데 -8-->
<!--  밑에 우와같이 납부하여 주시기 바랍니다. -->
<!--  납입장소  -->
<table align="center" width="500" border="1" cellspacing="0"
		cellpadding="1">
		<tr>
			<th>학부</th>
			<th>학과</th>
			<th>년도</th>
			<th>학기</th>
			<th>이름</th>
			<th>학번</th>
			<th>등록금</th>
			<th>장학금</th>
			<th>납부액</th>
			<th>납입시간</th>
		</tr>
		<%if(major1 != null){ %>
		<tr>
			<td><%= major1.getCategoryname() %></td>
			<td><%= major1.getMajorname() %></td>
			<th>년도</th>
			<th>학기</th>
			<td><%= major1.getName() %></td>
			<td><%= major1.getId() %></td>
			<td><%= major1.getTuition() %></td>
			<td>장학금</td>
			<td>납부액</td>
			<td>납입시간</td>
		</tr>
		<% } %>
	</table>
</body>
</html>