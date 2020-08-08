<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<h1>성적입력페이지</h1>
<table class="lecturelist">
<!-- 끌어오기 -->
</table>

<input type="button" id="modify" value="선택수정" />
<input type="button" id="calGrade" value="등급자동계산" onclick="location.href='scoreEdit_grade'"/>
<table>
<thead>
  <tr>
    <th rowspan="2">체크</th>
    <th rowspan="2">순번</th>
    <th rowspan="2">계열</th>
    <th rowspan="2">학과</th>
    <th rowspan="2">학번</th>
    <th rowspan="2">성명</th>
    <th colspan="5">성적 관리 </th>
  </tr>
  <tr>
    <td>출석점수</td>
    <td>중간점수</td>
    <td>기말점수</td>
    <td>총점</td>
    <td>등급</td>
  </tr>
</thead>
<tbody>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</tbody>
</table>

<script>
    var t = document.getElementById('modify');
    t.addEventListener('click', function(event){
        alert('일괄수정?, '+event.target.value);
    });  
</script>
</body>

</html>