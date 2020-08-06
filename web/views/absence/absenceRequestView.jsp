<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="absence.model.vo.Absence, java.util.ArrayList"%>
<%
	ArrayList<Absence> list = (ArrayList<Absence>)request.getAttribute("list");
%>
    
<%@ page import="student.model.vo.Student, absence.model.vo.Absence, java.sql.Date " %>    
<% Date dd1 = new Date(20,01,01);
   Date dd2 = new Date(20,02,02);
	//재학중인 학생
	Student st1 = new Student("201701341","재학학생","950807-1114158","전북 전주시 완산구 평화동2가 현대아파트 101-705","01094816474","M","aspilemanq@mtv.com","곰실곰실","인문계열","1", dd1,"N",0,"","");
	Student st2 = new Student("201701456","휴학학생","950807-1114158","전북 전주시 완산구 평화동2가 현대아파트 101-705","01094816474","M","aspilemanq@mtv.com","곰실곰실","인문계열","1",dd2, "Y",0,"","");
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beet</title>
</head>
<body>
<%@ include file="../common/header.jsp"%>
학생이 휴학이나 복학 신청할 페이지(insert 할 때 휴학카운트가 6이상이면 신청 안됨)
<br>
신청버튼을 누르면 다시 이 페이지가 뜨고 조회란에 방금 신청한 내용이 보이게 설정

신청 조회(select)까지 studentid 가지고 조회.
<br><br><br><br>
이페이지에서 select랑 insert 모두 처리 !
<hr>
<div align="center">
<button width="20" onclick="javascript:location.href='/beet/selectab?studentid=<%=st1.getId()%>'">조 회</button>
</div>
<h1 align="center">조회 테이블</h1>
<h2 align="center"><%=st1.getName() %> 님의 신청내역 조회</h2>
<% if(list == null){ %>
<table align="center" width="1000" height="100" style="font-size: 20pt; background-color: blue;"><th>신청 내역이 없습니다</th></table>
<% }else{ %>
	<% for(Absence aa : list){ %>
	<table>
	<tr><th><%=aa.getRequestid() %></th><th><%=aa.getRequestdate() %></th><th><%=aa.getLimitcanceldate() %></th><th><%=aa.getApproval() %></th> </tr>
	<tr><td align="right"><button name="cancel" onclick="javascript:href='deleteab">신청취소</button></td></tr>
	</table>
	
<% }} %>
<hr>
<h1 align="center">신청테이블</h1>
<div>
<table align="center" width="1000" height="550" style="font-size: 20pt; background-color: pink;">
<% if(st1.getAbsencewhether().equals("Y")){ %>
<tr><th>현재 <%=st1.getName() %>님은 휴학상태입니다</th></tr>
<tr>
	<td align="center">
		안 내 사 항 
		<br>
		영민씨 기능 완성되면 공지사항에 휴학, 복학 안내사항 글 하나 등록해서 뽑아온다.
		영민씨 기능 완성되면 공지사항에 휴학, 복학 안내사항 글 하나 등록해서 뽑아온다.
		영민씨 기능 완성되면 공지사항에 휴학, 복학 안내사항 글 하나 등록해서 뽑아온다.
	</td>
</tr>
<tr>
	<td align="center">
		재학 신청 취소는 내일까지 가능합니다.<br> 취소가능 날짜가 지나면 신청 취소는 불가능합니다
	</td>
</tr>
<tr><td align="center"><button name="value" value="a" onclick="javascript:href='insertab?value=a&studentid=<%=st1.getId()%>'">휴학신청</button>&nbsp;&nbsp;<button name="value" value="b">복학신청</button></td></tr>
 휴학신청이면 신청번호에 a가 붙는다. 복학신청이면 신청번호에 b가 붙는다.

<% }else{ %>
<tr><th>현재 <%=st1.getName() %>님은 재학상태입니다</th></tr>
<tr>
	<td align="center">
		안내사항 
		<br>
		영민씨 기능 완성되면 공지사항에 휴학, 복학 안내사항 글 하나 등록해서 뽑아온다.
		영민씨 기능 완성되면 공지사항에 휴학, 복학 안내사항 글 하나 등록해서 뽑아온다.
		영민씨 기능 완성되면 공지사항에 휴학, 복학 안내사항 글 하나 등록해서 뽑아온다.
	</td>
</tr>
<tr>
	<td align="center">
		휴학 신청 취소는 내일까지 가능합니다.<br> 취소가능 날짜가 지나면 신청 취소는 불가능합니다
	</td>
</tr>

<tr><td align="center"><button name="value" value="a" onclick="javascript:location.href='/beet/insertab'">휴학신청</button></td></tr>
<% } %>
</table>
</div>
<footer>
<%@ include file="../common/footer.jsp"%>
</footer>
</body>
</html>