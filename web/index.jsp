<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beet</title>
<script type="text/javascript" src="/beet/resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
	
	//최근 등록한 공지글 5개 출력되게 함 
	$.ajax({
		url: "/beet/ntop5",
		type: "get",
		dataType: "json",
		success: function(data){
			console.log("success :" + data);
			
			
			var jsonStr = JSON.stringify(data);
			
			var json = JSON.parse(jsonStr);
			 
			var values = "";
			for(var i in json.list){
				values += "<tr><td>" + json.list[i].no 
				+ "</td><td><a href='/beet/ndetail?noticeno=" + json.list[i].no +"' >"		
				+ decodeURIComponent(json.list[i].title).replace(/\+/gi, " ")
				+ "</a></td><td>" + json.list[i].readcount + "</td></tr>";
			}
			$("#newnotice").html($("#newnotice").html() + values);
		
		},
		error:function(jqXHR, textstatus, errorthrown){
			console.log("error : "+ jqXHR + "," + textstatus + "," + errorthrown);
			
		}
	});
});
</script>
</head>
<body>

<h1>내학사 입장 페이지</h1>
<hr>


<!-- 세션 아래 인클루드코드 복사해서 쓰세요! -->
 <%@ include file="/views/common/sessionChk.jsp" %> 


<button onclick="javascript:location.href='views/lecture/menu.jsp'">수강신청 메뉴테스트</button>
<button onclick="javascript:location.href='views/attendance/sub4main.jsp'">출결 목록 테스트</button>
<button onclick="javascript:location.href='views/absence/absenceRequestView.jsp'">학생신청페이지</button>
<form action="/beet/nlist" >
<button type="submit" >공지사항</button>
</form>
<button onclick="javascript:location.href='views/test/testView.jsp'">테스트용 드롭바</button>
<!-- 최근 등록 게시글  3개  조회-->
<div style="float:left; border:5px solid blue; padding:10px; margin:5px; background-color:gray; color:blue ">
<h4>공지사항 TOP5</h4>
<table id="newnotice" border="1" cellspacing="0">
<tr><th>번호</th><th>제목</th><th>조회수</th></tr>
</table>
</div>
</body>
</html>