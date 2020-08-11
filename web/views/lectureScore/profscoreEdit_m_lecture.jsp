<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="java.util.ArrayList, student.model.vo.Member, lectureScore.model.vo.LectureScore"%>
<% ArrayList<LectureScore> list = (ArrayList<LectureScore>)request.getAttribute("list"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;border-color:inherit;text-align:left;vertical-align:top}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
 input.insert{ width: 40px; height:20px; margin:0px}  

</style>

<h1>성적관리페이지</h1>
	<div class="manage" style="display:block">	
	<!-- <form action="/beet/scselect.p" method="post" style="float:right;" onclick="UpdateScore()">
			<input type="submit" style="width:60pt;height:20pt;" value="성적 입력">
			<input type="hidden" name="userid" value="">
			<input type="hidden" name="lname" value="">
	</form> -->
	<input type="button" value="성적수정" onclick="activeEle()">
	<form action="/beet/grupdate" method="get">
	<input type="submit" value="등급입력">
	</form>

	
	</div>
	

<table class="tg">
		<thead>
		<tr>
			<th>순번</th>
			<th>계열</th>
			<th>학과</th>
			<th>학번</th>
			<th>성명</th>
			<th>재수강여부</th>
			<th>출석점수</th>
			<th>중간점수</th>
			<th>기말점수</th>
			<th>총점수</th>
			<th>등급</th>
		</tr>
		</thead>
		<tbody>
		<div id="dataArea">
		<form id="score" action="/beet/scupdate.prof">
			<% int i = 1;for(LectureScore lscore : list) {%>
			<tr>
				<td><%= i %></td><% i+=1; %>
				<td><%= lscore.getCategoryname() %></td>
				<td><%=lscore.getMajorname()%></td>
				<td><%=lscore.getSid()%></td>
				<td><%=lscore.getSname()%></td>
				<td><%=lscore.getRetake()%></td>
				<td><input class="insert" type="text" readonly="readonly" value="<%=lscore.getAtndnscore()%>" /></td>
				<td><input class="insert" type="text" readonly="readonly" value="<%=lscore.getMidscore()%>" /></td>
				<td><input class="insert" type="text" readonly="readonly" value="<%=lscore.getFinalscore()%>" /></td>
				<td><input class="insert" type="text" readonly="readonly" value="<%=lscore.getTotalscore()%>" /></td>
				<td><select class="grade" style="width:80px" value="<%=lscore.getGrade()%>"  onClick="aa(sc)">
					<option value="-" selected disabled hidden>-</option>
					<option value="A+">A+</option>
					<option value="A">A</option>
					<option value="B+">B+</option>
					<option value="B">B</option>
					<option value="C+">C+</option>
					<option value="C">C</option>
					<option value="D+">D+</option>
					<option value="D">D</option>
					<option value="F">F</option>
					</select></td>
			</tr>
			<% } %>
			
		</tbody>
	</table>
	</div>
		<center>
		<p style="margin-top:30px;">
		* 변경 후 반드시 저장을 눌러주세요 
		</p>
		<!-- <input type="button" id="btn1" value="업데이트" onclick="goUpdate()">  -->
		<input id="save" type="submit" value="저장"> &nbsp; 
		<input type="reset" value="취소"> &nbsp;
		</form>
		<input type="button" value="이전 페이지" href="javascript:history.go(-1);"></a>
		</center>


	<script type="text/javascript" src="/beet/resources/js/jQuery.js"></script>
	<!-- jquery로 입력값 받아서 수정하기 변경하기누르면 update 취소 누르면 sendredirect -->
<script>
//변경저장
$(document).ready(function(){
	$.ajax({
		type : "GET",
		url : "ajaxData.jsp?type=1",
		dataType : "text",
		error : function(){
			
		},
		success : function(data){
			$("#dataArea").html(data);
		}
	
	})
})


//수정가능 
function activeEle() {
	$("input[type=text]").removeAttr('readonly');
}
 
//숫자 0~100사이만 입력
var replaceNotInt = /[^0-9]/gi;

$(document).ready(function(){
    $("input[type=text]").on("focusout", function() { 
        var x = $(this).val();
        if (x.length > 0) {
            if (x.match(replaceNotInt)) {
               x = x.replace(replaceNotInt, "");
            }
            $(this).val(x);
            
            if(x > 100) {
            	$(this).val('100');
            }

        }
    }).on("keyup", function() {
        $(this).val($(this).val().replace(replaceNotInt, ""));
        
    });
   
    
}); 


//
var a = document.getElementsByClassName("at");
for(i=0;i<a.length;i++){
	console.log(a[i]);
}
</script>
</body>
</html>