<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="termScore.model.vo.TermScore, student.model.vo.Member " %>
<%@ include file="/views/common/sessionChk.jsp" %>
<%
	Member loginmember = (Member)session.getAttribute("loginMember");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<style>

input[type=submit] {
    background-color: #4CAF50;
    border: 0;
    color: white;
    padding: 10px 24px;
    cursor: pointer;
    float: left;
}
input[type=submit]	:after {
    content: "";
    clear: both;
    display: table;
}

input[type=submit]:not(:last-child) {
    border-right: none;
}

input[type=submit]:hover {
    background-color: #3e8e41;
}
</style>

<body>
<script type="text/javascript">
function twosend(){
	document.tsForm.action="/beet/tosselect";
	document.tsForm.submit();
	document.tsForm.action="/beet/tesselect";
	document.tsForm.submit();
}
</script>
<h1>출결 성적 등록</h1>
<h3>학생용</h3>
<div class="학생 조회용">
<form action="/beet/mylctr" method="post">
<input type="hidden" name="userid" value="<%=loginmember.getId() %>">
<input type="submit" class="btn-sm" value="나의강의조회">
<!-- 강의목록 join시 중복되는 문제 해결 필요 -->
 </form>

<form action="/beet/tosselect" method="post">
<input type="hidden" name="userid" value="<%=loginmember.getId() %>">
<input type="submit" class="btn-sm" value="전체성적조회">
 </form>
  
<form action="/beet/tesselect" method="post">
<input type="hidden" name="userid" value="<%=loginmember.getId() %>">
<input type="submit" class="btn-sm" value="학기성적조회">
</form>
  
<form action="/beet/lsselect" method="post">
<input type="hidden" name="userid" value="<%=loginmember.getId() %>">
<input type="submit" class="btn-sm" value="과목별성적조회">
<!-- 학기 ajax로 selected 값 받아서 동적페이지 구현할 예정  -->
</form>  
</div>

<br>
<br>
<h3>교수용</h3>
<div class="교수 조회용">
<form action="/beet/scselect.prof" method="post">
<input type="hidden" name="userid" value="<%=loginmember.getId() %>">
<input type="submit" class="btn-sm" value="나의강의목록">
 </form>

<form action="/beet/scinsert.prof" method="post">
<input type="hidden" name="userid" value="<%=loginmember.getId() %>">
<input type="submit" class="btn-sm" value="교수성적입력">
 </form>
  
<form action="/beet/tesselect" method="post">
<input type="hidden" name="userid" value="<%=loginmember.getId() %>">
<input type="submit" class="btn-sm" value="학기성적조회">
</form>
  
<form action="/beet/lsselect" method="post">
<input type="hidden" name="userid" value="<%=loginmember.getId() %>">
<input type="submit" class="btn-sm" value="과목별성적조회">
<!-- 학기 ajax로 selected 값 받아서 동적페이지 구현할 예정  -->
</form>  
</div>


</body>
</html>