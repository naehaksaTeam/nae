<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date, java.text.SimpleDateFormat, java.util.ArrayList,
				lectureScore.model.vo.LectureScore, student.model.vo.Member" %>   
 
<%
Member loginmember = (Member)session.getAttribute("loginMember");
ArrayList<LectureScore> list = (ArrayList<LectureScore>)request.getAttribute("list");
Date lastmodified = new Date();
SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd HH:mm:ss");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<h1>교수의 성적 입력 현황 출력해주는 페이지 (리스트로)  </h1>

<select class="semester" id="myselect" onchange="this.form.submit()">
            <option value="201901">201901학기</option>
            <option value="201902">201902학기</option>
            <option value="202001">202001학기</option>
</select>	
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;border-color:inherit;text-align:left;vertical-align:top}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
</style>
<script type="text/javascript" src="/test1/resources/js/jquery-3.5.1.min.js"></script>
<script>
	function validate(){
		
	}

</script> 

<table class="tg">
<thead>
  <tr>
    <th>순번</th>
    <th>학년학기</th>
    <th>이수구분</th>
    <th>과목번호</th>
    <th>과목명</th>
    <th>출결입력</th>
    <th>성적입력</th>
    <th>성적입력날짜</th>
  </tr>
</thead>
<tbody>
<% int i = 1; for (LectureScore lscore : list) { %>

  <tr>
  	<td><%= i %></td><% i += 1; %>
    <td><%= lscore.getSemester() %></td>
    <td><%=lscore.getCategory() %></td>
  	 <td><%=lscore.getLcode() %></td>
	<td id="lname"><%=lscore.getLname()%></td>
	<td>
	<form action="/beet/atnedit.p" method="post">
			<input type="submit" style="width:60pt;height:20pt;" value="출결관리">
			<input type="hidden" name="userid" value="<%=loginmember.getId() %>">
			<input type="hidden" name="lcode" value="<%=lscore.getLcode() %>">
			<input type="hidden" name="semester" value="">
		</form>
		</td>
	<td>
		<form action="/beet/scselect.p" method="post">
			<input type="submit" style="width:60pt;height:20pt;" value="성적관리">
			<input type="hidden" name="userid" value="<%=loginmember.getId() %>">
			<input type="hidden" name="lname" value="<%=lscore.getLname() %>">
		</form>
	</td>
	<td ><%=format1.format(lastmodified) %></td>
	<% } %>
  
  </tr>
</tbody>
</table>
<%-- <form action="/beet/scselect.p" method="post">
<input type="hidden" name="userid" value="<%=loginmember.getId() %>">
<input type="text" onchange="td_copy(lname.value)" >
<input type="submit" class="btn-sm" value="성적수정">
 </form> --%>
</body>
</html>