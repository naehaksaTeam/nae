<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="absence.model.vo.Absence, java.util.ArrayList"%>
<%
	ArrayList<Absence> list = (ArrayList<Absence>)request.getAttribute("list");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beet</title>
</head>
<body>
관리자가 학생이 신청한 휴학, 복학 
조회selectAll, selectone(requestid), selectone(requestid, studentid), 
승인update(휴학신청인 경우 : 학생테이블의 휴학여부가 Y // 복학신청인 경우 : 휴학여부 N  
			approval Y로 ),
취소가능날짜가 지난 경우 absence 테이블에서 삭제처리함.
		
삭제delete (신청내역 삭제.절대 복구 안됨)

신청번호 앞에 체크박스를 넣어서 체크된 얘들은 승인되거나 삭제되도록 처리
<br><br><br><br><br>
<div>

<button onclick="javascript:location.href='/beet/selectaba?value=a'">휴 학 조 회</button>
<button onclick="javascript:location.href='/beet/selectaba?value=b'">복 학 조 회</button>
<br><br><br><br>
<form action="/beet/updateab" method="post">
<table id="selecta">
<tr><th colspan="5">휴 학 신 청 내 역</th></tr>
<tr><th>신청번호</th><th>학번</th><th>신청일</th><th>취소가능날짜</th><th>승인여부</th></tr>
<% if(list != null){ %>
<% for(Absence ab : list){ %>
<tr><td><input type="radio" name="requestid" value=<%=ab.getRequestid()%>><%=ab.getRequestid()%></td>
	<td><%=ab.getStudentid() %></td>
	<td><%=ab.getRequestdate() %></td>
	<td><%=ab.getLimitcanceldate() %></td>
	<td><input type="text" name="approval" value="<%= ab.getApproval()%>"><%=ab.getApproval()%></td>
</tr>
<tr><td><input type="submit" value="승인하기"></td></tr>
<% } %>
<% } %>
</table>
</form>
<br><br><br><br><br>
<form action="/beet/updateab" method="post">
<table id="selectb">
<tr><th colspan="5">복 학 신 청 내 역</th></tr>
<tr><th>신청번호</th><th>학번</th><th>신청일</th><th>취소가능날짜</th><th>승인여부</th></tr>
<% if(list != null){ %>
<% for(Absence ab : list){ %>
<tr><td><input type="radio" name="requestid" value=<%=ab.getRequestid()%>><%=ab.getRequestid()%></td>
	<td><%=ab.getStudentid() %></td>
	<td><%=ab.getRequestdate() %></td>
	<td><%=ab.getLimitcanceldate() %></td>
	<td><input type="text" name="approval" value="<%= ab.getApproval()%>"><%=ab.getApproval()%></td>
</tr>
<tr><td><input type="submit" value="승인하기"></td></tr>
<% } %>
<% } %>
</table>
</form>
<br><br><br><br><br>
<form action="/beet/deleteab" method="post">
<table id="selectb">
<tr><th colspan="5">휴 학, 복 학 신 청 내 역</th></tr>
<tr><th>신청번호</th><th>학번</th><th>신청일</th><th>취소가능날짜</th><th>승인여부</th></tr>
<% if(list != null){ %>
<% for(Absence ab : list){ %>
<tr><td><input type="radio" name="requestid" value=<%=ab.getRequestid()%>><%=ab.getRequestid()%></td>
	<td><%=ab.getStudentid() %></td>
	<td><%=ab.getRequestdate() %></td>
	<td><input type="text" name="canceldate" value="<%= ab.getLimitcanceldate()%>"><%=ab.getLimitcanceldate() %></td>
	<td><%=ab.getApproval()%></td>
</tr>
<tr><td><input type="submit" value="삭제하기"></td></tr>
<% } %>
<% } %>
</table>
</form>

</div>
</body>
</html>