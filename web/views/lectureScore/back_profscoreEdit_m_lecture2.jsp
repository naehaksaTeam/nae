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
	<input type="button" value="등급입력">
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
		<form id="score" action="/beet/scupdate.p">
			<% int i = 1;for(LectureScore lscore : list) {%>
			<p id="p_<%= i %>">
			<tr>
				<td ><input name="chk" type="checkbox" style="height:20px;"></button></td>
				<td class="nr"><%= i %></td><% i+=1; %>
				<input type="hidden" value="<%= lscore.getReceptionno() %>">
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
					<td><input type="button" value="행테스트"> &nbsp;</td>
				
			</tr>
			</p>
			<% } %>
			<tr>
			<input  type="button" value="와테스트">
			<input id="scsave" type="submit" value="저장"> &nbsp;
			<input id="sccancle" type="button" value="취소"> &nbsp;
			</tr>
			</form>
			
			
			
		</tbody>
	</table>
	
	<h2>5 서버로 값 전송하고 결과로 list나 map을 json 배열로 받아서 출력처리하는 방법 </h2>
	<p id="p5" style="width: 700px; height: 700px; border: 1px solid red;"></p>
	<button id="test5">테스트</button><br>
	<textarea id="no2" value=dataArray></textarea>
	
	
	
	<div class="test" id="ttest" ></div> 
	<form id="updateArr" action="/beet/scoreup" method="post">	
	<input name="ggg" id="ggg" type="text" value="hi">
 	<input id="abc" type="button" value="전송">
	</form> 
	
	
	</div>
		<center>
		<p style="margin-top:30px;">
		* 변경 후 반드시 저장을 눌러주세요 
		</p>
		<!-- <input id="save" type="submit" value="저장"> &nbsp;  <input type="button" id="btn1" value="업데이트" onclick="goUpdate()">  -->
		
		 
		<input type="reset" value="취소"> &nbsp;
		<input type="button" value="이전 페이지" href="javascript:history.go(-1);"></a>
		</center>
<script type="text/javascript" src="/beet/resources/js/jQuery.js"></script>
<script>

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


//테스트
$(document).ready(function(){
    $("input:checkbox[name=chk]").keyup(function(){
        if($("input:checkbox[name=chk]").is(":checked")){
            alert("체크박스 체크했음!");
        }else{
            alert("체크박스 체크 해제!");
        }
    });	
});
$("input[type=text]").keyup(function()  {
	var chk = $(this)
	var tr = chk.parent().parent();
	 var checkbox = tr.find('td:first-child :checkbox');
     //checkbox.prop('checked', !checkbox.is(':checked'));
     checkbox.prop("checked", true);

});

$(".chk").click(function(){ 	
		alert('a');
        var rowData = new Array(); 
        var tdArr = new Array();
       
      	var chk = $(this);
        //var checkbox = $("input[name=user_CheckBox]:checked");
});


$("#abc").click(function(){ 
        var rowData = new Array(); 
        var checkbox = $("input:checkbox[name=chk]:checked");	
     	
   checkbox.each(function(i) {
	
	var tr = checkbox.parent().parent().eq(i);
	var td = tr.children();
	
	//rowData.push(tr.text());
	var categoryname= "{categoryname : " + td.eq(3).text(); + ","
	alert(categoryname);
	var majorname = "majorname : "  +td.eq(4).text() + "}"; 
	var sid = td.eq(5).text();
	var sname = td.eq(6).text();
	var retake = td.eq(7).text();
	var atndnScore = td.eq(8).find('input[type="text"]').val();
	var midScore = td.eq(9).find('input[type="text"]').val();
	var finalScore = td.eq(10).find('input[type="text"]').val();
	var totalScore = td.eq(11).find('input[type="text"]').val();
	var grade = td.eq(12).find('select[name="selectg"] option:selected').val();

	
	var dataArray = [categoryname, majorname, sid, sname, retake, atndnScore, midScore, finalScore,
		totalScore, grade] ;
	var aa = JSON.stringify(dataArray);
	var jsonArray = JSON.parse(JSON.stringify(dataArray));
	alert(jsonArray); 
	
	$.ajax({
		url : "/beet/scoreup",
		contentType : 'application/json',
		method : 'post',
		data : JSON.stringify(dataArray),
		success : function(data){
			alert(data);
		},
		error :  function(request, status, error) {
	        alert(error);
		}
		});
     //배열  
     
/*	 tdArr.push(categoryname);
     tdArr.push(majorname);
     tdArr.push(sid);
     tdArr.push(sname);
     tdArr.push(retake);
     tdArr.push(atndnScore);
     tdArr.push(midScore);
     tdArr.push(finalScore); 
     tdArr.push(totalScore);
     tdArr.push(grade);
    
    $('input[name=ggg]').attr('value',categoryname);
     $('input[name=ggg]').attr('value',majorname);
     $('input[name=ggg]').attr('value',sid);
     $('input[name=ggg]').attr('value',sname);
     $('input[name=ggg]').attr('value',retake);
     $('input[name=ggg]').attr('value',atndnScore);
     $('input[name=ggg]').attr('value',midScore);
     $('input[name=ggg]').attr('value',finalScore);
     $('input[name=ggg]').attr('value',totalScore);
     $('input[name=ggg]').append('value',grade); */
		
   });
	
	$("#ttest").html(tdArr);	
	 //$("input[name=arrin]").attr('value',tdArr);
 var toSrvl
 

 
	$("#abc").click(function(){
		
		  alert("성공");
		  var a;
		  if(tdArr != null){
			 a += 1;
			 
		  }

	});

	 
	
});

$(function(){
	$("#test5").click(function(){
		//$.getJSON(), $.ajax() 중 선택 
		
		//$.getJSON() 
		$.getJSON("/beet/scoreup", dataArray, function(data){
			//반환받은 data의 type 확인 
			console.log("data : " + data);
			
			//배열을 담은 객체일 경우
			//object ==> String으로 바뀜
			var jsonStr = JSON.stringify(data);
			
			//string ==> json 배열객체로 바꿈 그래야 , , , 이케 쓸 수 있음
			var json = JSON.parse(jsonStr); //파싱처리해야 배열이 된다~ =json이 sendjson이라 생각
			
			//자바스크립트에서는 for in문 사용할 수 있음
			//인덱스 0부터하라고 지정해줘야했는데 여기서 i만 지정하면 지가 0부터 알아서 1씩 증가하면서 움직인다 
			for(var i in json.list){
				$("#p5").html($("#p5").html() + "<br>" + json.list[i].no + ", " 
						+ decodeURIComponent(json.list[i].title).replace(/\+/gi," ") 
						+ ", " + json.list[i].write + ", "
						+ decodeURIComponent(json.list[i].content).replace(/\+/gi," ") 
						+ ", " + json.list[i].date); // p5를 선택해서 html()를 이요앻서 (새로운값 + 기존값) 값을 출력해라 
			}
		});//success callback
		//$.ajax(셋팅블럭) post로 전송하기 
		$.ajax({
			url: "/testa/test5.do",
			data: dataArray,
			type: "post",
			dataType: "json", //반환자료형
			success: function(data){
				//배열을 담은 객체일 경우
				//object ==> String으로 바뀜
				var jsonStr = JSON.stringify(data);
				
				//string ==> json 배열객체로 바꿈 그래야 , , , 이케 쓸 수 있음
				var json = JSON.parse(jsonStr); //파싱처리해야 배열이 된다~ =json이 sendjson이라 생각
				
				//자바스크립트에서는 for in문 사용할 수 있음
				//인덱스 0부터하라고 지정해줘야했는데 여기서 i만 지정하면 지가 0부터 알아서 1씩 증가하면서 움직인다 
				for(var i in json.list){
					$("#p5").html($("#p5").html() + "<br>" + json.list[i].no + ", " 
							+ decodeURIComponent(json.list[i].title).replace(/\+/gi," ") 
							+ ", " + json.list[i].write + ", "
							+ decodeURIComponent(json.list[i].content).replace(/\+/gi," ") 
							+ ", " + json.list[i].date); // p5를 선택해서 html()를 이요앻서 (새로운값 + 기존값) 값을 출력해라 
				}	
			}, //success function callback
			error: function(jqXHR, textStatus, errorThrown){
				console.log("error : " + textStatus);
			}//error
		});//ajax 셋팅? 닫기
		
		
	}); //click callback 
});//document ready callback
</script>


</body>
</html>