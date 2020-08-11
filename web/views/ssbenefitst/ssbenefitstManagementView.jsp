<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ssbenefitst.model.vo.Ssbenefitst, java.util.ArrayList"%>
<%
	ArrayList<Ssbenefitst> list = (ArrayList<Ssbenefitst>)request.getAttribute("list");
	Ssbenefitst stst = (Ssbenefitst)request.getAttribute("ssst");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beet</title>
<script>
    function numberMaxLength(e){
        if(e.value.length > e.maxLength){
            e.value = e.value.slice(0, e.maxLength);
        }
    }
</script>
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
<h1>장학금수혜학생 관리 페이지</h1>

<button onclick="javascript:location.href='/beet/selectbeneall'">전체 조회</button>
<% if(list != null){ %>
<table class="tg">
<tr><th colspan="3">조회테이블</th></tr>
	<% for(Ssbenefitst ssst : list){ %>
	<tr><th><input type="radio" name="benefitterm" value="<%=ssst.getBenefitterm() %>" readonly><%=ssst.getBenefitterm() %></th>
		<td><%=ssst.getStudentid() %></td>
		<td><%=ssst.getSsname() %></td> </tr>
	<% } %>
</table>	
	<form action="/beet/selectonessst" method="post">
	학기입력<input class="form-control" type="number" placeholder="ex)202001" 
						name="benefitterm" maxlength="6" oninput="numberMaxLength(this);"/>
	학번입력<input type="text" name="studentid">
	<input type="submit" value="검 색">
	</form>
<% } %>

<% if(stst != null){ %>
	<table class="tg">
		<tr><th colspan="3">조회하신 결과입니다</th></tr>
		<tr><th>수혜학기</th><th>학 번</th><th>장학금명</th></tr>
		<tr><th><%=stst.getBenefitterm() %></th>
		<td><%=stst.getStudentid() %></td>
		<td><%=stst.getSsname() %></td> </tr>
	</table>
<% } %>


<%-- <form action="javascript:location.href='/beet/deletebenest'" method="post">
<table class="tg">
<tr><th colspan="3">삭제테이블</th></tr>
<% if(list != null){ %>
	<% for(Ssbenefitst ssst : list){ %>
	<tr><th><input type="radio" name="benefitterm" value="<%=ssst.getBenefitterm() %>" readonly><%=ssst.getBenefitterm() %></th>
		<td><input type="text" name="studentid" value="<%=ssst.getStudentid() %>" readonly><%=ssst.getStudentid() %></td>
		<td><%= ssst.getSsname() %></td> </tr>
	<% } %>
	<tr><td colspan="3"><input type="submit" value="장학금수혜학생 삭제"></td></tr>
<% } %>
</table>
</form> --%>

<br><br><br><br>

<%-- <form action="javascript:location.href='/beet/updatebenest'" method="post">
<table class="tg">
<tr><th colspan="3">수정테이블</th> </tr>
<% if(list != null){ %>
	<% for(Ssbenefitst ssst : list){ %>
	<tr><th><input type="hidden" name="originterm" value="<%=ssst.getBenefitterm() %>"></th>
		<th><input type="hidden" name="originid" value="<%=ssst.getStudentid() %>"></th>
		
		<th><input type="text" name="benefitterm"><%=ssst.getBenefitterm() %></th>
		<td><input type="text" name="studentid"><%=ssst.getStudentid() %></td>
		<td><input type="number" name="ssname"><%=ssst.getSsname() %></td>
	</tr>
	<% } %>
	<tr><td colspan="3"><input type="submit" value="장학금수혜학생 수정"></td></tr>
<% } %>
</table>

</form> --%>


장학금조회도 해야함

<form action="/beet/insertscoress" method="post">
<table class="tg">
<tr><th colspan="2">성적장학금 입력</th></tr>
<tr><th>성적검색할 학기</th><td><input class="form-control" type="number" placeholder="ex)202001" 
						name="term1" maxlength="6" oninput="numberMaxLength(this);"/></td></tr>
<tr><th>성적등수입력</th><td>시작등수<input type="number" name="startrank" maxlength="4" oninput="numberMaxLength(this);">
						 끝등수<input type="number" name="endrank" maxlength="4" oninput="numberMaxLength(this);"></td></tr>
<tr><th>장학금명</th><td><input type="text" name="ssname1"></td></tr>
<tr><td colspan="2" align="center"><input type="submit" value="장학금수혜학생 추가"></td></tr>
</table>
</form>


</div>
<footer>
<%@ include file="../common/footer.jsp"%>
</footer>
</body>
</html>