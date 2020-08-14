<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date, java.text.SimpleDateFormat, java.util.ArrayList,
				attendance.model.vo.Atndn, student.model.vo.Member" %> 
<% ArrayList<Atndn> list = (ArrayList<Atndn>)request.getAttribute("list"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<h1>출결현황 - 과목별 출력 </h1>
</head>
<body>
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;border-color:inherit;text-align:left;vertical-align:top}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
</style>

<table >
<thead>
  <th>
    <th  rowspan="2">과목코드<br></th>
    <th  rowspan="2">과목명</th>
    <th  rowspan="2">강의요일</th>
    <th  rowspan="2">출석률</th>
    <th  rowspan="2">결석1/4초과여부</th>
    <th  colspan="17">출석현황</th>
  </th>
 
  <tr>
    <td ><input type="checkbox" style="height:20px;"></button></td>
    <td >1주</td>
    <td >2주</td>
    <td >3주</td>
    <td >4주</td>
    <td >5주</td>
    <td >6주</td>
    <td >7주</td>
    <td >8주</td>
    <td >9주</td>
    <td >10주</td>
    <td >11주</td>
    <td >12주</td>
    <td >13주</td>
    <td >14주</td>
    <td >15주</td>
    <td >16주</td>
  
  </tr>
</thead>
<tbody>
  <% for (Atndn atndn : list){%>
  <tr>
  	<th><input type="checkbox" name="checked"></th>
    <td><%= atndn.getLcode() %></td>
    <td ><%= atndn.getLname() %></td>
    <td ><%= atndn.getLtime() %></td>
    <td></td>
    <td ><%= atndn.getAbsent3() %></td>
    <td ><%= atndn.getWeek1() %></td>
    <td ><%= atndn.getWeek2() %></td>
    <td ><%= atndn.getWeek3() %></td>
    <td ><%= atndn.getWeek4() %></td>
    <td ><%= atndn.getWeek5() %></td>
    <td ><%= atndn.getWeek6() %></td>
    <td ><%= atndn.getWeek7() %></td>
    <td ><%= atndn.getWeek8() %></td>
    <td ><%= atndn.getWeek9() %></td>
    <td ><%= atndn.getWeek10() %></td>
    <td ><%= atndn.getWeek11() %></td>
    <td ><%= atndn.getWeek12() %></td>
    <td ><%= atndn.getWeek13() %></td>
    <td ><%= atndn.getWeek14() %></td>
    <td ><%= atndn.getWeek15() %></td>
    <td ><%= atndn.getWeek16() %></td>   
  </tr>
  <% } %>
</tbody>
</table>
</body>
</html>