<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<h1>성적입력_ajax 등급입력 페이지 (팝업처리)</h1>
<!--과목정보 출력 -->
<input type="button" id="chn" value="변경" /><!-- ajax 쓸건데 굳이? -->
<table>
<thead>
  <tr>
    <th>등급</th>
    <th>A+</th>
    <th>A</th>
    <th>B+</th>
    <th>B</th>
    <th>C+</th>
    <th>C</th>
    <th>D+</th>
    <th>D</th>
    <th>F</th>
  </tr>
</thead>
<tbody>
  <tr>
    <th>등급기준</th>
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
  <tr>
    <th>가능인원</th>
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
  <tr>
    <td>누적분포</td>
    <td><%= %></td>
    <td><%= %></td>
    <td><%= %></td>
    <td><%= %></td>
    <td><%= %></td>
    <td><%= %></td>
    <td><%= %></td>
    <td><%= %></td>
    <td><%= %></td>
  </tr>
</tbody>
</table>
<input type="button" id="chnsave" value="저장" />
<input type="button" id="chncancel" value="취소" />
</body>
</html>