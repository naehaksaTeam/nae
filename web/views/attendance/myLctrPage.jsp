<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="attendance.model.vo.Atndn, java.util.*, student.model.vo.Member,
java.util.Date, java.text.SimpleDateFormat"%>
<%
Member loginmember = (Member)session.getAttribute("loginMember");
ArrayList<Atndn> list = (ArrayList<Atndn>) request.getAttribute("list");

	Set<String> set = new HashSet<String>();
	for (Atndn a : list) {
		set.add(a.getSemester());
	}
	Iterator<String> it = set.iterator();
	
SimpleDateFormat sdf = new SimpleDateFormat("E");	
SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd");	
Date today = new Date();
String day = sdf.format(today);
Date enter = sdf2.parse("2020-03-02");

long diff = today.getTime() - enter.getTime();
long diffWeeks = diff / (24 * 60 * 60 * 1000) / 7 * 2;


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
		<% for(Atndn a : list){ 
			if(a.getLtime().equals("day")){  %>
		<tr>
			<td class="title" colspan="4"><%= a.getLname() %></td>
			<td rowspan="3">
				<button class=button>강의실로 이동</button>
			</td>
		</tr>
		<tr>
			<td><%= a.getLcode() %></td>
			<td><%= a.getCategory() %></td>
			<td><%= a.getLtime() %></td>
			<td><%= a.getCapacity() %>명</td>
		</tr>
		<tr>
			<td  colspan="3" style="color: green;"><progress id="prog" value="<%= diffWeeks %>" max="100"></td>
			<td id="progress">진도율: <%=diffWeeks %>%</td>
			
		</tr>
		<%}}%>
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
			<td><%=a.getPname() %></td>
			<td>
			<form action="/beet/atnlist" method="post">
<input type="hidden" name="userid" value="<%=loginmember.getId() %>">
<input type="hidden" name="lcode" value="<%=a.getLcode() %>">
<input type="submit" class="btn-sm" value="출결조회">
<!-- 강의목록 join시 중복되는 문제 해결 필요 -->
 </form>
 </td>
		</tr>
		<% } %>
	</table>
 
<script type="text/javascript" src="/beet/resources/js/jQuery.js"></script>
 <script>
 $(function(){
	 $('#selectSemester').change(function(){
		 var test = $("#selectSemester option:selected").val();
		 document.querySelectorAll('tr').value = test;	
		 alert(test);
	 });
 });


</script>

 


</body>
</html>