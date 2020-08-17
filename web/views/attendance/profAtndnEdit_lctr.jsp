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
	Date enter = sdf2.parse("2020-03-02");

	long diff = today.getTime() - enter.getTime();
	long diffWeeks = diff / (24 * 60 * 60 * 1000) / 7 * 2;
					
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
			<p class="page_tt"> 출결 관리  <!-- ★본문 제목 -------------------->

			<input id="chnScoreBtn" class="btn btn-outline-secondary" type="button" style="float:right" value="출결호출">
			</p>
			<!-- <strong><div id="editSc" class="container" style="margin-bottom:10px;padding-top:3px;width:100%;height:35px;background-color:#20c997 !important;color:#ffffff;display:block">
			<center>성적 수정모드 </center></strong> --></div>
			
			
	<table class="main_default">
<thead>
<tr>
<th>순번</th>
<th>학과</th>
<th>학번</th>
<th>성명</th>
<th style="font-size:0.7em">1주</th>
<th style="font-size:0.7em">2주</th>
<th style="font-size:0.7em">3주</th>
<th style="font-size:0.7em">4주</th>
<th style="font-size:0.7em">5주</th>
<th style="font-size:0.7em">6주</th>
<th style="font-size:0.7em">7주</th>
<th style="font-size:0.7em">8주</th>
<th style="font-size:0.7em">9주</th>
<th style="font-size:0.7em">10주</th>
<th style="font-size:0.7em">11주</th>
<th style="font-size:0.7em">12주</th>
<th style="font-size:0.7em">13주</th>
<th style="font-size:0.7em">14주</th>
<th style="font-size:0.7em">15주</th>
<th style="font-size:0.7em">16주</th>
</tr>
<% int k=0 ;for(Atndn atndn : list) { %>
<tr class="main_default">
<td><%= ++k %></td>
<td><%=atndn.getMajorname() %></td>
<td><%= atndn.getSid() %></td>
<td><%= atndn.getSname() %></td>
<td><%=atndn.getWeek1() %></td>
<td><%=atndn.getWeek2() %></td>
<td><%=atndn.getWeek3() %></td>
<td><%=atndn.getWeek4() %></td>
<td><%=atndn.getWeek5() %></td>
<td><%=atndn.getWeek6() %></td>
<td><%=atndn.getWeek7() %></td>
<td><%=atndn.getWeek8() %></td>
<td><%=atndn.getWeek9() %></td>
<td><%=atndn.getWeek10() %></td>
<td><%=atndn.getWeek11() %></td>
<td><%=atndn.getWeek12() %></td>
<td><%=atndn.getWeek13() %></td>
<td><%=atndn.getWeek14() %></td>
<td><%=atndn.getWeek15() %></td>
<td><%=atndn.getWeek16() %></td>
</tr>
<% } %>
</table>		

	<div id="savechn">
	<center>
		<br>
		<strong>* 변경 후 반드시 저장을 눌러주세요 </strong>
			<div style="height:10px"></div>
		<input id="abc" type="button" value="저장"> &nbsp; 
		<input id="sccancle" type="button" value="취소"> &nbsp; 
	</center>
			</div>						
									
									
<script type="text/javascript" src="/beet/resources/js/jQuery.js"></script>

<script>
<!-- 스크립트 쓰는곳   -->
//수정가능 
$(document).ready(function(){

$("#btnList").click(function(){

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

	form.submit();

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
</body>
</html>