<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ssbenefitst.model.vo.Ssbenefitst, java.util.ArrayList"%>
<%
	ArrayList<Ssbenefitst> list = (ArrayList<Ssbenefitst>)request.getAttribute("list");
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

<button onclick="javascript:location.href='/beet/selectbenest'">장학금수혜학생 조회</button>
<table class="tg">
<tr><th colspan="3">조회테이블</th></tr>
<% if(list != null){ %>
	<% for(Ssbenefitst ssst : list){ %>
	<tr><th><%=ssst.getBenefitterm() %></th>
		<td><%=ssst.getStudentid() %></td>
		<td><%=ssst.getSsname() %></td> </tr>
	<% } %>
<% } %>
</table>

<br><br><br><br>

<form action="javascript:location.href='/beet/deletebenest'" method="post">
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
</form>

<br><br><br><br>

<form action="javascript:location.href='/beet/updatebenest'" method="post">
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

</form>

<br><br><br><br>

<form action="javascript:location.href='/beet/insertbenest'" method="post">
<table class="tg">
<tr><th colspan="2">추가테이블</th></tr>

<tr><th>수혜학기</th><td><input class="form-control" type="number" placeholder="ex)202001" 
						maxlength="6" oninput="numberMaxLength(this);"/></td></tr>
<tr><th>학생번호</th><td><input type="text" name="studentid"></td></tr>
<tr><th>장학금명</th><td><input type="text" name="ssname"></td></tr>
<tr><td colspan="2" align="center"><input type="submit" value="장학금수혜학생 추가"></td></tr>
</table>
</form>
</div>
<footer>
<%@ include file="../common/footer.jsp"%>
</footer>
</body>
</html>