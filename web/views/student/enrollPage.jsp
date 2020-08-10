<%@ 
page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" 
import="java.util.ArrayList,lecture.model.vo.Lecture,lecture.model.vo.Major" 
errorPage="../../views/common/error.jsp" 
%>
<% 
String who = (String)request.getAttribute("who"); 
ArrayList<Major> list = (ArrayList<Major>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test1</title>
<style type="text/css">
table#outer { border : 2px solid navy;  }
 
 function check1() { //중복체크
  var frm = document.joinscreen;

  if (frm.id.value.length < 3) {
   alert("아이디는 3자 이상 입력해주세요");
  }  else {
   window.open("./joinid.jsp?id=" + frm.id.value, "",
     "width=10px,height=10px");

  }
</style>
<script>
//실제 프로젝트
	function validate(){
		//유효성 검사 코드 작성함
		//서버 컨트롤러로 전송할 값들이 요구한 조건을 모두 만족하였는지 검사함

		//암호와 암호 확인이 일치하지 않는지 확인함
		var pwdValue = document.getElementById("userpwd").value;
		var pwdValue2 = document.getElementById("userpwd2").value;

		if(pwdValue !== pwdValue2){
			alert("암호와 암호 확인의 값이 일치하지 않습니다.");
			document.getElementById("userpwd").select();
			return false;  //전송 취소함
		}

		return true;  //전송함
	}
</script>
</head>
<body>
<center>
<h1 align="center">회원 가입 페이지</h1>
<br>
<form method="post" action="/beet/minsert" onsubmit="return validate();">
<table id="outer" align="center" width="500" cellspacing="5" cellpadding="0">
<tr>
	<th colspan="2">회원 정보를 입력해 주세요. (* 표시는 필수입력 항목입니다.)</th>	
</tr>
<tr>
	<th>*학과</th>
	<td>
		<select name="major" style="width:50%;" required>
		<% for(Major m : list){ %>
		<option value="<%= m.getMajorno() + "," + m.getCategoryname() + "," + who %>">
		<%= m.getMajorname() %>
		</option>
		<% } %>
		</select>
	</td>
</tr>
<tr>
	<th width="120">*이 름</th>
	<td><input type="text" name="username" required></td>
</tr>
<tr>
	<th>*아이디</th>
	<td><input type="text" name="userid" required> &nbsp; 
	<input type="button" value="중복체크" onclick="return false;"></td>
</tr>
<tr>
	<th>*암 호</th>
	<td><input type="password" name="userpwd" id="userpwd" required></td>
</tr>
<tr>
	<th>*암호확인</th>
	<td><input type="password" id="userpwd2" required></td>
</tr>
<tr>
	<th>*주민등록번호</th>
	<td><input type="ssn" name="userssn" id="userssn" required></td>
</tr>
<tr>
	<th>*주소</th>
	<td><input type="address" name="useraddress" id="useraddress" required></td>
</tr>
<tr>
	<th>전화번호</th>
	<td><input type="tel" name="phone"></td>
</tr>
<tr>
	<th>*성별</th>
	<td>
		<input type="radio" name="gender" value="M" checked>남&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="gender" value="F">여
	</td>
</tr>
<tr>
	<th>*이메일</th>
	<td><input type="email" name="email" required></td>
</tr>
<tr>
	<th>*나의보물1호</th>
	<td><input type="treasure" name="treasure" required></td>
</tr>
<tr>
	<th width="120">임직원 입사일</th>
	<td><input type="text" name="adminhiredate"></td>
</tr>
<tr>
	<th width="120">입학날짜</th>
	<td><input type="text" name="entrancedate"></td>
</tr>
<tr>
	<th width="120">휴학여부</th>
	<td><input type="text" name="absencewhether"></td>
</tr>
<tr>
	<th width="120">휴학카운트</th>
	<td><input type="text" name="absencecount"></td>
</tr>
<tr>
	<th width="120">장학금 이름</th>
	<td><input type="text" name="ssname"></td>
</tr>
<tr>
	<th colspan="2">
		<input type="submit" value="가입하기"> &nbsp; 
		<input type="reset" value="작성취소"> &nbsp; 
		<a href="/beet/index.jsp">시작 페이지로</a>
	</th>	
</tr>
</table>
</form>

<b style="color:red;">
<% if(request.getAttribute("result") == null){ %>
	
<% }else{ %>
회원가입 실패...
<% } %>
</b>

</center>
</body>
</html>