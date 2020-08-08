<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="attendance.model.vo.Atndn, java.util.*"%>
<%
	ArrayList<Atndn> list = (ArrayList<Atndn>) request.getAttribute("list");

	Set<String> set = new HashSet<String>();
	for (Atndn a : list) {
		set.add(a.getSemester());
	}
	Iterator<String> it = set.iterator();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test1</title>
<style type="text/css">
.title {
	font-weight: 600;
	font-size: 40px;
}

.button {
	border: none;
	margin: auto;
	font-size: 16px;
	cursor: pointer;
	font-size: 20px;
	padding: 10px 10px;
	border-radius: 5px;
}

.semester {
	text-align: center;
}

.selected {
	text-align: center;
	border: 1px solid;
}

.selected.td {
	width: 10%;
	cellpadding: 20px;
}

.selected.th {
	
}
</style>

</head>
<body>

	<h1 align="center">강의목록</h1>
	<table>
		<tr>
			<td class="title" colspan="4">과목명</td>
			<td rowspan="3">
				<button class=button>강의실로 이동</button>
			</td>
		</tr>
		<tr>
			<td>202001345-1</td>
			<td>교양선택</td>
			<td>인문관 123호</td>
			<td>수강인원:20명</td>
		</tr>
		<tr>
			<td colspan="3" style="color: green;">초록색진도율막대차트넣어야지</td>
			<td>진도율: 65.4%</td>
		</tr>
	</table>

	<table id="stable" cellpadding="10px">
		<tr>
			<select id="selected">
				style="width: 80px"> <!-- onchange="this.form.submit() -->

				<% while (it.hasNext()) { %>
				<option><%=it.next()%></option>
				<% } %>
			</select>

		</tr>
		<tr>
			<th>과목번호</th>
			<th>이수구분</th>
			<th>과목명</th>
			<th>강의시간</th>
			<th>학점</th>
			<th>수강인원</th>
			<th>담당교수</th>

		</tr>
		<%
			for (Atndn a : list) {
		%>
		<tr>
			
			<td><%=a.getLcode()%></td>
			<td><%=a.getCategory()%></td>
			<td><%=a.getLname()%></td>
			<td><%=a.getLtime()%></td>
			<td><%=a.getLpoint()%></td>
			<td><%=a.getCapacity()%></td>
			<td><%=a.getProfessorname()%></td>
		</tr>
		<% } %>
	</table>
 
 <script>
$(function(){
	var s = $("#selected option:checked").text();
	alert(s);
});
</script>

 

<script type="text/javascript" src="/beet/resources/js/jQuery.js"></script>

</body>
</html>