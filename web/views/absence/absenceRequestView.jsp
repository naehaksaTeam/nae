<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="absence.model.vo.Absence, java.util.ArrayList"%>
<%@ page import="student.model.vo.Member" %>  
<%
	ArrayList<Absence> list = (ArrayList<Absence>)request.getAttribute("list");
	Member mm22 = (Member)session.getAttribute("loginMember");
%>
    

    
<!DOCTYPE html>
<html>
<head>

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
<%@ include file="../common/side.jsp"%>
<div align="center">
<h1>TEST BUTTON</h1>

<button onclick="javascript:location.href='/beet/views/absence/UIUIUI.jsp'">[ UI 테스트 ] </button>

<button onclick="javascript:location.href='/beet/selectaball'">[관리자] ABSENCE 휴학/복학 </button>
<button onclick="javascript:location.href='/beet/selectca'">[관리자] CATEGORY VIEW 카테고리관리</button>
<button onclick="javascript:location.href='/beet/selectbenest?studentid=<%=mm22.getId() %>'">[학 생] SCHOLARSHIP 장학조회 </button>
<button onclick="javascript:location.href='/beet/selectss'">[관리자] SCHOLARSHIP 장학관리</button>
<button onclick="javascript:location.href='/beet/selectbeneall'">[관리자] SSBENEFIT 장학금수혜학생관리</button>
</div>
<br><br><br><br>
<hr>
	<button type="submit"  onclick="javascript: location.href='/beet/selectab?studentid=<%=mm22.getId()%>'"> 조 회 </button>
<h1 align="center">조회 테이블</h1>
<h2 align="center"><%=mm22.getName() %> 님의 신청내역 조회</h2>
<form method="post" name="requestform">
<% if(list == null){ %>
<table class="tg"><tr><th>신청 내역이 없습니다</th></tr></table>
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
	<input type="submit" value="조 회" onclick="javascript: requestform.action='/beet/selectab?studentid=<%=mm22.getId()%>'">
	<input type="submit" value="신청취소" onclick="javascript: requestform.action='/beet/deleteab'">
<% } %>
</form>





<hr>
<h1 align="center">신청테이블</h1>
<div>
<table align="center" width="1000" height="550" style="font-size: 15pt; background-color: pink;">

<% if(mm22.getAbsencewhether().equals("Y") && mm22.getAbsencecount() <= 6){ %>
<tr><th>현재 <%=mm22.getName() %>님은 휴학상태입니다</th></tr>
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
		<% if(mm22.getAbsencecount() != 6){ %>
		<button name="value" value="a" onclick="javascript:location.href='/beet/insertab?value=a&studentid=<%=mm22.getId()%>'">휴학신청</button>&nbsp;&nbsp;
		<% } %>
		<button name="value" value="b" onclick="javascript:location.href='/beet/insertab?value=b&studentid=<%=mm22.getId()%>'">복학신청</button></td></tr>
<% }else{ %>
<tr><th>현재 <%=mm22.getName() %>님은 재학상태입니다</th></tr>
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

<tr><td align="center"><button name="value" value="a" onclick="javascript:location.href='/beet/insertab?value=a&studentid=<%=mm22.getId()%>'">휴학신청</button></td></tr>
<% } %>
</table>
</div>

<footer>
<%@ include file="../common/footer.jsp"%>
</footer>
</body>
</html>