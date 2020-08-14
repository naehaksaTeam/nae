<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="major.model.vo.Major1" import="major.model.vo.Major2"%>
<% 
	Major1 major1 = (Major1)request.getAttribute("major1");
	String thisterm = (String)request.getAttribute("thisterm");
	Major2 major2 = (Major2)request.getAttribute("major2");
	
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
<div align="center">
<table>
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
			<th>납입날짜</th>
		</tr>
		<%if(major1 != null){ %>
		<tr>
			<th><%= major1.getCategoryname() %></th>
			<th><%= major1.getMajorname() %></th>
			<th><%= major2.getBenefitterm() %></th>
			<th><% if(thisterm != null){ %>
					<%=thisterm%>
				<% } %>
			</th>
			<th><%= major1.getName() %></th>
			<th><%= major1.getId() %></th>
			<th><%= major1.getTuition() %>원</th>
			<th><%= major2.getValue() %>원</th>
			<th><%= major1.getTuition()- major2.getValue() %>원</th>
			<th>2020.08.12</th>
		</tr>
		<% } %>
	</table>
	</div>
</body>
</html>