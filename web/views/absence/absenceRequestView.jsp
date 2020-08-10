<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="absence.model.vo.Absence, java.util.ArrayList"%>
<%@ page import="student.model.vo.Member" %>  
<%
	ArrayList<Absence> list = (ArrayList<Absence>)request.getAttribute("list");
%>
    
  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beet</title>

<style type="text/css">
.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: inherit;
	text-align: left;
	vertical-align: top;
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
	font-weight: bolder;
	overflow: hidden;
	padding: 10px 5px;
	word-break: normal;
}
</style>
</head>
<body>

<header>
<%@ include file="../common/header.jsp"%>
</header>
<%@ include file="/views/common/sessionChk.jsp" %>
<div align="center">
<h1>TEST BUTTON</h1>
<button onclick="javascript:location.href='/beet/selectaball'">ABSENCE MANAGEMENT ADMIN</button>
<button onclick="javascript:location.href='/beet/selectca'">CATEGORY VIEW</button>
<button onclick="javascript:location.href='/beet/selectss'">SCHOLARSHIP, SSBENEFITST SELECT STU</button>
<button onclick="javascript:location.href='/beet/views/scholarship/scholarshipManagementView.jsp'">SCHOLARSHIP MANAGEMENT ADMIN</button>
<button onclick="javascript:location.href='/beet/views/ssbenefit/ssbenefitstManagementView.jsp'">SSBENEFIT MANAGEMENT ADMIN</button>
</div>
<br><br><br><br>
<hr>
	<button type="submit"  onclick="javascript: location.href='/beet/selectab?studentid=<%=m.getId()%>'"> 조 회 </button>
<h1 align="center">조회 테이블</h1>
<h2 align="center"><%=m.getName() %> 님의 신청내역 조회</h2>
<form method="post" name="requestform">
<% if(list == null){ %>
<table class="tg"><th>신청 내역이 없습니다</th></table>
<% }else{ %>
	<% for(Absence aa : list){ %>
	<table>
	<tr><th>신청번호</th><th>신청날짜</th><th>취소가능날짜</th><th>승인여부</th> </tr>
	<tr><td><input type="radio" name="requestid" value="<%=aa.getRequestid()%>"><%=aa.getRequestid() %></td>
		<td><%=aa.getRequestdate() %></td>
		<td><%=aa.getLimitcanceldate() %></td>
		<td><%=aa.getApproval() %></td> 
	</tr>
	<% } %>
	</table>
	<input type="submit" value="조 회" onclick="javascript: requestform.action='/beet/selectab?studentid=<%=m.getId()%>'">
	<input type="submit" value="신청취소" onclick="javascript: requestform.action='/beet/deleteab'">
<% } %>
</form>





<hr>
<h1 align="center">신청테이블</h1>
<div>
<table align="center" width="1000" height="550" style="font-size: 15pt; background-color: pink;">

<% if(m.getAbsencewhether().equals("Y") && m.getAbsencecount() <= 6){ %>
<tr><th>현재 <%=m.getName() %>님은 휴학상태입니다</th></tr>
<tr>
	<td align="center">
		안 내 사 항 
		<br>
		영민씨 기능 완성되면 공지사항에 휴학, 복학 안내사항 글 하나 등록해서 뽑아온다.
		영민씨 기능 완성되면 공지사항에 휴학, 복학 안내사항 글 하나 등록해서 뽑아온다.
		영민씨 기능 완성되면 공지사항에 휴학, 복학 안내사항 글 하나 등록해서 뽑아온다.
	</td>
</tr>
<tr>
	<td align="center">
		재학 신청 취소는 내일까지 가능합니다.<br> 취소가능 날짜가 지나면 신청 취소는 불가능합니다
	</td>
</tr>
<tr><td align="center">
		<% if(m.getAbsencecount() != 6){ %>
		<button name="value" value="a" onclick="javascript:href='insertab?value=a&studentid=<%=m.getId()%>'">휴학신청</button>&nbsp;&nbsp;
		<% } %>
		<button name="value" value="b" onclick="javascript:href='insertab?value=a&studentid=<%=m.getId()%>'">복학신청</button></td></tr>
<% }else{ %>
<tr><th>현재 <%=m.getName() %>님은 재학상태입니다</th></tr>
<tr>
	<td align="center">
		안내사항 
		<br>
		영민씨 기능 완성되면 공지사항에 휴학, 복학 안내사항 글 하나 등록해서 뽑아온다.
		영민씨 기능 완성되면 공지사항에 휴학, 복학 안내사항 글 하나 등록해서 뽑아온다.
		영민씨 기능 완성되면 공지사항에 휴학, 복학 안내사항 글 하나 등록해서 뽑아온다.
	</td>
</tr>
<tr>
	<td align="center">
		휴학 신청 취소는 내일까지 가능합니다.<br> 취소가능 날짜가 지나면 신청 취소는 불가능합니다
	</td>
</tr>

<tr><td align="center"><button name="value" value="a" onclick="javascript:href='insertab?value=a&studentid=<%=m.getId()%>'">휴학신청</button></td></tr>
<% } %>
</table>
</div>
<footer>
<%@ include file="../common/footer.jsp"%>
</footer>
</body>
</html>