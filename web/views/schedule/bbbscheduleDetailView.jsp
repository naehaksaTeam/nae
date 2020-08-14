<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="schedule.model.vo.Schedule" %>
<%
	Schedule schedule = (Schedule)request.getAttribute("schedule");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>수정페이</title>
<script type="text/javascript"src="/beet/resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">


function update(){
	return true;
}
</script> 
<%@ include file="/views/common/header.jsp" %> 

</head>

<body>
<%@ include file="/views/common/side.jsp" %> 
</head>
<body>

<h1 align="center">학사일정 수정페이지</h1>
<form action="/beet/upsch?scheduleid=<%=schedule.getScheduleid() %>" method="post" class="upform" onsubmit="return update(); ">
<input type="hidden" name="scheduleid" value="<%=schedule.getScheduleid() %>"> 
<table id="disup" align="center" width="1000" cellspacing="5" cellpadding="0">
<tr>
<th>번호</th>
	<td style="text-align: left;">
	<input type="text" name="scheduleid" value="<%=schedule.getScheduleid() %>">
	</td>
</tr>
<tr>
<th >시작날짜</th>
	<td style="text-align: left;">
		<input type="number" name="schstartyear" value="<%= schedule.getSchstartyear() %>">
		<input type="number" name="schstartmonth"  value="<%=schedule.getSchstartmonth() %>">
		<input type="number" name="schstartdate" value="<%=schedule.getSchstartdate() %>">
	</td>
</tr>
<tr>
<th>끝날짜</th>
	<td style="text-align: left;">
		<input type="number" name="schendyear" min="2010" max="2050" value="<%=schedule.getSchendyear()%>">
		<input type="number" name="schendmonth" min="1" max="12" value="<%=schedule.getSchendmonth() %>">
		<input type="number" name="schenddate" min="1" max="31" value="<%=schedule.getSchenddate() %>">
	</td>
</tr>
<tr>
	<th>작성자</th>
	<td style="text-align: left;"><input type="text" name="adno" value="<%=m1.getId() %>"></td>
</tr>
<tr>
	<th>일정 내용</th>
	<td style="text-align: left;"><textarea rows="2" cols="70" name="schname"><%= schedule.getSchname() %></textarea></td></tr>
<tr>
	<th colspan="4" >
		<input type="submit"value="수정하기"> &nbsp;&nbsp;
		<input type="reset"value="작성취소" onclick="javascript:history.go(-1); return false;">&nbsp;&nbsp;
		<a href="/beet/index.jsp">시작 페이지</a>
		
	</th>
</tr>
</table>
</form>
</body>
</html>