<%@ 
page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" 
import="java.util.ArrayList,lecture.model.vo.Lecture,lecture.model.vo.Major,student.model.vo.Member" 

%>
<% 
String who = (String)request.getAttribute("who"); 
ArrayList<Major> list = (ArrayList<Major>)request.getAttribute("list");
String userid = " ";
String username = " ";
String userssn = " ";
String useraddress = " ";
String phone = " ";
String email = " ";
String treasure = " ";
String gender = " ";
if(request.getAttribute("saved") != null){
	Member save = (Member)request.getAttribute("saved");
	userid = save.getId();
	username = save.getName();
	userssn = save.getSsn();
	useraddress = save.getAddress();
	phone = save.getPhone();
	email = save.getEmail();
	treasure = save.getTreasure();
	gender = save.getGender();
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test1</title>
<style type="text/css">
table#outer { border : 2px solid navy;  }
</style>
<script>
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
	 
function check1() { //중복체크
	 var frm = document.joinscreen;

	 if (frm.id.value.length < 3) {
		  alert("아이디는 3자 이상 입력해주세요");
	 } else {
	  window.open("./joinid.jsp?id=" + frm.id.value, "","width=10px,height=10px");
	 }
}	  
</script>
</head>
<body>
<%= who %>
<center>
<h1 align="center">회원 가입 페이지</h1>
<br>
<form method="post" action="/beet/minsert.cp" onsubmit="return validate();">

<% if(who.equals("admin")){ %>
<table id="outer" align="center" width="500" cellspacing="5" cellpadding="0">
<tr>
	<th colspan="2">회원 정보를 입력해 주세요. (* 표시는 필수입력 항목입니다.)</th>	
</tr>
<tr class="">
	<th width="120">*이 름</th>
	<td><input type="text" name="username" value="<%= username %>" placeholderrequired></td>
</tr>
<tr class="">
	<th>*아이디</th>
	<td><input type="text" name="userid" value="<%= userid %>" required> &nbsp; 
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
	<td><input type="ssn" name="userssn" id="userssn" value="<%= userssn %>" required></td>
</tr>
<tr>
	<th>*주소</th>
	<td><input type="address" name="useraddress" id="useraddress" value="<%= useraddress %>" required></td>
</tr>
<tr>
	<th>전화번호</th>
	<td><input type="tel" name="phone" value="<%= phone %>"></td>
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
	<td><input type="email" name="email" value="<%= email %>" required></td>
</tr>
<tr>
	<th>*나의보물1호</th>
	<td><input type="treasure" name="treasure" value="<%= treasure %>" required></td>
</tr>
<tr>
	<th width="120">임직원 입사일</th>
	<td>
	<input type="date" name="adminhiredate">
	</td>
</tr>
</tr>
<tr Style="display:none;">
<th></th><td><input type="radio" name="who" value="<%= who %>" checked></td>
</tr>
<tr>
	<th colspan="2">
		<input type="submit" value="가입하기"> &nbsp; 
		<input type="reset" value="작성취소"> &nbsp; 
		<a href="/beet/index.jsp">시작 페이지로</a>
	</th>	
</tr>
</table>
<% }else if(who.equals("professor")){ %>
<table id="outer" align="center" width="500" cellspacing="5" cellpadding="0">
<tr class="">
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
<tr class="">
	<th width="120">*이 름</th>
	<td><input type="text" name="username" value="<%= username %>" required></td>
</tr>
<tr class="">
	<th>*아이디</th>
	<td><input type="text" name="userid" value="<%= userid %>" required> &nbsp; 
	<input type="button" value="중복체크" onclick="return false;"></td>
</tr>
<tr class="">
	<th>*암 호</th>
	<td><input type="password" name="userpwd" id="userpwd" required></td>
</tr>
<tr class="">
	<th>*암호확인</th>
	<td><input type="password" id="userpwd2" required></td>
</tr>
<tr class="">
	<th>*주민등록번호</th>
	<td><input type="ssn" name="userssn" id="userssn" value="<%= userssn %>" required></td>
</tr>
<tr class="">
	<th>*주소</th>
	<td><input type="address" name="useraddress" id="useraddress" value="<%= useraddress %>" required></td>
</tr>
<tr class="">
	<th>전화번호</th>
	<td><input type="tel" name="phone" value="<%= phone %>"></td>
</tr>
<tr class="">
	<th>*성별</th>
	<td>
		<input type="radio" name="gender" value="M" checked>남&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="gender" value="F">여
	</td>
</tr>
<tr class="">
	<th>*이메일</th>
	<td><input type="email" name="email" value="<%= email %>" required></td>
</tr>
<tr class="">
	<th>*나의보물1호</th>
	<td><input type="treasure" name="treasure" value="<%= treasure %>" required></td>
</tr>
<tr class="pp" class="aa">
	<th width="120">장학금 이름</th>
	<td><input type="text" name="ssname"></td>
</tr>
</tr>
<tr Style="display:none;">
<th></th><td><input type="radio" name="who" value="<%= who %>" checked></td>
</tr>
<tr class="">
	<th colspan="2">
		<input type="submit" value="가입하기"> &nbsp; 
		<input type="reset" value="작성취소"> &nbsp; 
		<a href="/beet/index.jsp">시작 페이지로</a>
	</th>	
</tr>
</table>
<% }else{ %>
<table id="outer" align="center" width="500" cellspacing="5" cellpadding="0">
<tr class="">
	<th colspan="2">회원 정보를 입력해 주세요. (* 표시는 필수입력 항목입니다.)</th>	
</tr>
<tr class="aa">
	<th>*학과</th>
	<td>
		<select name="major" style="width:50%;" required>
		<% for(Major m : list){ %>
		<option value="<%= m.getMajorno() + "," + m.getCategoryname() %>">
		<%= m.getMajorname() %>
		</option>
		<% } %>
		</select>
	</td>
</tr>
<tr class="">
	<th width="120">*이 름</th>
	<td><input type="text" name="username" value="<%= username %>" required></td>
</tr>
<tr class="">
	<th>*아이디</th>
	<td><input type="text" name="userid" value="<%= userid %>" required> &nbsp; 
	<input type="button" value="중복체크" onclick="return false;"></td>
</tr>
<tr class="">
	<th>*암 호</th>
	<td><input type="password" name="userpwd" id="userpwd" required></td>
</tr>
<tr class="">
	<th>*암호확인</th>
	<td><input type="password" id="userpwd2" required></td>
</tr>
<tr class="">
	<th>*주민등록번호</th>
	<td><input type="ssn" name="userssn" id="userssn" value="<%= userssn %>" required></td>
</tr>
<tr class="">
	<th>*주소</th>
	<td><input type="address" name="useraddress" id="useraddress" value="<%= useraddress %>" required></td>
</tr>
<tr class="">
	<th>전화번호</th>
	<td><input type="tel" name="phone" value="<%= phone %>"></td>
</tr>
<tr class="">
	<th>*성별</th>
	<td>
		<input type="radio" name="gender" value="M" checked>남&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="gender" value="F">여
	</td>
</tr>
<tr class="">
	<th>*이메일</th>
	<td><input type="email" name="email" value="<%= email %>" required></td>
</tr>
<tr class="">
	<th>*나의보물1호</th>
	<td><input type="treasure" name="treasure" value="<%= treasure %>" required></td>
</tr>
<tr class="pp" class="aa">
	<th width="120">입학날짜</th>
	<td>
	<input type="date" name="entrancedate" >
	</td>
	
</tr>
<tr class="pp" class="aa">
	<th width="120">장학금 이름</th>
	<td><input type="text" name="ssname"></td>
</tr>
<tr Style="display:none;">
<th></th><td><input type="radio" name="who" value="<%= who %>" checked></td>
</tr>
<tr class="">
	<th colspan="2">
		<input type="submit"> &nbsp; 
		<input type="reset" value="작성취소"> &nbsp; 
		<a href="/beet/index.jsp">시작 페이지로</a>
	</th>	
</tr>
</table>
<% } %>

</form>

<b style="color:red;font-size:13pt">
<% if(request.getAttribute("result") == null){ %>
회원가입 버튼을 눌러주세요!
<% }else if(who.equals("professor")){ %>
교수Id는 앞에 P가 반드시 붙어야 합니다.
<% }else{ %>
임직원(관리자)Id는 앞에 A가 반드시 붙어야 합니다.
<% } %>
</b>

</center>
</body>
</html>