<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="termScore.model.vo.TermScore, student.model.vo.Member, java.util.ArrayList, lectureScore.model.vo.LectureScore "%>
<%
	TermScore tscore = (TermScore) request.getAttribute("tscore");
	ArrayList<TermScore> termlist = (ArrayList<TermScore>) request.getAttribute("tlist");
	ArrayList<LectureScore> lctrlist = (ArrayList<LectureScore>) request.getAttribute("list");
%>
<%@ include file="/views/common/sessionChk.jsp" %>




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

div {
	margin: 10px 0px;
	text-align: center;
	font-size: 1.2em;
}

/* reset & normalize */
* {
  box-sizing:border-box;
}
caption {
  position:absolute;
  left:-9999px;
  font-size:0;
}
tr {
  border-bottom:1px solid #dedede;
}
tr:last-child {
  border-bottom:0;
}
th, td {
  height:42px;
  font:500 14px 'spoqa han sans';
  text-align:center;
}

/* css */
.tb_wrap {
  position:relative;
  width:1000px;
  margin:20px auto;
  padding-top:43px;
}
.tb_box {
  max-height:210px;
  overflow-y:scroll;
  border-bottom:1px solid #dedede;
}
.tb {
  border-collapse:collapse;
  border-spacing:0;
  width:100%;
}
.cell1 {
  width:15%;
}
.cell2 {
  width:15%;
}
.cell3 {
  width:20%;
}
.cell4 {
  width:10%;
}
.cell5 {
  width:30%;
}
td.cell5 {
  padding-left:10px;
  text-align:left;
}
.cell6 {
  width:10%;
}
.fixed_top {
  display:inline-table;
  position:absolute;
  top:0;
  width:calc(100% - 17px);
  background:#eef7ff;
}
</style>
<a href="javascript:history.go(-1);">이전 페이지로 이동</a> &nbsp; 
	<div>여기에 헤더를 넣고 싶다</div>

	<!-- 전체성적 -->
	<center>
		<div class="split">전체 성적조회</div>
		<table class="tg">
			<thead>
				<tr>
					<th>신청학점</th>
					<th>취득학점</th>
					<th>졸업이수학점</th>
					<th>평점평균</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><%=tscore.getTermaplpoint()%></td>
					<td><%=tscore.getTermgetpoint()%></td>
					<td><%=tscore.getGrdpoint()%></td>
					<td><%=tscore.getTgpa()%></td>
				</tr>
			</tbody>
		</table>

		<!-- 학기별성적 -->
		<div class="split">학기별 성적조회</div>
<div class="tb_wrap">
  <div class="tb_box">
			<table class="tg" id="tg-1">
				<thead>
					<tr>
						<th>학년학기</th>
						<th>신청학점</th>
						<th>취득학점</th>
						<th>졸업이수학점</th>
						<th>평점평균</th>
					</tr>
				</thead>
				<tbody>
					<%
						for (TermScore t1score : termlist) {
					%>
					<tr>
						<td><%=t1score.getSemester()%></td>
						<td><%=t1score.getTermaplpoint()%></td>
						<td><%=t1score.getTermgetpoint()%></td>
						<td><%=t1score.getGrdpoint()%></td>
						<td><%=t1score.getTgpa()%></td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
</div>
</div>	



<div id="seek">
<div class="split">과목별 성적조회</p>

		<!-- 과목별성적조회 -->
		<form id="reload" action="/beet/myScore" method="post">
		<input type="hidden" name="userid" value="<%=m.getId() %>">
		<input type="hidden" name="semester" value="">
		</form>
		<table class="tg">
			<thead>
				<tr>
					<th>강의번호</th>
					<th>교과목명</th>
					<th>이수구분</th>
					<th>학점</th>
					<th>등급</th>
					<th>재수강</th>
				</tr>
			</thead>
			<tbody>
				<%
					for (LectureScore lscore : lctrlist) {
				%>
				<tr>
					<td><%=lscore.getLcode()%></td>
					<td><%=lscore.getLname()%></td>
					<td><%=lscore.getCategory()%></td>
					<td><%=lscore.getLpoint()%></td>
					<td><%=lscore.getGrade()%></td>
					<td><%=lscore.getRetake()%></td>
				</tr>
				<%} %>
			</tbody>
		</table>
		</div>
	</center>
<script type="text/javascript" src="/beet/resources/js/jQuery.js"></script>
	<script type="text/javascript">
	
	
	$("#tg-1 tr").click(function(){
		var str = ""
		var tdArr = new Array();
		
		var tr = $(this);
		var td = tr.children();
		
		td.each(function(i){
			tdArr.push(td.eq(i).text());
		});
		console.log(td.eq(0).text());
		
		$('input[name=semester]').attr('value',td.eq(0).text());
		$("#reload").submit();
		$("#seek").show();
	})

	</script>
</body>
</html>