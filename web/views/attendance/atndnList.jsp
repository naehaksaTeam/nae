<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<head>
<meta charset="UTF-8">
<title>test1</title>
<style type="text/css">
.title{ 
	font-weight:600;
	font-size:40px;
}
.button{
border:none;
margin:auto;
font-size:16px;
cursor:pointer;
font-size:20px;
padding:10px 10px;
border-radius: 5px;
}

.semester{
text-align:center;

}
.selected{
text-align:center;
border:1px solid;

}
.selected.td{
width:10%;
cellpadding:20px;
}

.selected.th{

}
</style>
</head>
<body>
<h1 align="center">강의목록</h1>
<table>
<tr>
	<td class="title" colspan="4">과목명</td>
	<td rowspan="3">
		<button class=button>강의실로 이동</button>
	</td>
</tr>
<tr>
	<td>202001345-1</td>
	<td>교양선택</td>
	<td>인문관 123호</td>
	<td>수강인원:20명</td>
</tr>
<tr>
	<td colspan="3" style="color:green;">초록색진도율막대차트넣어야지</td>
	<td>진도율: 65.4%</td>
</tr>
</table>

<table class="selected" cellpadding="10px">
<tr>
 <select class="semester" id="myselect" onchange="this.form.submit()">
            <option value="england">201901학기</option>
            <option value="france">201902학기</option>
            <option value="spain">202001학기</option>
        </select>
</tr>
<tr>
<th>과목번호</th>
<th>이수구분</th>
<th>과목명</th>
<th>강의시간</th>
<th>학점</th>
<th>수강인원</th>
<th>담당교수</th>

</tr>
<tr>
<td>20170124-1</td>
<td>전공필수</td>
<td>과목명이몇글자일까</td>
<td>월요일 몇시몇시</td>
<td>3학점</td>
<td>40명</td>
<td>참쌀 교수님</td>

</tr>

</table>


</body>

</body>
</html>