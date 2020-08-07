<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.model.vo.Member, java.util.ArrayList" %>
<%
	ArrayList<Member> list = (ArrayList<Member>)request.getAttribute("list");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beet</title>
</head>
<body>
<%@ include file="../common/header.jsp" %>
<h1 align="center">전체 회원 관리 페이지</h1>
<h2 align="center">현재 회원수 : <%= list.size() %> 명</h2>
<center>
	<button onclick="javascript:location.href='/beet/mlist'">전체 보기</button>

<br>
<!--  항목별 검색 기능 추가 -->
<!--  검색 기능 영역 끝 -->

<!--  radio 버튼: input에 쓰면 체크가능하게바뀜 (여러개가능)  fileset : 테두리 박스 만듬 항목별 영역묶음   css/javacript선택을 쉽게하기위해 id입력--> <!-- legend :  -->
<fieldset id="ss">
<legend>검색할 항목을 선택하세요.</legend>
<input type="radio" name="item" id="uid"> 회원 아이디  &nbsp;
<input type="radio" name="item" id="uage"> 연령대  &nbsp;
<input type="radio" name="item" id="uenroll"> 가입날짜  &nbsp;
<input type="radio" name="item" id="ulogok"> 로그인 제한 여부 &nbsp;
</fieldset>


<br>
<!--  회원 아이디로 검색 폼태그 -->
<form action="/beet/msearch" method="post" id="idform" class="sform">
<input type="hidden" name="action" value="id">
<fieldset>
<legend>검색할 아이디를 입력하세요.</legend>
<input type="search" name="keyword"> &nbsp;
<input type="submit" value="검색">
</fieldset>
</form>

<!-- 연령대 검색 폼태그 -->
<form action="/beet/msearch" method="post" id="ageform" class="sform">
<input type="hidden" name="action" value="age">
<fieldset>
<legend>검색할 연령대를 선택하세요.</legend>
<input type="radio" name="keyword" value="20"> 20대  &nbsp;
<input type="radio" name="keyword" value="30"> 30대  &nbsp;
<input type="radio" name="keyword" value="40"> 40대 &nbsp;
<input type="radio" name="keyword" value="50"> 50대  &nbsp;
<input type="radio" name="keyword" value="60"> 60대이상  &nbsp;
<input type="submit" value="검색">
</fieldset>
</form>
<!-- 가입날짜 검색 폼태그 -->
<form action="/beet/msearch" method="post" id="enrollform" class="sform">
<input type="hidden" name="action" value="enrolldate">
<fieldset>
<legend>검색할 가입날짜를 선택하세요.</legend> <!-- 가입날짜 : ~부터 ~일까지  >> date타입 사용 begin 줄부터 다음줄 end까지-->
<input type="date" name="begin" > ~  
<input type="date" name="end" >  &nbsp;
<input type="submit" value="검색">
</fieldset>
</form>
<!-- 로그인 제한/가능 검색  폼태그 -->
<form action="/beet/msearch" method="post" id="logokform" class="sform">
<input type="hidden" name="action" value="logok">
<fieldset>
<legend>검색할 로그인 제한/가능을 선택하세요.</legend>
<input type="radio" name="keyword" value="Y"> 로그인가능  &nbsp;
<input type="radio" name="keyword" value="N"> 로그인제한  &nbsp;
<input type="submit" value="검색">
</fieldset>
</form>
</center>
<br>
<table align="center" border="1" cellspacing="0" cellpadding="3">
<tr>
<th>아이디</th><th>이름</th><th>성별</th><th>나이</th><th>전화번호</th>
<th>이메일</th><th>취미</th>
<th>하고 싶은 말</th><th>가입날짜</th><th>마지막 수정날짜</th>
<th>로그인 제한 여부</th>
</tr>
<% for(Member m : list){ %>
<tr>
<td><%= m.getUserid() %></td>
<td><%= m.getUsername() %></td>
<td><%= (m.getGender().equals("M"))? "남자" : "여자" %></td>
<td><%= m.getAge() %></td>
<td><%= m.getPhone() %></td>
<td><%= m.getEmail() %></td>
<td><%= m.getHobby() %></td>
<td><%= m.getEtc() %></td>
<td><%= m.getEnrollDate() %></td>
<td><%= m.getLastModified() %></td>
<td>
<% if(m.getLoginok().equals("Y")){ %>
<input type="radio" name="loginok_<%= m.getUserid() %>" onchange="changeLogin(this);"
 value="true" checked> 가능 &nbsp; 
<input type="radio" name="loginok_<%= m.getUserid() %>" onchange="changeLogin(this);"
value="false"> 제한
<%	}else{ %>
<input type="radio" name="loginok_<%= m.getUserid() %>" onchange="changeLogin(this);"
 value="true" >  가능 &nbsp; 
<input type="radio" name="loginok_<%= m.getUserid() %>" onchange="changeLogin(this);"
value="false" checked> 제한
<% 	} %>
</td>
</tr>
<% } %>
</table>
<hr>
<%@ include file="../common/footer.jsp" %>
</body>
</html>