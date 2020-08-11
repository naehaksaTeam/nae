<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    import="java.util.ArrayList,lecture.model.vo.Lecture,student.model.vo.Member
    ,lecture.model.vo.ApplyReception"  
%>
<% 
if((request.getAttribute("result")).equals("ok") || (request.getAttribute("result")).equals("already")){
		session.setAttribute( (String)request.getAttribute("resultForSession") , "ok" );
} else if((request.getAttribute("result")).equals("no") ){
	   session.setAttribute( (String)request.getAttribute("resultForSession") , "no" );
}else{}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
td{
border : 1px solid skyblue;
text-align : center;
}
<% if(((Member)session.getAttribute("loginMember")).getId().substring(0,1).equals("P") ||
		((Member)session.getAttribute("loginMember")).getId().substring(0,1).equals("A") ){ %>
#applybtn{
display:none;
}
<% } %>

</style>
</head>
<body>
<% if(session.getAttribute("loginMember") == null ){ %>
<h1>비회원 상태입니다.</h1>
<br><button onclick="javascript:location.href='/beet/'">첫 화면으로!</button>
<% }else{ %>

<h1>수강신청</h1>
<hr>
<h2>현재 열린 강의 목록</h2>
<table style="border:2px solid black;">
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
&nbsp;신청하기&nbsp;
</th>
</tr>
<% ArrayList<Lecture> list = (ArrayList<Lecture>)request.getAttribute("list");  %>
<% for(Lecture l : list){ %>
<tr>
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
&nbsp;<%= l.getLtime() %>, <%= l.getContent() %>시&nbsp;
</td>
<td>
<%= l.getProfessorid() %>
</td>
<td>
<%= l.getRoom() %>
</td>
<td>

<% if((session.getAttribute(l.getLname())) == null ){ %>
<form action="/beet/lapply?who=<%= ((Member)session.getAttribute("loginMember")).getId() %>" method="post">
<button type="submit" name="lname" value="<%= l.getLname() %>" id="applybtn">수강신청</button>
</form>
<% }else if((session.getAttribute(l.getLname())).equals("no")){ %>
<b>마감</b>
<% }else{ %>
<b>신청성공</b>
<% } %>
</td>
</tr>
<% } %>
</table>

<div style="color:red;">
<% if((request.getAttribute("result")) != null ){ %>
<% if((request.getAttribute("result")).equals("ok")){ %>
결과 : "축하드립니다!!! 수강신청 성공!!!
<% }else if((request.getAttribute("result")).equals("no")){ %>
결과 : 수강신청 실패...
<% }else if((request.getAttribute("result")).equals("already")){ %>
결과 : 이미 수강신청에 성공!
<% }else{ %>
행운을 빕니다...!
<% } %>
<% } %>
</div>

<br><button onclick="javascript:location.href='/beet/'">첫 화면으로!</button>
<% } %>
</body>
</html>