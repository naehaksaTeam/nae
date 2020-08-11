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
	

<table class="tg" id="sctable">
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
			<p id="p_<%= i %>">
			<tr>
				<td class="nr"><%= i %></td><% i+=1; %>
				<td><%= lscore.getCategoryname() %></td>
				<td><%=lscore.getMajorname()%></td>
				<td><%=lscore.getSid()%></td>
				<td><%=lscore.getSname()%></td>
				<td><%=lscore.getRetake()%></td>

				<td><input class="insert" type="text" readonly="readonly" value="<%=lscore.getAtndnscore()%>" /></td>
				<td><input class="insert" type="text" readonly="readonly" value="<%=lscore.getMidscore()%>" /></td>
				<td><input class="insert" type="text" readonly="readonly" value="<%=lscore.getFinalscore()%>" /></td>
				<td><input class="insert" type="text" readonly="readonly" value="<%=lscore.getTotalscore()%>" /></td>
				<td><select name="selectg">
				<option value="-" selected disabled hidden>-</option>
					<option value="A+" <%= (lscore.getGrade().trim().equals("A+"))?"selected":"" %>>A+</option>
					<option value="A" <%= (lscore.getGrade().trim().equals("A"))?"selected":"" %>>A</option>
					<option value="B+" <%= (lscore.getGrade().trim().equals("B+"))?"selected":"" %>>B+</option>
					<option value="B" <%= (lscore.getGrade().trim().equals("B"))?"selected":"" %>>B</option>
					<option value="C+" <%= (lscore.getGrade().trim().equals("C+"))?"selected":"" %>>C+</option>
					<option value="C" <%= (lscore.getGrade().trim().equals("C"))?"selected":"" %>>C</option>
					<option value="D+" <%= (lscore.getGrade().trim().equals("D+"))?"selected":"" %>>D+</option>
					<option value="D" <%= (lscore.getGrade().trim().equals("D"))?"selected":"" %>>D</option>
					<option value="F" <%= (lscore.getGrade().trim().equals("F"))?"selected":"" %>>F</option>
					</select></td>
					<td><input class="checkBtn" type="button" value="테스트"> &nbsp;</td>
					<td><input class="abc" type="button" value="행테스트"></td>
			</tr>
			</p>
			<% } %>
			<tr>
			<input id="scsave" type="submit" value="저장" onclick="scupdate"> &nbsp;
			<input id="sccancle" type="reset" value="취소"> &nbsp;
			</tr>
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
		<input type="button" value="테스트" onclick="qwqw"></a>
		</center>
	
	<script type="text/javascript" src="/beet/resources/js/jQuery.js"></script>
	<!-- jquery로 입력값 받아서 수정하기 변경하기누르면 update 취소 누르면 sendredirect -->
	
<script>
var dataArray = null;
var jsonArray = null;

 $(".checkBtn").click(function(){ 
	//배열에 저장 
				var str = ""
				var tdArr = new Array();	// 배열 선언
				var checkBtn = $(this);
				var tbl = document.getElementById('sctable'); 
				var tr = checkBtn.parent().parent();
				var trlength = tbl.getElementsByTagName('tr').length;
				var td = tr.children();
			
				for(var i = 0; i<trlength-1;i++){
					
					var categoryname = td.eq(1).text();
					var majorname = td.eq(2).text();
					var sid = td.eq(3).text(); 
					var sname = td.eq(4).text();
					var retake = td.eq(5).text();
					var atndnScore = td.eq(6).find('input[type="text"]').val();
					var midScore = td.eq(7).find('input[type="text"]').val();
					var finalScore = td.eq(8).find('input[type="text"]').val();
					var totalScore = td.eq(9).find('input[type="text"]').val();
					var grade = td.eq(10).find('select[name="selectg"] option:selected').val();
					
					
				dataArray = [categoryname, majorname, sid, sname, retake, atndnScore, midScore, finalScore,
					totalScore, grade];
				jsonArray = JSON.parse(JSON.stringify(dataArray));
				alert(dataArray);
				
			}
 });

 var keys = ['순번','계열','학과','학번','성명','재수강여부','출석점수', '중간점수', '기말점수', '총점수', '등급'];
 
 

 
 
 
 
/*  $(".abc").click(function(){ 
		//배열에 있는 객체 값 확인
		alert(dataArray);
		alert(JSON.stringify(dataArray)); 
	   //테이블 요소 구하기
	     

	   //테이블 요소의 제일 마지막 <tr> 구하기 즉, 추가한 행 구하기
	                        

	   
	   //alert("값있는 행은 총몇줄?="+(trlangth-1));
	     alert("users 객체 개수는?="+ dataArray.length);
	      
	 	
			//값이 있는 첫번째 행의 tr 요소를 가져 온다. 
	         var selecttrs = tbl.getElementsByTagName('tr')[i+1];
			 
			 //위의 요소에 속한 td 값들을 가져온다.
	         var selecttds = selecttrs.getElementsByTagName('td');
	            
				//칸이 총 7칸
	            for(var a = 0 ; a < 10;a++){
	         
	              // alert(selecttds[a].firstChild.value);
	               
	               var key = keys[a];           //값 '번호', '이름' ...등 칼럼 이름
				   
	             //  alert("dataArray["+i+"]:value="+selecttds[a].firstChild.value)
	               
					// users 객체 0 번방 '번호' = 1 이런식으로 테이블 전체의 값을 읽어 저장
	               dataArray[i][key]=selecttds[a].firstChild.value;   
	            
	            }
				
	      }
				return dataArray;
				//배열에 있는 객체 값 확인
	            alert(JSON.stringify(dataArray));
	         
	} ); */
//최근글 3개 
/* $(function(){
	$("#tg").click(function(){
		$.getJSON("beet/scupdate.prof", {
			categoryname : td.eq(1).text();
			majorname : td.eq(2).text();
			sid : td.eq(3).text(); 
			sname : td.eq(4).text();
			retake : td.eq(5).text();
			atndnScore : td.eq(6).find('input[type="text"]').val();
			midScore : td.eq(7).find('input[type="text"]').val();
			finalScore : td.eq(8).find('input[type="text"]').val();
			totalScore : td.eq(9).find('input[type="text"]').val();
			grade = td.eq(10).find('select[name="selectg"] option:selected').val();
			console.log("data :" + data)
			
			
			$("#p4").text(decodeURIComponent(data.categoryname) + decodeURIComponent(data.majorname) + data.sid+
					decodeURIComponent(data.sname) + data.retake + data.atndnScore + data.midScore
					+ data.finalScore + data.totlaScore + data.grade);
		});
 */
//수정가능 
$.ajax({
	url : '/beet/profscoreEdit_m_l_grade',
	type : 'post',
	data : {
		
	}
	
}) 
 
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

</script>
</body>
</html>