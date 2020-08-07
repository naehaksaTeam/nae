<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>   
 
<%
Date lastmodified = new Date();
SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd HH:mm:ss");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<h1>교수의 성적 입력 현황 출력해주는 페이지 (리스트로)  </h1>

<select class="semester" id="myselect" onchange="this.form.submit()">
            <option value="201901">201901학기</option>
            <option value="201902">201902학기</option>
            <option value="202001">202001학기</option>
</select>
<table>
<thead>
  <tr>
    <th>순번</th>
    <th>학년학기</th>
    <th>이수구분</th>
    <th>과목번호</th>
    <th>과목명</th>
    <th>성적입력</th>
    <th>최종수정날짜</th>
    <th>처리결과</th>
    <th>성적최종승인 </th>
  </tr>
</thead>
<tbody>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td><button onclick="location.href.scoreEdit_insert"></button></td>
    <td><%= format1.format(lastmodified) %></td>
    <td></td>
    <td><button type="submit"></button></td>
  </tr>
</tbody>
</table>

</body>
</html>