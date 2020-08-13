<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="student.model.vo.Member" %>
<%
	Member member1111 = (Member)session.getAttribute("loginMember");
	String message = (String)request.getAttribute("message");
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beet</title>
<script type="text/javascript">
function validate(){

	//암호와 암호 확인이 일치하지 않는지 확인함
		var pwdValue = document.getElementById("userpwd").value;
		var pwdValue2 = document.getElementById("userpwd2").value;
		
		if(pwdValue !== pwdValue2){
			alert("암호와 암호 확인의 값이 일치하지 않습니다.");
			document.getElementById("userpwd").select();
			return false;  //전송 취소함
		}

		return true;
}
function sendDelete(){
	
	//회원 탈퇴처리 서블릿 요청함.
	location.href = "/mdelete?id=<%= member1111.getId() %>";
	return false;
}
</script>
</head>
<body>
<hr>
<h1 align="center">마이페이지</h1>
<br>

<% if(message != null){ %>
	<%=message %>
<% } %>
<form method="post" action="/mupdate.cp?id=<%= member1111.getId()%>" onsubmit="return validate()">
<table id="outer" align="center" width="500" cellspacing="5" cellpadding="0">

<tr>
	<th>아이디</th>
	<td><%= member1111.getId() %></td>
</tr>

<tr>
	<th width="120">이 름</th>
	<td><%= member1111.getName() %></td>
</tr>

<tr>
	<th>주민등록번호</th>
	<td><%= member1111.getSsn() %></td>
</tr>

<tr>
	<th>비밀번호</th>
	<td><input type="password" name="userpwd" required></td>
</tr>
<tr>
	<th>비밀번호확인</th>
	<td><input type="password" name="userpwd2" required></td>
</tr>

<tr>
	<th>주소</th>
	<td><input type="text" name="address" value="<%= member1111.getAddress() %>"></td>
</tr>

<tr>
	<th>전화번호</th>
	<td><input type="text" name="phone" value="<%= member1111.getPhone() %>"></td>
</tr>


<tr>
	<th>이메일</th>
	<td><input type="text" name="email" value="<%= member1111.getEmail() %>"></td>
</tr>

<tr>
	<th>나의보물1호</th>
	<td><input type="text" name="treasure" value="<%= member1111.getTreasure() %>"></td>
</tr>

<%if (member1111.getId().substring(0,1).equals("A")){ %>
<tr>
	<th>입사일</th>
	<td><%= member1111.getAdminhiredate() %></td>
</tr>

<% }else if(member1111.getId().substring(0,1).equals("P")) {%>
<tr>
	<th>계열이름</th>
	<td><%= member1111.getCategoryname() %></td>
</tr>


<tr>
	<th>학과번호</th>
	<td><%= member1111.getMajorno() %></td>
</tr>

<% }else{ %>

<tr>
	<th>계열이름</th>
	<td><%= member1111.getCategoryname() %></td>
</tr>


<tr>
	<th>학과번호</th>
	<td><%= member1111.getMajorno() %></td>
</tr>

<tr>
	<th>입학일</th>
	<td><%= member1111.getEntrancedate() %></td>
</tr>

<tr>
	<th>휴학여부</th>
	<td><%= member1111.getAbsencewhether() %></td>
</tr>

<tr>
	<th>휴학횟수</th>
	<td><%= member1111.getAbsencecount() %></td>
</tr>
<% } %>

<tr>
	<th colspan="2">
	 
		<input type="submit" value="수정하기"> &nbsp;
		<input type="reset" value="수정취소"> &nbsp; 	
	
		
	</th>	
</tr>
</table>
</form>
	<center><button onclick="sendDelete();">탈퇴하기</button>  </center>
&nbsp; 

<hr>
<!-- 상대경로만 사용 가능함 -->

</body>
</html>