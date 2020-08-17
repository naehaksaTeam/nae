//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
<!DOCTYPE html>

<html lang="ko">



<head>

<title>로그인 패이지</title>

</head>



<body>

<fieldset>

<form id="target" action="orderenroll" mehtod="post">

<ul>

<li>아이디<input type="text" name="userId" id="userId" /><span id='idout'></span></li>

<li>비밀글 패스워드<input type="password" name="pw" id="pw" /></li>

<li>비밀글 패스워드확인<input type="password" id="pw_check" /><span id='pwout'></span></li>

<li>문의유형<br>

<input type="radio" name="type" id="item" value="상품" required><label for="in1">상품</label>

<input type="radio" name="type" id="delivery" value="배송"><label for="in2">배송</label>

<input type="radio" name="type" id="etc" value="기타"><label

for="in3">기타</label>



</li>

<li>이메일

<input type="email" name="email" id="email" required/>

</li>



<li>전화번호

<select name="tel1" id="tel1"  >

<option value="010">010</option>

<option value="010">011</option>

<option value="016">016</option>

<option value="019">019</option>

</select>

<input type="text" size="4" maxlength="4" id="tel2" name="tel2" required/>

<input type="text" size="4" maxlength="4" id="tel3" name="tel3" required/>

</li>

<li>

<input type="submit" value="문의등록">

<input type="reset" value="취소">

</li>

</ul>

</form>

</fieldset>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<script>


$(function () {

$('#userId').blur(function () {

var value = $('#userId').val().trim();

var reg = new RegExp('^[A-Z][a-z0-9]{4,}');

if (!reg.test(value)) {

$('#idout').html("4글자이상, 첫글자는 대문자이고, 영소문자, 숫자만 가능");

$('#userId').val('');

$('#userId').focus();

}

else{

$('#idout').html('');

}

});

function pwdChk(){

var pw1 = $('#pw').val().trim();

var pw2 = $('#pw_check').val().trim();

if (pw1.length >= 5) {

if (pw1 == pw2) {

$('#pwout').html("패스워드가 일치합니다.");

$('#pwout').css({ 'color': 'red', 'font-weight': 'bolder' });

return true;

}

else {

$('#pwout').html("패스워드가 일치하지 않습니다.");

$('#pwout').css({ 'color': 'red', 'font-weight': 'bolder' });

return false;

}

}

else {

alert("비밀번호는 5자리 이상 입력해야합니다.");

$('#pw').val('');

$('#pw_check').val('');

$('#pw').focus();

return false;

}


}

$('#pw_check').keyup(pwdChk);

$("#target").submit(function(){

if(!pwdChk()){

alert("비밀번호가 일치하지 않습니다.");

return false;

}

userId = $("#userId").val();

type = $(":radio[name='type']:checked").val();

email = $("#email").val();

num = $("#tel1").val()+'-'+$("#tel2").val()+'-'+$("#tel3").val();

if(confirm(userId+"\n"+type+"\n"+email+"\n"+num)){

return true;

}else{

return false;

}

});

});

</script>



</body>



</html>

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

주어진 HTML코드는 표준을 지키지 않고 있다.

웹 표준이 적용되도록 수정 후 요구사항에 맞지 않은 CSS속성 및 Javascript를 찾아 수정하시오.



요구사항

- 주문자 아이디는 "4글자 이상 대문자로 시작, 영소문자, 숫자만 사용가능"(자바스크립트 정규표현식 활용)

- 아이디가 조건에 맞지 않을 경우 입력상자 오른쪽에 메시지로 알려주고 다시 Focus를 입력상자로 옮긴다.

- 패스워드는 5글자 이상 입력

- 5글자 미만일 경우 alert으로 "비밀번호는 5자리 이상 입력해야 합니다" 표시

- 패스워드확인에 값 입력 시마다 패스워드의 값과 비교하여 오른쪽에 빨간색으로 일치하지 않는다는 메시지 표시

- 문의 유형은 반드시 선택되도록 설정한다.(HTML5새로 추가된 기능 적용)

- 이메일은 반드시 입력되도록 설정한다.(HTML5새로 추가된 기능 적용)

- 전화번호는 필수입력 정보는 아님

- 전화번호의 input태그는 4자리 입력가능

- 취소 클릭 시 모든 입력 삭제

- 문의등록 버튼 클릭 시 전체 입력한 정보를 alert으로 표시 후 action에 지정된 페이지로 전송(submit)



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test1</title>
<style type="text/css">
table th {background-color : pink; border :0.3px solid;  }
table#outer {border :5px solid; border-color : pink}
</style>
<script type="text/javascript" src="/test1/resources/js/jquery-3.5.1.min.js"></script>

<script>
	function validate(){
	//유효성 검사 코드 작성
	//서버 컨트롤러로 전송할 값들이 요구한 조건을 모두 만족하였는지 검사하는 것
	
	//암호와 암호확인이 일치하는지 확인!
	//자바 스크립트는 따로 변수 선언을 하지 않고 var 와 도큐멘트를 쓴다.
	var pwdValue = document.getElementById("userpwd").value;
	var pwdValue2 = document.getElementById("userpwd2").value;
	
	// !== 은 자료형도 같고 값도 같고? 
	//select 는 안에 내용 지워주는 것(재입력할 수 있게)
	if(pwdValue !== pwdValue2){
		alert("암호와 암호 확인의 값이 일치하지 않습니다");
		document.getElementById("userpwd").select();
		return false; //전송 취소함
	}


	return true; //전송함
	}
	
	//아이디 중복 체크 확인을 위한 ajax 실행 처리용 함수
	function dupIdCheck(){
		$.ajax({
			url: "/test1/idchk",
			type: "post",
			data: {userid: $("#userid").val()}, //인풋값을 읽을때 벨을 쓴다
			success: function(data){
				console.log("success : "+ data);
		
				if(data == "ok"){
					alert("사용 가능한 아이디입니다");
					$("#userpwd").focus(); //파랗게 글자에 범위가 잡힌다
				}else{
					alert("이미 사용중인 아이디 입니다\n 다시 입력하세요");
					$("#userid").select(); //범위잡힌 부분을 선택. 셀렉
				}
			}, 
			error: function(jqXHR, textstatus, errorthrown){
				console.log("error: " + jqXHRm +", "+textstatus+", "+ errorthrown);
			}
		});
		
		return false; //클릭 이벤트가 전달되어서 서브밋이 동작되지 않게 함
	}
	
	
</script>
</head>
<body>
<center>
<h1 align="center">회원 가입 페이지</h1>
<br>
<form method="post" action="/test1/minsert" onsubmit="return validate();">	
<table id="outer" align="center" width="500" cellspacing="5" cellpadding="0">
<tr>
	<th colspan="2">회원 정보를 입력해 주세요 (* 표시는 필수 입력사항입니다) </th>
	
</tr>
<tr>
	<th width="120">*이 름</th>
	<td><input type="text" name="username" required> &nbsp; </td>
</tr>
<tr>
	<th>*아이디</th>
	<td><input type="text" name="userid" id="userid" required>
	<input type="button" value="중복체크" onclick="return dupIdCheck();"></td>
</tr>
<tr>
	<th>*암 호</th>
	<td><input type="password" name="userpwd" id="userpwd" required ></td>
</tr>
<tr>
	<th>*암호확인</th>
	<td><input type="password" id="userpwd2"></td>
</tr>
<tr>
	<th>*성별</th>
	<td><input type="radio" name="gender" value="M" checked>남/<input type="radio" name="gender" value="F">여</td>
</tr>
<tr>
	<th>*나 이</th>
	<td><input type="number" name="age" min="19" max="200" value="20"></td>
</tr>
<tr>
	<th>*전화번호</th>
	<td><input type="tel" name="phone" required></td>
</tr>
<tr>
	<th>*이메일</th>
	<td><input type="email" name="email" required></td>
</tr>
<tr>
	<th>취미</th>
	<td>
		<table width="350">
		<tr>
			<td><input type="checkbox" name="hobby" value="game">게임</td>
			<td><input type="checkbox" name="hobby" value="reading">독서</td>
			<td><input type="checkbox" name="hobby" value="climb">등산</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="hobby" value="sport">운동</td>
			<td><input type="checkbox" name="hobby" value="music">음악듣기</td>
			<td><input type="checkbox" name="hobby" value="movie">영화보기</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="hobby" value="travel">여행</td>
			<td><input type="checkbox" name="hobby" value="cook">요리</td>
			<td><input type="checkbox" name="hobby" value="etc" checked>기타</td>
		</tr>
		</table>
	</td>
</tr>
<tr>
	<th>기타사항</th>
	<td><textarea name="etc" rows="5" cols="50"></textarea></td>
</tr>
<tr>
	<th colspan="2" >
		<input type="submit" value="가입하기"> &nbsp;&nbsp;
		<input type="reset"value="작성취소"> &nbsp;&nbsp;
		<a href="/test1/index.jsp">시작 페이지로</a>
	</th>
</tr>
</table>
</form>
</center>

</body>
</html>