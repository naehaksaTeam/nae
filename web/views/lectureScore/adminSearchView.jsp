<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="java.util.ArrayList, student.model.vo.Member, lectureScore.model.vo.LectureScore"%>
<%
	ArrayList<LectureScore> list = (ArrayList<LectureScore>) request.getAttribute("list");
	int i = 1;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<style type="text/css">
.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: inherit;
	text-align: left;
	vertical-align: top
}

.tg td {
	border-color: black;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	overflow: hidden;
	padding: 10px 5px;
	word-break: normal;
}

.tg th {
	border-color: black;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	overflow: hidden;
	padding: 10px 5px;
	word-break: normal;
}

input.insert {
	width: 40px;
	height: 20px;
	margin: 0px
}
</style>
	<h1 align="center">학생조회페이지</h1>
	<button onclick="javascript:location.href='/beet/lctrsearchall'">전체보기</button>
	<!-- 항목별 검색 기능 추가  -->
<!-- 	<fieldset>
		<input type="radio" name="item" id="uid"> 회원 아이디 &nbsp; <input
			type="radio" name="item" id="ugen"> 성별 &nbsp; <input
			type="radio" name="item" id="uage"> 연령대 &nbsp;
	</fieldset> -->
	<fieldset>
	<select id="field" onchange="javascript:selectfield(this);">
		<option id="searchAll" value="all">-</option>
		<option id="searchName" value="sname">이름</option>
		<option id="searchLctr" value="lname">강의명</option>
	</select>

	<!-- 학생이름 검색폼  -->
	<form action="/beet/adsearch" method="post" id="idform" class="lform">
		<input type="hidden" name="action" value="">
		
			<legend>검색명을 입력하세요</legend>
			<input type="search" name="keyword"> &nbsp; 
			<input type="submit" value="검색">
		</fieldset>
	</form>

	<table class="tg">
		<thead>
			<tr>
				<th>순번</th>
				<th>학기</th>
				<th>이수구분</th>
				<th>강의번호</th>
				<th>강의명</th>
				<th>학생번호</th>
				<th>학생명</th>
				<th>계열</th>
				<th>학과</th>
				<th>재수강여부</th>
				<th>등급</th>

			</tr>
		</thead>
		<tbody>
			<%
				for (LectureScore lscore : list) {
			%>
			<tr>
				<td><%=i%></td>
				<%
					i += 1;
				%>
				<td><%=lscore.getSemester()%></td>
				<td><%=lscore.getCategory()%></td>
				<td><%=lscore.getLcode()%></td>
				<td><%=lscore.getLname()%></td>
				<td><%=lscore.getSid()%></td>
				<td><%=lscore.getSname()%></td>
				<td><%=lscore.getCategoryname()%></td>
				<td><%=lscore.getMajorname()%></td>
				<td><%=lscore.getRetake()%></td>
				<td><%=lscore.getGrade()%></td>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>
<script type="text/javascript" src="/beet/resources/js/jQuery.js"></script>
	<script type="text/javascript">
	 function selectfield(obj) {
		 $('input[name=action]').attr('value',obj.value);
	    }

	</script>
</body>
</html>