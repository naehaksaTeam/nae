<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ page
	import="attendance.model.vo.Atndn, java.util.*, student.model.vo.Member,
java.util.Date, java.text.SimpleDateFormat"%>
<%
	ArrayList<Atndn> list = (ArrayList<Atndn>)request.getAttribute("list");
	
	SimpleDateFormat sdf = new SimpleDateFormat("E");
	SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd");
	Date today = new Date();
	String day = sdf.format(today);
	Date enter = sdf2.parse("2020-06-8");

	long diff = today.getTime() - enter.getTime();
	long diffWeeks = diff / (24 * 60 * 60 * 1000) / 7 ;
					
%>   

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

<body class="responsive" style="height: auto; overflow: auto;">
	
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
		<div class="title title_size_medium position_left has_fixed_background " style="background-size: 1920px; background-image: url(/beet/resources/images/page.jpg); 
			height: 350px; background-color: rgb(153, 153, 153); background-position: center 2.205px;">
		<div class="image not_responsive">
			<img itemprop="image" src="/beet/resources/images/page.jpg" alt="&nbsp;">
		</div>
		<div class="title_holder skrollable skrollable-between" data-0="opacity:1" data-300="opacity:0" style="padding-top: 133px; height: 217px; opacity: 1;">
					
					
		<div class="container">
		<div class="container_inner clearfix">
		<div class="title_subtitle_holder">
		<div class="title_subtitle_holder_inner">

		<h1 style="margin-top:75px"><span >출결/성적</span></h1> <!-- ★h1 이름 (메뉴이름 여기에 써주세요) ------------------------------------------>
		</div> </div> </div> </div> </div> </div> </div>
				
		<div class="container" >
			<div class="container_inner default_template_holder clearfix page_container_inner">
			<div class="two_columns_75_25 background_color_sidebar grid2 clearfix">
			<!-------------★여기에 본문작성------------------------------------------------------------------------->
			<p class="page_tt"> 출결 관리</p>  <!-- ★본문 제목 -------------------->
			
			<div>
			<center>
			<form action="/beet/atnone.p" method="post">
			<input id="updateScoreBtn" class="btn btn-outline-secondary" type="button" value="이번 주 출결입력"  style="width:200px;height:40px;font-size:1.2em;">
			</form>
			</center>
			</div>
			<!-- <strong><div id="editSc" class="container" style="margin-bottom:10px;padding-top:3px;width:100%;height:35px;background-color:#20c997 !important;color:#ffffff;display:block">
			<center>성적 수정모드 </center></strong> --></div>
			
<ul>
<li><%= list.get(0).getLname() %></li>
<li><%= list.get(0).getLcode() %></li>
<li><%= list.get(0).getLpoint() %></li>
<li><%= list.get(0).getLtime() %>요일</li>
<li><%= diffWeeks %></li>
</ul>		
	<table id="AtndnTable" class="main_default">
<thead>
<tr>
<th>순번</th>
<th>학과</th>
<th>학번</th>
<th>성명</th>
<th style="font-size:0.7em" value="1">1주</th>
<th style="font-size:0.7em" value="2">2주</th>
<th style="font-size:0.7em" value="3">3주</th>
<th style="font-size:0.7em" value="4">4주</th>
<th style="font-size:0.7em" value="5">5주</th>
<th style="font-size:0.7em" value="6">6주</th>
<th style="font-size:0.7em" value="7">7주</th>
<th style="font-size:0.7em" value="8">8주</th>
<th style="font-size:0.7em" value="9">9주</th>
<th style="font-size:0.7em" value="10">10주</th>
<th style="font-size:0.7em" value="11">11주</th>
<th style="font-size:0.7em" value="12">12주</th>
<th style="font-size:0.7em" value="13">13주</th>
<th style="font-size:0.7em" value="14">14주</th>
<th style="font-size:0.7em" value="15">15주</th>
<th style="font-size:0.7em" value="16">16 주</th>
</tr>
<% int k=0 ;for(Atndn atndn : list) { %>
<tr style="border:1px solid">
<td><%= ++k %></td>
<td><%=atndn.getMajorname() %></td>
<td><%= atndn.getSid() %></td>
<td><%= atndn.getSname() %></td>
<td class="week1"><%=atndn.getWeek1() %></td>
<td class="week2"><%=atndn.getWeek2() %></td>
<td class="week3"><%=atndn.getWeek3() %></td>
<td class="week4" ><%=atndn.getWeek4() %></td>
<td class="week5"><%=atndn.getWeek5() %></td>
<td class="week6"><%=atndn.getWeek6() %></td>
<td class="week7"><%=atndn.getWeek7() %></td>
<td class="week8"><%=atndn.getWeek8() %></td>
<td class="week9"><%=atndn.getWeek9() %></td>
<td class="week10"><%=atndn.getWeek10() %></td>
<td class="week11"><%=atndn.getWeek11() %></td>
<td class="week12"><%=atndn.getWeek12() %></td>
<td class="week13"><%=atndn.getWeek13() %></td>
<td class="week14"><%=atndn.getWeek14() %></td>
<td class="week15"><%=atndn.getWeek15() %></td>
<td class="week16"><%=atndn.getWeek16() %></td>
<td style="display:none"><%=atndn.getLcode() %></td>
</tr>
<% } %>
</table>		
					
	<button id="update" type="button">Button</button>
<div class="counter">1</div>								
<div class="counter">1</div>								
<div class="counter">1</div>								
									
<script type="text/javascript" src="/beet/resources/js/jQuery.js"></script>

<script>
<!-- 스크립트 쓰는곳   -->
//수정가능 
$(document).ready(function(){

});	








$("#updateScoreBtn").click(function(){
	alert("작동!")
});

	$("#AtndnTable tr").click(function(){
	 var str = ""
	 var tdArr = new Array();
	            
	 // 현재 클릭된 Row(<tr>)
	var tr = $(this);
	var td = tr.children();

	
	alert(td.eq(<%=diffWeeks%>+3).text())
	
	if( td.eq(<%=diffWeeks%>+3).text() == "○"){
		td.eq(<%=diffWeeks%>+3).html("Ⅹ")
	}else if(td.eq(<%=diffWeeks%>+3).text() == "Ⅹ"){
		td.eq(<%=diffWeeks%>+3).html("△")
	}else if(td.eq(<%=diffWeeks%>+3).text() == "△"){
		td.eq(<%=diffWeeks%>+3).html("○")
	}
		
	var aSid = td.eq(2).text();
	var aAtndn = td.eq(<%=diffWeeks%>+3).text();
	var getWeek = "week" + <%=diffWeeks%>
	var aLcode = td.eq(20).text();
	
	alert(aSid);
	alert(getWeek);
	alert(aAtndn);
	alert(aLcode);
	
	$.ajax({
		url : "/beet/atnup.p",
		method : "post",
		async : true,
		data : {
			sid : td.eq(2).text(),
			value : td.eq(<%=diffWeeks%>+3).text(),
			getweek : "week" + <%=diffWeeks%>,
			lcode : td.eq(20).text()
			
		},
		success : function(data){
			
		}
	});
	
	//$('.week10').after( '<p>Hello</p>' );
	
/* 	$("#update").click(function() {
    $('.counter').html(function(i, val) {
        $.ajax({
            url: '/path/to/script/',
            type: 'POST',
            data: {increment: true},
            success: function() { alert('Request has returned') }
        });
        return +val+1;
    });
}
	 */
	
	/* 
	var form = document.createElement('form');

	var objs;

	objs = document.createElement('input');

	objs.setAttribute('type', 'hidden');

	objs.setAttribute('name', 'name');

	objs.setAttribute('value', value);

	form.appendChild(objs);

	form.setAttribute('method', 'post');

	form.setAttribute('action', "/action.php");

	document.body.appendChild(form);

	form.submit(); */

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
</body>
</html>