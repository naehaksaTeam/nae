<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,lecture.model.vo.Rest,lecture.model.vo.Lecture,student.model.vo.Member
    ,java.util.Random" %>
<% 
ArrayList<Rest> list = (ArrayList<Rest>)request.getAttribute("list"); 
ArrayList<Lecture> list2 = (ArrayList<Lecture>)request.getAttribute("list2");
ArrayList<Lecture> list3 = (ArrayList<Lecture>)request.getAttribute("list3");
Random ran = new Random();
int num = 500;//랜덤 범위
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#resttable td{
border : 1px solid lightgreen;
text-align : center;
}
<% if(((Member)session.getAttribute("loginMember")).getId().substring(0,1).equals("P")){ %>
#resttable{
display:none;
}
<% } %>

</style>
</head>
<body>
<% if(session.getAttribute("loginMember") == null ){ %>
<h1>비회원 상태입니다.</h1>
<% }else if(!(((Member)session.getAttribute("loginMember")).getId().substring(0,1).equals("P") ||
		((Member)session.getAttribute("loginMember")).getId().substring(0,1).equals("A")) ){ %>
<h1>교수 또는 관리자 전용페이지입니다.</h1>
<hr>
<h2>이유 : 접근권한이 없음</h2>
<% }else{ %>
<h1>휴보강신청페이지</h1>
<hr>

<table style="border:2px solid black;" id="resttable">
<tr>
<th>&nbsp;접수번호&nbsp;</th><th>&nbsp;신청교수&nbsp;</th><th>&nbsp;사유&nbsp;</th><th>&nbsp;수업방식&nbsp;</th><th>&nbsp;휴강일자&nbsp;</th>
<th>&nbsp;보강일자&nbsp;</th><th>&nbsp;보강시간&nbsp;</th><th>&nbsp;강의코드&nbsp;</th><th>&nbsp;강의실명&nbsp;</th><th>&nbsp;대강자 교수&nbsp;</th>
<th>권한실행</th>
</tr>
<% for(Rest r : list){ %>
<tr>
<td><%= r.getReceptionno() %></td>
<td><%= r.getId() %></td>
<td><%= r.getReason() %></td>
<td><%= r.getWay() %></td>
<td><%= r.getDayoff() %></td>
<td><%= r.getRday() %></td>
<td><%= r.getRtime() %></td>
<td><%= r.getLcode() %></td>
<td><%= r.getRoom() %></td>
<td><%= r.getSubid() %></td>
<td>
<button onclick="javascript:location.href='/beet/delrest?what=<%= r.getReceptionno() %>'">신청철회</button>
</td>
</tr>
<% } %>
</table>
<br>


<form action="/beet/requestr" method="post">
<table style="border:2px solid black;" id="inserttable">
<tr>
<td>과목 선택</td><td colspan="3">
<select name="lcode" class="inputbox" style="width:90%;" required>
<option value="TEST">교수만 신청가능합니다</option>
<% for(Lecture l : list3){ %>
<option value="<%= l.getLcode() %>"><%= l.getLname() %></option>
<% } %>
</select>
</td>
</tr>
<tr>
<td>휴보강일자</td><td colspan="3"><input type="date" name="dayoff" style="width:90%;" required></td>
</tr>
<tr>
<td>휴보강사유</td><td colspan="3"><input type="text" name="reason" style="width:90%;" required></td>
</tr>
<tr>
<td>수업방식</td><td><input type="radio" name="way" value="일반강의">일반강의</td>
<td><input type="radio" name="way" value="e강의">e - 강의</td>
<td><input type="radio" name="way" value="대리강의" checked>대리강의</td>
</tr>
<tr>
<td>보강일자</td><td colspan="3"><input type="date" name="rday" style="width:90%;" required></td>
</tr>
<tr>
<td>보강시간</td><td><input type="radio" name="rtime" value="1" required>1 시간</td>
<td><input type="radio" name="rtime" value="2">2 시간</td>
<td><input type="radio" name="rtime" value="전체" checked>전체</td>
</tr>
<tr>
<td>희망 강의실</td><td colspan="3">
<select name="room" class="inputbox" style="width:90%;" required>
<option value="101"> 101강의실 </option>
<option value="102"> 102강의실 </option>
<option value="103"> 103강의실 </option>
<option value="201"> 201강의실 </option>
<option value="202"> 202강의실 </option>
<option value="203"> 203강의실 </option>
</select>
</td>
</tr>
<tr>
<td>대강자 교수</td><td colspan="3">
<select name="subid" class="inputbox" style="width:90%;" required>
<% for(Lecture l : list2){ %>
<option value="<%= l.getProfessorid() %>"><%= l.getName() %></option>
<% } %>
</select>
</td>
</tr>
<tr>
<td colspan="3">
<i style="color:blue;">&nbsp;&nbsp;나는 로봇이 아닙니다.</i> <input type="radio" name="receptionno" checked required value="<%= ran.nextInt(num) + list.size() %>">
</td>
<td><button type="submit" name="userid" value="<%= ((Member)session.getAttribute("loginMember")).getId() %>">휴보강 신청</button></td>
</tr>
</table>
</form>
<b style="color:red;">
<% if(request.getAttribute("result") == null){ %>
명령 대기중....
<% }else if((request.getAttribute("result")).equals("ok")){ %>
휴보강 신청 성공!
<% }else if((request.getAttribute("result")).equals("good")){ %>
휴보강 철회 완료!
<% }else if((request.getAttribute("result")).equals("bad")){ %>
휴보강 철회 실패...
<% }else if((request.getAttribute("result")).equals("no")){ %>
휴보강 신청 실패....
<% }else{ %>
명령 대기중...
<% } %>
</b>

<% } %>

<br><button onclick="javascript:location.href='/beet/'">첫 화면으로!</button>
</body>
</html>