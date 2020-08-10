<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, schedule.model.vo.Schedule" %>


<% ArrayList<Schedule> list1 = (ArrayList<Schedule>)request.getAttribute("list1"); %>
<% ArrayList<Schedule> list2 = (ArrayList<Schedule>)request.getAttribute("list2"); %>
<% ArrayList<Schedule> list3 = (ArrayList<Schedule>)request.getAttribute("list3"); %>
<% ArrayList<Schedule> list4 = (ArrayList<Schedule>)request.getAttribute("list4"); %>
<% ArrayList<Schedule> list5 = (ArrayList<Schedule>)request.getAttribute("list5"); %>
<% ArrayList<Schedule> list6 = (ArrayList<Schedule>)request.getAttribute("list6"); %>
<% ArrayList<Schedule> list7 = (ArrayList<Schedule>)request.getAttribute("list7"); %>
<% ArrayList<Schedule> list8 = (ArrayList<Schedule>)request.getAttribute("list8"); %>
<% ArrayList<Schedule> list9 = (ArrayList<Schedule>)request.getAttribute("list9"); %>
<% ArrayList<Schedule> list10 = (ArrayList<Schedule>)request.getAttribute("list10"); %>
<% ArrayList<Schedule> list11 = (ArrayList<Schedule>)request.getAttribute("list11"); %>
<% ArrayList<Schedule> list12 = (ArrayList<Schedule>)request.getAttribute("list12"); %>
<% ArrayList<Schedule> list13 = (ArrayList<Schedule>)request.getAttribute("list13"); %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>schedule</title>
<script type="text/javascript">
function update(){
	location.href = "/beet/views/schedule/updatesch.jsp"
}
</script>
<%@ include file="/views/common/header.jsp" %> 
</head>

<body>

<h1 align="center">학사일정</h1>

<center>
<hr>
<table align="center" width="700" border="1" cellspacing="0" >
<tr><th width="300">날짜</th><th>상세내용</th></tr>
<% for (Schedule s :list1){ %> 
<tr>
<td align="center"><%=s.getSchstartyear() %>년 <%=s.getSchstartmonth() %>월 <%=s.getSchstartdate() %>일 ~ <%=s.getSchendyear() %>년 <%=s.getSchendmonth() %>월 <%=s.getSchenddate() %>일 </td>
<td align="center"><%=s.getSchname() %></td>
</tr>
<% } %>
</table>
<br>
<br>
<table align="center" width="700" border="1" cellspacing="0" >
<tr><th width="300">날짜</th><th>상세내용</th></tr>
<% for (Schedule s2 :list2){ %> 
<tr>
<td align="center"><%=s2.getSchstartyear() %>년 <%=s2.getSchstartmonth() %>월 <%=s2.getSchstartdate() %>일 ~ <%=s2.getSchendyear() %>년 <%=s2.getSchendmonth() %>월 <%=s2.getSchenddate() %>일 </td>
<td align="center"><%=s2.getSchname() %></td>
</tr>
<% } %>
</table>
<br>
<br>
<table align="center" width="700" border="1" cellspacing="0" >
<tr><th width="300">날짜</th><th>상세내용</th></tr>
<% for (Schedule s3 :list3){ %> 
<tr>
<td align="center"><%=s3.getSchstartyear() %>년 <%=s3.getSchstartmonth() %>월 <%=s3.getSchstartdate() %>일 ~ <%=s3.getSchendyear() %>년 <%=s3.getSchendmonth() %>월 <%=s3.getSchenddate() %>일 </td>
<td align="center"><%=s3.getSchname() %></td>
</tr>
<% } %>
</table>
<br>
<br>
<table align="center" width="700" border="1" cellspacing="0" >
<tr><th width="300">날짜</th><th>상세내용</th></tr>
<% for (Schedule s4 :list4){ %> 
<tr>
<td align="center"><%=s4.getSchstartyear() %>년 <%=s4.getSchstartmonth() %>월 <%=s4.getSchstartdate() %>일 ~ <%=s4.getSchendyear() %>년 <%=s4.getSchendmonth() %>월 <%=s4.getSchenddate() %>일 </td>
<td align="center"><%=s4.getSchname() %></td>
</tr>
<% } %>
</table>
<br>
<br>
<table align="center" width="700" border="1" cellspacing="0" >
<tr><th width="300">날짜</th><th>상세내용</th></tr>
<% for (Schedule s5 :list5){ %> 
<tr>
<td align="center"><%=s5.getSchstartyear() %>년 <%=s5.getSchstartmonth() %>월 <%=s5.getSchstartdate() %>일 ~ <%=s5.getSchendyear() %>년 <%=s5.getSchendmonth() %>월 <%=s5.getSchenddate() %>일 </td>
<td align="center"><%=s5.getSchname() %></td>
</tr>
<% } %>
</table>
<br>
<br>
<table align="center" width="700" border="1" cellspacing="0" >
<tr><th width="300">날짜</th><th>상세내용</th></tr>
<% for (Schedule s6 :list6){ %> 
<tr>
<td align="center"><%=s6.getSchstartyear() %>년 <%=s6.getSchstartmonth() %>월 <%=s6.getSchstartdate() %>일 ~ <%=s6.getSchendyear() %>년 <%=s6.getSchendmonth() %>월 <%=s6.getSchenddate() %>일 </td>
<td align="center"><%=s6.getSchname() %></td>
</tr>
<% } %>
</table>
<br>
<br>
<table align="center" width="700" border="1" cellspacing="0" >
<tr><th width="300">날짜</th><th>상세내용</th></tr>
<% for (Schedule s7 :list7){ %> 
<tr>
<td align="center"><%=s7.getSchstartyear() %>년 <%=s7.getSchstartmonth() %>월 <%=s7.getSchstartdate() %>일 ~ <%=s7.getSchendyear() %>년 <%=s7.getSchendmonth() %>월 <%=s7.getSchenddate() %>일 </td>
<td align="center"><%=s7.getSchname() %></td>
</tr>
<% } %>
</table>
<br>
<br>
<table align="center" width="700" border="1" cellspacing="0" >
<tr><th width="300">날짜</th><th>상세내용</th></tr>
<% for (Schedule s8 :list8){ %> 
<tr>
<td align="center"><%=s8.getSchstartyear() %>년 <%=s8.getSchstartmonth() %>월 <%=s8.getSchstartdate() %>일 ~ <%=s8.getSchendyear() %>년 <%=s8.getSchendmonth() %>월 <%=s8.getSchenddate() %>일 </td>
<td align="center"><%=s8.getSchname() %></td>
</tr>
<% } %>
</table>
<br>
<br>
<table align="center" width="700" border="1" cellspacing="0" >
<tr><th width="300">날짜</th><th>상세내용</th></tr>
<% for (Schedule s9 :list9){ %> 
<tr>
<td align="center"><%=s9.getSchstartyear() %>년 <%=s9.getSchstartmonth() %>월 <%=s9.getSchstartdate() %>일 ~ <%=s9.getSchendyear() %>년 <%=s9.getSchendmonth() %>월 <%=s9.getSchenddate() %>일 </td>
<td align="center"><%=s9.getSchname() %></td>
</tr>
<% } %>
</table>
<br>
<br>
<table align="center" width="700" border="1" cellspacing="0" >
<tr><th width="300">날짜</th><th>상세내용</th></tr>
<% for (Schedule s10 :list10){ %> 
<tr>
<td align="center"><%=s10.getSchstartyear() %>년 <%=s10.getSchstartmonth() %>월 <%=s10.getSchstartdate() %>일 ~ <%=s10.getSchendyear() %>년 <%=s10.getSchendmonth() %>월 <%=s10.getSchenddate() %>일 </td>
<td align="center"><%=s10.getSchname() %></td>
</tr>
<% } %>
</table>
<br>
<br>
<table align="center" width="700" border="1" cellspacing="0" >
<tr><th width="300">날짜</th><th>상세내용</th></tr>
<% for (Schedule s11 :list11){ %> 
<tr>
<td align="center"><%=s11.getSchstartyear() %>년 <%=s11.getSchstartmonth() %>월 <%=s11.getSchstartdate() %>일 ~ <%=s11.getSchendyear() %>년 <%=s11.getSchendmonth() %>월 <%=s11.getSchenddate() %>일 </td>
<td align="center"><%=s11.getSchname() %></td>
</tr>
<% } %>
</table>
<br>
<br>
<table align="center" width="700" border="1" cellspacing="0" >
<tr><th width="300">날짜</th><th>상세내용</th></tr>
<% for (Schedule s12 :list12){ %> 
<tr>
<td align="center"><%=s12.getSchstartyear() %>년 <%=s12.getSchstartmonth() %>월 <%=s12.getSchstartdate() %>일 ~ <%=s12.getSchendyear() %>년 <%=s12.getSchendmonth() %>월 <%=s12.getSchenddate() %>일 </td>
<td align="center"><%=s12.getSchname() %></td>
</tr>
<% } %>
</table>
<br>
<br>
<table align="center" width="700" border="1" cellspacing="0" >
<tr><th width="300">날짜</th><th>상세내용</th></tr>
<% for (Schedule s13 :list13){ %> 
<tr>
<td align="center"><%=s13.getSchstartyear() %>년 <%=s13.getSchstartmonth() %>월 <%=s13.getSchstartdate() %>일 ~ <%=s13.getSchendyear() %>년 <%=s13.getSchendmonth() %>월 <%=s13.getSchenddate() %>일 </td>
<td align="center"><%=s13.getSchname() %></td>
</tr>
<% } %>
<br>
</table> 
<br>
<br>
<button onclick="javascript:location.href='/beet/adsch'">관리 페이지</button>


<br>
<br>
</center>
</body>
</html>





