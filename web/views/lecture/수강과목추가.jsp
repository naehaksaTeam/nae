<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,lecture.model.vo.Lecture,student.model.vo.Member"  %>
<% ArrayList<Lecture> list = (ArrayList<Lecture>)request.getAttribute("list");  %>
<% ArrayList<Lecture> list2 = (ArrayList<Lecture>)request.getAttribute("list2");  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.index td{
border:1px solid red;
}
</style>
</head>
<body>
<% if(session.getAttribute("loginMember") == null ){ %>
<h1>비회원 상태입니다.</h1>
<br><button onclick="javascript:location.href='/beet/'">첫 화면으로!</button>
<% }else if(!((Member)session.getAttribute("loginMember")).getId().substring(0,1).equals("A")){ %>
<h1>관리자 전용페이지입니다.</h1>
<hr>
<h2>이유 : 관리자계정아님</h2>
<br><button onclick="javascript:location.href='/beet/'">첫 화면으로!</button>
<% }else{ %>
<h1>수강과목추가(관리자전용)</h1>
<hr>
<form action="/beet/addlecture" method="post">
<br>
<table style="border:2px solid black; text-align:center;">
<!-- -->	
<tr>
<th>
&nbsp;강의코드&nbsp;
</th>
<th>
&nbsp;강의명&nbsp;
</th>
<th>
&nbsp;강의 카테고리&nbsp;
</th>
<th>
&nbsp;수강 정원&nbsp;
</th>
<th>
&nbsp;시간&nbsp;
</th>
<th>
&nbsp;강의교수&nbsp;
</th>
<th>
&nbsp;강의실&nbsp;
</th>
<th>
&nbsp;권한실행&nbsp;
</th>
</tr>
<% for(Lecture l : list2){ %>
<tr class="index">
<td>
<%= l.getLcode() %>
</td>
<td>
&nbsp;<%= l.getLname() %>&nbsp;
</td>
<td>
<%= l.getCategory() %>
</td>
<td>
<%= l.getCapacity() %>
</td>
<td>
&nbsp;<%= l.getLtime() %>, <%= l.getLclock() %>시&nbsp;
</td>
<td>
<%= l.getName() %>
</td>
<td>
<%= l.getRoom() %>
</td>
<td>
<button onclick="javascript:location.href='/beet/ldel?lname=<%= l.getLname() %>'" >강의내리기</button>
</td>
</tr>
<% } %>
<!-- -->
<tr></tr>
<tr>
<tr>
<td><b>강의개설은</b></td><td><b>오른쪽 버튼을</b></td><td><b>눌러주세요</b></td>
		<td><span class="texts" style="position:relative;float:right;">과목 선택 :</span></td>
		<td>
			<select name="lecture" class="inputbox" style="width:70%;" required>
				<% for(Lecture l : list){ %>
				<option value="<%= l.getLname() %>"><%= l.getLname() %></option>
				<% } %>
			</select>
		</td>
	
		<td>
			<span class="texts" style="position:relative;float:right;">수강인원 설정 : </span>
		</td>
		<td>
			<input type="number" name="roommax" min="1" max="15" placeholder="1~15" class="inputbox" style="width:70%;" required>
		</td>
		<td>
			<button type="submit" class="box" id="addbtn">강의개설</button>
		</td>
	<td></td>	
</tr>
</table>
</form>

<b style="color:red">
<% if((request.getAttribute("result") != null)){%>
	<% if((request.getAttribute("result").equals("ok"))){%>
		개설완료!
	<% }else if((request.getAttribute("result").equals("no"))){ %>
		개설실패...
	<% }else if((request.getAttribute("result").equals("already"))){ %>
		이미개설된강좌...
	<% }else if((request.getAttribute("result").equals("good"))){ %>
		수강목록에서 삭제됨
	<% }else if((request.getAttribute("result").equals("bad"))){ %>
		강의내리기 실패...
	<% }else{ %>
		버튼을 눌러주세요
	<% } %>
<% }else{ %>
	버튼을 눌러주세요
<% } %>	
</b>

<br><br><button onclick="javascript:location.href='/beet/'">첫 화면으로!</button>
<% } %>
</body>
</html>