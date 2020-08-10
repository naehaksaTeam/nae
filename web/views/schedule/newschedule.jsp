<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="schedule.model.vo.Schedule, java.util.ArrayList, java.sql.Date" %>
<%
	ArrayList<Schedule> list = (ArrayList<Schedule>)request.getAttribute("list");
	int listCount = ((Integer)request.getAttribute("listCount")).intValue(); //객체를 인트로 바꾸는 것
	int startPage =  ((Integer)request.getAttribute("startPage")).intValue();
	int endPage =  ((Integer)request.getAttribute("endPage")).intValue();
	int maxPage = ((Integer)request.getAttribute("maxPage")).intValue();
	int currentPage = ((Integer)request.getAttribute("currentPage")).intValue();
	Schedule schedule = (Schedule)request.getAttribute("schedule");
%>  
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

<style type="text/css">
#dis{ 
/* display 안보이게 해라 */
	display : none;
	/* background : gray; */
	font-size : 12pt; 
}

</style>


</style>
<script type="text/javascript"src="/nea/resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">

function dis(){
    if($('#dis').css('display') == 'none'){
    $('#dis').show();
    }
}
function disc(){
  
    $('#dis').hide();
    
}

function validate(){
	return true;
}


</script>


</head>
<body>
 
<h1 align="center">관리자 페이지</h1>
 <table align="center" border="1" cellspacing="0" width="800">
<tr>
<th>번호</th><th>날짜</th><th>내용</th><th></th>
</tr>
<% for(Schedule s : list) { %>

<tr>
<td align="center"><%=s.getScheduleid() %></td>
<td align="center"><%=s.getSchstartyear() %>년 <%=s.getSchstartmonth() %>월 <%=s.getSchstartdate() %>일 ~ <%=s.getSchendyear() %>년 <%=s.getSchendmonth() %>월 <%=s.getSchenddate() %>일 </td>
<td align="center"><%=s.getSchname() %></td>
<td>&nbsp;
	<button onclick="javascript:location.href='/nea/schdetail?scheduleid=<%=s.getScheduleid() %>';">수정페이지로 이동</button>&nbsp; 
	<button onclick="javascript:location.href='/nea/schdel?scheduleid=<%=s.getScheduleid() %>';">삭제하기</button>&nbsp;
</tr>
<% } %>
</table>
<br>
 <div style="text-align:center;">
<% if(currentPage <= 1){ %>
	[맨처음]&nbsp;
<% }else{ %>
	<a href="/nea/adsch">[맨처음]</a>
<% } %>

<!-- 현재 페이지가 속한 그룹의 숫자 출력 처리 -->
<% for(int p = startPage; p <= endPage; p++){ 
	if(p == currentPage){ %>
	<font color="1e90ff" size="4"><b>[<%= p %>]</b></font>
	<% }else{ %>
	<a href="/nea/adsch?page=<%= p %>"><%= p %></a>
<% }} %>


<% if(currentPage >= maxPage){ %>
	[맨끝]&nbsp;
<% }else{ %>
	<a href="/nea/adsch?page=<%= maxPage %>">[맨끝]</a>
<% } %>
<button onclick="dis()">새로등록</button>
<br>
<br>
 <form action="/nea/newsche" method="post" class="nform" onsubmit="return validate();">
<!-- <input type="hidden" name="action" value="new"> -->
<table id="dis" align="center" width="800" cellspacing="5" cellpadding="0">
<tr>
<th >시작날짜</th>
	<td style="text-align: left;">
		<input type="number" name="schstartyear" min="2010" max="2050" value="2020">
		<input type="number" name="schstartmonth" min="1" max="12" value="1">
		<input type="number" name="schstartdate" min="1" max="31" value="1">
	</td>
</tr>
<tr>
<th>끝날짜</th>
	<td style="text-align: left;">
		<input type="number" name="schendyear" min="2010" max="2050" value="2020">
		<input type="number" name="schendmonth" min="1" max="12" value="1">
		<input type="number" name="schenddate" min="1" max="31" value="1">
	</td>
</tr>
<tr>
	<th>작성자</th>
	<td style="text-align: left;"><input type="text" name="adno" value="A003"></td>
</tr>
<tr>
	<th>일정 내용</th>
	<td style="text-align: left;"><textarea rows="2" cols="70" name="schname"></textarea></td></tr>
<tr>
	<th colspan="3" >
		<input type="submit"value="등록하기"> &nbsp;&nbsp;
		<input type="reset"value="작성취소" onclick="disc()">&nbsp;&nbsp; &nbsp;&nbsp;
		<a href="/nea/index.jsp">시작 페이지</a>
		
	</th>
</tr>
</table>
</form>

 
</body>
</html>


