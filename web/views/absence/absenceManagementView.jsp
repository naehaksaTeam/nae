<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" impoart="absence.model.vo.Absence"%>
    
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

<div> 
<table id="selecta"> 휴학신청 : 신청번호로 나눔
조회하기 승인여부, 학번, 신청번호로
<tr><th>신청번호</th><th>학번</th><th>신청일</th><th>취소가능날짜</th></tr>
<% //for(Absence ab : list){ %>
<tr><td>list[i].get</td><td></td><td></td><td></td></tr>
<% //} %>
</table>

<table id="selectb"> 복학신청 : 신청번호로 나눔
<tr><th>신청번호</th><th>학번</th><th>신청일</th><th>취소가능날짜</th></tr>
<% //for(Absence ab : list){ %>
<tr><td></td><td></td><td></td><td></td></tr>
<% //} %>
</table>
</div>
</body>
</html>