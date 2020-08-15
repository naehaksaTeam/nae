<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, student.model.vo.Member, lectureScore.model.vo.LectureScore"%>
<% ArrayList<LectureScore> list = (ArrayList<LectureScore>)request.getAttribute("list"); %>
<!DOCTYPE html>
<html lang="ko-KR" class="myhaksa" style="height: auto; overflow: auto;">

<head>
	<meta charset="UTF-8">

<!-- ★타이틀여기에써주세요 -->
	<title>beet</title>
	
	<link href="//fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700,800,900,300italic,400italic" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/earlyaccess/notosanskr" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/earlyaccess/nanumgothic" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body class="responsive" itemscope="" itemtype="http://schema.org/WebPage" style="height: auto; overflow: auto;">
	<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no">
	<link rel="profile" href="https://gmpg.org/xfn/11">
	<link rel="stylesheet" id="ls-google-fonts-css" href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,regular,700%7CNunito:300,regular,200,600&amp;subset=latin%2Clatin-ext" type="text/css" media="all">

<style type="text/css" id="wp-custom-css">

.major_info_text botton{
border: 2px solid #13436B;
background: #13436B;
color: #fff;
font-size: 16px;
padding: 5px 15px;
font-weight: 600;
cursor: pointer;
}		


p {
        margin: 0 0 1em;
    }
     
input.insert{ width: 40px; height:20px; margin:0px}  

select {width: 40px; height:20px; margin:0px}


/* ★ css style은 여기에 써주세요------------------------------------------------- */


</style>

<div class="wrapper">
	<div class="wrapper_inner">
	
	<!-- 헤더 header -->
		<%@ include file="/views/common/header.jsp" %>
		
		
		<div class="content " style="min-height: 755px; padding-top: 0px;">
		<div class="content_inner ">
		<div class="title_outer title_without_animation" data-animation="yes" data-height="350">
			<!-- ★배경 이미지 (변경시 backgroud-image, src 두군데 수정해야해요 --------------->
		<div class="title title_size_medium position_left has_fixed_background " style="background-size: 1920px; background-image: url(https://files.slack.com/files-tmb/T01724B8QMC-F018N11KBT8-fe8f03f57c/____________3_480.jpg); 
			height: 350px; background-color: rgb(153, 153, 153); background-position: center 2.205px;">
		<div class="image not_responsive">
			<img itemprop="image" src="https://files.slack.com/files-tmb/T01724B8QMC-F018N11KBT8-fe8f03f57c/____________3_480.jpg" alt="&nbsp;">
		</div>
		<div class="title_holder skrollable skrollable-between" data-0="opacity:1" data-300="opacity:0" style="padding-top: 133px; height: 217px; opacity: 1;">
					
					
		<div class="container">
		<div class="container_inner clearfix">
		<div class="title_subtitle_holder">
		<div class="title_subtitle_holder_inner">
		
		<h1><span>출결/성적</span></h1> <!-- ★h1 이름 (메뉴이름 여기에 써주세요) ------------------------------------------>
		</div> </div> </div> </div> </div> </div> </div>
				
		<div class="container">
			<div class="container_inner default_template_holder clearfix page_container_inner">
			<div class="two_columns_75_25 background_color_sidebar grid2 clearfix">
			<!-------------★여기에 본문작성------------------------------------------------------------------------->
			<p class="page_tt"> 출결/성적 관리 </p> <!-- ★본문 제목 -------------------->
							
			<input class="btn btn-outline-secondary" type="button" value="성적수정" onclick="activeEle()">
			<table class="main_default" id="sctable" style="font-size:0.9em">
			<thead>
				<tr>
								<th>
									-
								</th>
								<th>
									순번
								</th>
								<th>
									계열
								</th>
								<th>
									학과
								</th>
								<th>
									학번
								</th>
								<th>
									성명
								</th>
								<th>
									재수강여부
								</th>
								<th>
									출석점수
								</th>
								<th>
									중간점수
								</th>
								<th>
									기말점수
								</th>
								<th>
									총점수
								</th>
								<th>
									등급
								</th>
							</tr>
							</thead>
							<tbody>
							<div id="dataArea">
								<% int i=1;for(LectureScore lscore : list) {%>
								<p id="p_<%=i %>
									">
									<tr>
										<td>
											<input name="chk" type="checkbox" style="height:20px;"></button>
										</td>
										<td class="nr">
											<%=i %>
										</td>
										<% i+=1; %>
										<input type="hidden" value="<%=lscore.getReceptionno() %>">
										<td>
											<%=lscore.getCategoryname() %>
										</td>
										<td>
											<%=lscore.getMajorname()%>
										</td>
										<td>
											<%=lscore.getSid()%>
										</td>
										<td>
											<%=lscore.getSname()%>
										</td>
										<td>
											<%=lscore.getRetake()%>
										</td>
										<td>
											<input class="insert" type="text" readonly="readonly" value="<%=lscore.getAtndnscore()%>" />
										</td>
										<td>
											<input class="insert" type="text" readonly="readonly" value="<%=lscore.getMidscore()%>" />
										</td>
										<td>
											<input class="insert" type="text" readonly="readonly" value="<%=lscore.getFinalscore()%>" />
										</td>
										<td>
											<input class="insert" type="text" readonly="readonly" value="<%=lscore.getTotalscore()%>" />
										</td>
										<td>
											<select name="selectg">
												<option value="-" selected disabled hidden>-</option>
												<option value="A+" <%=(lscore.getGrade().trim().equals("A+"))?"selected":"" %>>A+</option>
												<option value="A" <%=(lscore.getGrade().trim().equals("A"))?"selected":"" %>>A</option>
												<option value="B+" <%=(lscore.getGrade().trim().equals("B+"))?"selected":"" %>>B+</option>
												<option value="B" <%=(lscore.getGrade().trim().equals("B"))?"selected":"" %>>B</option>
												<option value="C+" <%=(lscore.getGrade().trim().equals("C+"))?"selected":"" %>>C+</option>
												<option value="C" <%=(lscore.getGrade().trim().equals("C"))?"selected":"" %>>C</option>
												<option value="D+" <%=(lscore.getGrade().trim().equals("D+"))?"selected":"" %>>D+</option>
												<option value="D" <%=(lscore.getGrade().trim().equals("D"))?"selected":"" %>>D</option>
												<option value="F" <%=(lscore.getGrade().trim().equals("F"))?"selected":"" %>>F</option>
											</select>
										</td>
										<!-- 					<td><input class="checkBtn" type="button" value="테스트"> &nbsp;</td>
					<td><input type="button" value="행테스트"> &nbsp;</td> -->
									</tr>
								</p>
								<% } %>
								</tbody>
								</table>
								<br>
								<br>
								<center>
								<br>
									<strong>* 변경 후 반드시 저장을 눌러주세요 </strong>
									<div style="height:10px">
									</div>
									<input id="abc" type="button" value="저장"> &nbsp; <input id="sccancle" type="button" value="취소"> &nbsp; </center>
									
									
									
<script type="text/javascript" src="/beet/resources/js/jquery-3.5.1.min.js"></script>
<!-- 스크립트 쓰는곳 : $() 대신 jQuery() 로 써주세요  -->
<script>

//수정가능 
function activeEle() {
	jQuery("input[type=text]").removeAttr('readonly');
}
//숫자 0~100사이만 입력
var replaceNotInt = /[^0-9]/gi;
jQuery(document).ready(function(){
	jQuery("input[type=text]").on("focusout", function() { 
      var x = jQuery(this).val();
      if (x.length > 0) {
          if (x.match(replaceNotInt)) {
             x = x.replace(replaceNotInt, "");
          }
          jQuery(this).val(x);
          if(x > 100) {
        	  jQuery(this).val('100');
          }
      }
  }).on("keyup", function() {
	  jQuery(this).val(jQuery(this).val().replace(replaceNotInt, ""));  
  }); 
}); 
//테스트
jQuery(document).ready(function(){
	jQuery("input:checkbox[name=chk]").keyup(function(){
        if(jQuery("input:checkbox[name=chk]").is(":checked")){
            alert("체크박스 체크했음!");
        }else{
            alert("체크박스 체크 해제!");
        }
    });	
});
jQuery("input[type=text]").keyup(function()  {
	var chk = $(this)
	var tr = chk.parent().parent();
	 var checkbox = tr.find('td:first-child :checkbox');
     //checkbox.prop('checked', !checkbox.is(':checked'));
     checkbox.prop("checked", true);
});
jQuery(".chk").click(function(){ 	
		alert('a');
        var rowData = new Array(); 
        var tdArr = new Array();
      	var chk = $(this);
        //var checkbox = $("input[name=user_CheckBox]:checked");
});
jQuery("#abc").click(function(){ 
        var rowData = new Array(); 
        var checkbox = $("input:checkbox[name=chk]:checked");	
   checkbox.each(function(i) {
	var tr = checkbox.parent().parent().eq(i);
	var td = tr.children();
	var dataObj = new Object;
	//rowData.push(tr.text());
	dataObj.categoryname= td.eq(3).text();
	dataObj.majorname = td.eq(4).text();
	var sid = td.eq(5).text();
	var sname = td.eq(6).text();
	var retake = td.eq(7).text();
	var atndnScore = td.eq(8).find('input[type="text"]').val();
	var midScore = td.eq(9).find('input[type="text"]').val();
	var finalScore = td.eq(10).find('input[type="text"]').val();
	var totalScore = td.eq(11).find('input[type="text"]').val();
	var grade = td.eq(12).find('select[name="selectg"] option:selected').val();
	var dataArray = [categoryname, majorname, sid, sname, retake, atndnScore, midScore, finalScore,
		totalScore, grade];
	var aa = JSON.stringify(dataArray);
	var jsonArray = JSON.parse(JSON.stringify(dataArray));
/* 	jQuery.ajax({
		url : "/beet/scoreup",
		contentType : 'application/json',
		method : 'post',
		data : {jsondata : JSON.stringify(dataArray)},
		success : function(data){
			alert(data);
		},
		error :  function(request, status, error) {
	        alert(error);
		}
		}); */
   });
});
</script>
		</div> </div>
						</div>
					</div>
					
					
<!-- footer -->		
<center>			
<footer>
	<div class="footer_inner clearfix" >
	<div class="footer_bottom_holder" style="background-color:#13436b !important">
	<div class="container" style="background-color:#13436B;color:#ffffff;padding-top:10px">
	NAEHAKSA ©202008 KH Information Educational Semi Project 6DDUKE
	</div>
	</div>
	</div>
</footer>
		</center>		
		</div>
	</div>
</div> <!-- wrapper 닫음 -->
			

<!-- 여기는 수정금지! -->
<script type="text/javascript">
				jQuery(document).ready(function($) {
					jQuery('#dc_jqaccordion_widget-4-item .menu').dcAccordion({
						eventType: 'click',
						hoverDelay: 0,
						menuClose: false,
						autoClose: true,
						saveState: false,
						autoExpand: true,
						classExpand: 'current-menu-item',
						classDisable: '',
						showCount: false,
						disableLink: true,
						cookie: 'dc_jqaccordion_widget-4',
						speed: 'normal'
					});
				});
			</script>
		
						<script type="text/javascript">
				jQuery(document).ready(function($) {
					jQuery('#dc_jqaccordion_widget-5-item .menu').dcAccordion({
						eventType: 'click',
						hoverDelay: 0,
						menuClose: false,
						autoClose: true,
						saveState: false,
						autoExpand: true,
						classExpand: 'current-menu-item',
						classDisable: '',
						showCount: false,
						disableLink: false,
						cookie: 'dc_jqaccordion_widget-5',
						speed: 'slow'
					});
				});
			</script>
		
						<script type="text/javascript">
				jQuery(document).ready(function($) {
					jQuery('#dc_jqaccordion_widget-6-item .menu').dcAccordion({
						eventType: 'click',
						hoverDelay: 0,
						menuClose: false,
						autoClose: true,
						saveState: false,
						autoExpand: true,
						classExpand: 'current-menu-item',
						classDisable: '',
						showCount: false,
						disableLink: true,
						cookie: 'dc_jqaccordion_widget-6',
						speed: 'normal'
					});
				});
			</script>
		
						<script type="text/javascript">
				jQuery(document).ready(function($) {
					jQuery('#dc_jqaccordion_widget-7-item .menu').dcAccordion({
						eventType: 'click',
						hoverDelay: 0,
						menuClose: false,
						autoClose: true,
						saveState: false,
						autoExpand: true,
						classExpand: 'current-menu-item',
						classDisable: '',
						showCount: false,
						disableLink: true,
						cookie: 'dc_jqaccordion_widget-7',
						speed: 'normal'
					});
				});
			</script>
		
						<script type="text/javascript">
				jQuery(document).ready(function($) {
					jQuery('#dc_jqaccordion_widget-8-item .menu').dcAccordion({
						eventType: 'click',
						hoverDelay: 0,
						menuClose: false,
						autoClose: true,
						saveState: false,
						autoExpand: true,
						classExpand: 'current-menu-item',
						classDisable: '',
						showCount: false,
						disableLink: true,
						cookie: 'dc_jqaccordion_widget-8',
						speed: 'normal'
					});
				});
			</script>
		
						<script type="text/javascript">
				jQuery(document).ready(function($) {
					jQuery('#dc_jqaccordion_widget-9-item .menu').dcAccordion({
						eventType: 'click',
						hoverDelay: 0,
						menuClose: true,
						autoClose: true,
						saveState: false,
						autoExpand: false,
						classExpand: 'current-menu-item',
						classDisable: '',
						showCount: false,
						disableLink: true,
						cookie: 'dc_jqaccordion_widget-9',
						speed: 'normal'
					});
				});
			</script>
		
						<script type="text/javascript">
				jQuery(document).ready(function($) {
					jQuery('#dc_jqaccordion_widget-10-item .menu').dcAccordion({
						eventType: 'click',
						hoverDelay: 0,
						menuClose: true,
						autoClose: true,
						saveState: false,
						autoExpand: false,
						classExpand: 'current-menu-item',
						classDisable: '',
						showCount: false,
						disableLink: true,
						cookie: 'dc_jqaccordion_widget-10',
						speed: 'slow'
					});
				});
			</script>
		


</body>
</html>