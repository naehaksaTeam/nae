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
					<td><inputtype="button" value="행테스트"> &nbsp;</td>
				
			</tr>
			</p>
			<% } %>
			<tr>
			<input id="abc" type="button" value="와테스트">
			<input id="scsave" type="submit" value="저장"> &nbsp;
			<input id="sccancle" type="button" value="취소"> &nbsp;
			</tr>
			</form>
			
			
			
		</tbody>
	</table>
	
	
	
	<div class="test" id="ttest" ></div> 
	<form id="updateArr">
	<input type="text" value="tdArr">
	<input type="submit" value="전송">
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
        var tdArr = new Array();
        var checkbox = $("input:checkbox[name=chk]:checked");	
     	
   checkbox.each(function(i) {

	var tr = checkbox.parent().parent().eq(i);
	var td = tr.children();
	
	//rowData.push(tr.text());
	var categoryname= td.eq(3).text()+", "; 
	var majorname = td.eq(4).text()+", "; 
	var sid = td.eq(5).text()+", ";
	var sname = td.eq(6).text()+", ";
	var retake = td.eq(7).text()+", ";
	var atndnScore = td.eq(8).find('input[type="text"]').val()+", ";
	var midScore = td.eq(9).find('input[type="text"]').val()+", ";
	var finalScore = td.eq(10).find('input[type="text"]').val()+", ";
	var totalScore = td.eq(11).find('input[type="text"]').val()+", ";
	var grade = td.eq(12).find('select[name="selectg"] option:selected').val()+", ";

   
     //배열 
	 tdArr.push(categoryname);
     tdArr.push(majorname);
     tdArr.push(sid);
     tdArr.push(sname);
     tdArr.push(retake);
     tdArr.push(atndnScore);
     tdArr.push(midScore);
     tdArr.push(finalScore); 
     tdArr.push(totalScore);
     tdArr.push(grade);

   });
	
	//$("#ttest").html(tdArr);	
});

</script>



</body>
</html>