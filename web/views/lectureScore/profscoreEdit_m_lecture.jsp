<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="java.util.ArrayList, student.model.vo.Member, lectureScore.model.vo.LectureScore"%>
<% ArrayList<LectureScore> list = (ArrayList<LectureScore>)request.getAttribute("list"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;border-color:inherit;text-align:left;vertical-align:top}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
</style>

<h1>성적관리페이지</h1>
	<div class="manage" style="display:block">
	<form action="/beet/scselect.p" method="post" style="float:right;">
			<input type="submit" style="width:60pt;height:20pt;" value="성적 입력">
			<input type="hidden" name="userid" value="">
			<input type="hidden" name="lname" value="">
	</form>

	</div>
<table class="tg">
		<thead>
		<tr>
			<th>순번</th>
			<th>계열</th>
			<th>학과</th>
			<th>학번</th>
			<th>성명</th>
			<th>재수강여부</th>
			<th>출석점수</th>
			<th>중간점수</th>
			<th>기말점수</th>
			<th>총점수</th>
			<th>등급</th>
		</tr>
		</thead>
		<tbody>
			<% int i = 1;for(LectureScore lscore : list) {%>
			<tr>
				<td><%= i %></td><% i+=1; %>
				<td><%= lscore.getCategoryname() %></td>
				<td><%=lscore.getMajorname()%></td>
				<td><%=lscore.getSid()%></td>
				<td><%=lscore.getSname()%></td>
				<td><%=lscore.getRetake()%></td>
				<td><%=lscore.getAtndnscore()%></td>
				<td><%=lscore.getMidscore()%></td>
				<td><%=lscore.getFinalscore()%></td>
				<td><%=lscore.getTotalscore()%></td>
				<td><%=lscore.getGrade()%></td>
			</tr>
			<% } %>
		</tbody>
	</table>
	<script type="text/javascript" src="/test1/resources/js/jquery-3.5.1.min.js"></script>
	<!-- jquery로 입력값 받아서 수정하기 변경하기누르면 update 취소 누르면 sendredirect -->
<script>
</script>
</body>
</html>