<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,lecture.model.vo.Lecture,student.model.vo.Member" %>
<% ArrayList<Lecture> list = (ArrayList<Lecture>)request.getAttribute("list");  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
form{
border:2px solid black;
width:300px;
height:200px;
}
.texts{
position:relative;
float:right;
}
.inputbox{
width:100%;
}
</style>
</head>
<body>
<h1>수강과목추가(관리자전용)</h1>
<hr>
<form action="/beet/addlecture" method="post">
<br>
<table>
	<tr>
		<td><span class="texts">과목 선택 :</span></td>
		<td>
			<select name="lecture" class="inputbox" required>
				<% for(Lecture l : list){ %>
				<option value="<%= l.getLname() %>"><%= l.getLname() %></option>
				<% } %>
			</select>
		</td>
	</tr>
	<tr>
		<td>
			<span class="texts">수강인원 설정 : </span>
		</td>
		<td>
			<input type="number" name="roommax" min="1" max="15" placeholder="1 ~ 15" class="inputbox" required>
		</td>
	</tr>
	<tr>
		<td>
		</td>
		<td>
			<button type="submit" class="box" id="addbtn">강의개설</button>
		</td>
	</tr>
</table>
<br>
<center>
<b>
<% if((request.getAttribute("result") != null)){%>
	<% if((request.getAttribute("result").equals("ok"))){%>
		개설완료!
	<% }else if((request.getAttribute("result").equals("no"))){ %>
		개설실패...
	<% }else if((request.getAttribute("result").equals("already"))){ %>
		이미존재함...
	<% }else{ %>
		반응없음!
	<% } %>
<% }else{ %>
	개설버튼을 눌러주세요
<% } %>	
</b>
</center>
</form>
</body>
</html>