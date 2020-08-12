<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="student.model.vo.Member" %>
 <% Member m1 = (Member)session.getAttribute("loginMember"); %>   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
</head>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>MainPage</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900|Varela+Round" rel="stylesheet" />
<!-- <link href="../default.css" rel="stylesheet" type="text/css" media="all" /> -->
<link href="/beet/views/common/fonts.css" rel="stylesheet" type="text/css" media="all" />
<style type="text/css">

 html, body {
 	
	height: 100%;
	
}

body {
	margin: 0px;
	padding: 0px;
/* 	 display: flex; 
  flex-direction: column; */
	background: #F8F8F8 url(images/overlay.png) repeat;
	font-family: 'Source Sans Pro', sans-serif;
	font-size: 12pt;
	font-weight: 400;
	color: rgba(0,0,0,.8);
} 

#wrapper {
	
	background: #FFF;
	margin: 0px 0px;
	
	
}

.container {
	height: 50px; 
	width: 1020px;
	
	margin: 0px auto;
}

.clearfix {
	clear: both;
}

/** HEADER */

#header-wrapper
{
	background: gray;
	background-size: cover;
}

#header {
	
	position: relative;
	overflow: hidden;
	height: 200px;
}

#social
{	
	position: absolute;
	top: 4em;
	right: 0;
}

#social a {
	color: rgba(0,0,0,.8);
	border: none;
	text-decoration: none;
}

/** LOGO */

#logo {
	
	position: absolute;
	top: 3em;
	left: 0;
	
}

/* #logo h1, #logo p {
	margin: 0;
	padding: 0;
} */

#logo h1 {
	margin: 0;
	padding: 0;
	letter-spacing: -1px;
	text-transform: lowercase;
	font-size: 3.5em;
	color: #FFF;
	
}

/* #logo p {
	padding: 0px;
	letter-spacing: 0.05em;
	text-transform: uppercase;
	font-size: 0.9em;
	color: #FFF;
}

#logo p a {
	color: #FFF;
} */

#logo a {
	border: none;
	background: none;
	text-decoration: none;
	color: #FFF;
}

/** MENU */

#menu {
	overflow: hidden; 
	background: #202020;
}

#menu ul {
	margin: 0px 0px 0px 0px;
	padding: 0px 0px;
	list-style: none;
	line-height: normal;
	text-align: center;
	


}

#menu li {
	display: inline-block;
}

#menu a {
	display: block;
	padding: 0px 20px 0px 20px;
	line-height: 60px;
	letter-spacing: 2px;
	text-decoration: none;
	text-transform: uppercase;
	text-align: center;
	font-family: 'Varela Round', sans-serif;
	font-size: 13px;
	color: rgba(255,255,255,0.5);
	border: none;
}

#menu a:hover, #menu .current_page_item a {
	text-decoration: none;
	color: rgba(255,255,255,1);
}

#menu .current_page_item a {
}

#menu .last {
	border-right: none;
}
.title
	{
		margin-bottom: 3em;
	}
	
	.title h2
	{
		margin: 0;
		padding: 0;
		font-size: 2.8em;
		color: rgba(255,255,255,0.9);
	}
	
	.title .byline
	{
		padding-top: 0.50em;
		letter-spacing: 0.15em;
		text-transform: uppercase;
		font-weight: 400;
		font-size: 1.1em;
		color: #6F6F6F;
	}

/*********************************************************************************/
/* Button Style                                                                  */
/*********************************************************************************/
 
	/* .button
	{
		display: inline-block;
		margin-top: 2em;
		padding: 0em 1em;
		background: #970A42;
		border-radius: 8px;
		letter-spacing: 0.10em;
		line-height: 3em;
		text-decoration: none;
		text-transform: uppercase;
		font-weight: 400;
		font-size: 1em;
		color: #FFF;
	} 
	 */
/*********************************************************************************/
/* Social Icon Styles                                                            */
/*********************************************************************************/

	 ul.contact
	{
		margin: 0;
		padding: 2em 0em 0em 0em;
		list-style: none;
	}
	
	ul.contact li
	{
		display: inline-block;
		padding: 0em 0.10em;
		font-size: 1em;
	}
	

	
	
	ul.contact li a:before
	{
		display: inline-block;
		background: none;
		width: 40px;
		height: 40px;
		line-height: 40px;
		text-align: center;
		color: rgba(255,255,255,1);
	}
	 
</style>
<script type="text/javascript">



</script>

</head>
<body>
<div id="wrapper">
	<div id="header-wrapper">
		<div id="header" class="container">
			<div id="logo">
				<h1><a href="/beet/views/main/main.jsp">logo</a></h1>
				
			</div>
			<div id="social">
				<ul class="contact">
					<li><a href="/beet/logout.cp" >로그아웃</a> | </li>
					<li><a href="#" >연장</a> | </li>
						<%if(m1.getId().substring(0, 1).equals("P")){ %>
							<li><%= m1.getName() %>교수님</li>
						<% }else if(m1.getId().substring(0, 1).equals("A")){ %>
							<li><%= m1.getName() %>관리자님</li>
						<% }else{ %>
							<li><%= m1.getName() %>님</li>
						<%} %>

				</ul>
			</div>
		</div>
		<%if(m1.getId().substring(0, 1).equals("P")){ //교수%>
		<div id="menu" class="container">
			<ul>
				<!-- <li class="current_page_item"><a href="#" accesskey="1" title="">Homepage</a></li> -->
				<li><a href="../student/memberUpdatePage.jsp" accesskey="1" title="">마이페이지</a></li>
				<li><a href="../attendance/sub4main.jsp" accesskey="2" title=""> 출결 </a></li>
				 <li><a href="/beet/showplan.ss" accesskey="5" title="">강의계획서</a></li>
				<li><a href="/beet/nlist" accesskey="5" title="">공지 사항</a></li> 
				<li><a href="/beet/schlist" accesskey="5" title="">학사일정</a></li>
				
			</ul>
		</div>
		<%}else if(m1.getId().substring(0, 1).equals("A")){//관리자 %>
		<div id="menu" class="container">
			<ul>
				<!-- <li class="current_page_item"><a href="#" accesskey="1" title="">Homepage</a></li> -->
				<li><a href="../student/memberUpdatePage.jsp" accesskey="1" title="">마이페이지</a></li>
				<li><a href="../attendance/sub4main.jsp" accesskey="2" title=""> 출결</a></li>
				<li><a href="/beet/selectss" accesskey="4" title="">등록 / 장학</a></li>
				 <li><a href="/beet/toapply?who=<%= ((Member)session.getAttribute("loginMember")).getId() %>" accesskey="5" title="">수강신청</a></li>
				<li><a href="/beet/selectaball" accesskey="5" title="">휴학 / 복학</a></li> 
				<li><a href="/beet/nlist" accesskey="5" title="">공지 사항</a></li> 
				<li><a href="/beet/schlist" accesskey="5" title="">학사일정</a></li>
				
			</ul>
		</div>
		<%}else{ //학생 %>
		<div id="menu" class="container">
			<ul>
				<!-- <li class="current_page_item"><a href="#" accesskey="1" title="">Homepage</a></li> -->
				<li><a href="../student/memberUpdatePage.jsp" accesskey="1" title="">마이페이지</a></li>
				<li><a href="../attendance/sub4main.jsp" accesskey="2" title=""> 출결</a></li>
				<li><a href="/beet/s.t.list" accesskey="4" title="">등록 / 장학</a></li>
				 <li><a href="/beet/toapply?who=<%= ((Member)session.getAttribute("loginMember")).getId() %>" accesskey="5" title="">수강신청</a></li>
				<li><a href="/beet/selectab?studentid=<%=m1.getId()%>" accesskey="5" title="">휴학 / 복학</a></li> 
				<li><a href="/beet/nlist" accesskey="5" title="">공지 사항</a></li> 
				<li><a href="/beet/schlist" accesskey="5" title="">학사일정</a></li>
				
			</ul>
		</div>
		<%} %>
	</div>
</div>
</body>

<%-- <button onclick="javascript:location.href='/beet/showplan.ss'" >강의 계획서</button>
<button onclick="javascript:location.href='/beet/toapply?who=<%= ((Member)session.getAttribute("loginMember")).getId() %>'" >수강신청</button>
<button onclick="javascript:location.href='/beet/showTimeTable?who=<%= ((Member)session.getAttribute("loginMember")).getId() %>'" >시간표 조회</button>
<button onclick="javascript:location.href='/beet/torest?who=<%= ((Member)session.getAttribute("loginMember")).getId() %>'" >휴보강신청</button>
<button onclick="javascript:location.href='/beet/toapl'" >수강과목추가 [관리자]</button>



<button onclick="javascript:location.href='../lecture/menu.jsp'">수강신청 메뉴테스트</button> 
<button onclick="javascript:location.href='../attendance/sub4main.jsp'">출결 목록 테스트</button>
<button onclick="javascript:location.href='/beet/selectaball'">학생신청페이지</button>
<button onclick="javascript:location.href='/beet/nlist'">공지사항</button>
<button onclick="javascript:location.href='../student/memberUpdatePage.jsp'">마이페이지</button> --%>
<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hearder</title>
</head>
<body>

<style type="text/css">

html{
height:100%;
}

body{
min-height:100%;}
header{
padding:0px;
margin-left: 20%;
margin-bottom: 0;
height:200px; 

}
header h1#logo{
	/* text-decoration:none !important;
	margin-right:30%; */
	font-size: 36pt;
	font-style: italic;
	color : gray;
	text-shadow: 2px 2px 2px gray;

}
#bar  {
 	position: absolute;  
  	text-align: center; 
 }
header ul#menubar {
	position: relative;  
    height: 50px; 
    width: 850px; 
                    
	
	
 }

header ul#menubar li {
	 list-style: none;          
     color: white;               
     background-color: gray;  
     float: left;               
     line-height: 30px;          
     vertical-align: middle;     
     text-align: center; 
}
header ul#menubar li a{
	text-decoration:none;                    
      color: white;                            
      display: block;                           
      width: 100px;                              
      font-size: 12px;                        
      font-weight: bold;                        
      font-family: "Trebuchet MS", Dotum, Arial; 
	
}
header ul#menubar li a:hover{
	color: black;                 
    background-color: #4d4d4d;   
    

}
hr { clear: both; }
</style>


<header>


<h1 id="logo"><a href="../main/main.jsp">logo</a></h1>
<br>
		
	
	<TD align=right style="PADDING:3px 10px 0 0">
		<ul id="bar">
			<td class=""><a href="/beet/logout.cp">로그아웃 </a></td>
			<td class="time" id="sessionTimer" style="color:#8f8f8f;">--:--:-- </td>
        	<td class="refresh" onclick="javascript:sessionTimeRefresh();"><a href="#skipnavi"> 연장 </a></td>     			
		</ul>	
	</TD>
	
	
<br>
<% if() {  //관리자 %>
<ul id="menubar">
<li><a href="/test1/mlist">마이페이지</a></li>
<li><a href="/test1/nlist">관리</a></li>
<li><a href="/test1/blist">등록 / 장학 </a></li>
<li><a href="#">학교 소식</a></li>
<li><a href="#">학사일정 </a></li>
</ul>

<% }else if(){ //교수 %>
<ul id="menubar">
<li><a href="/test1/mlist">마이페이지</a></li>
<li><a href="/test1/nlist">강의</a></li>
<li><a href="/test1/blist">출결 / 성적 </a></li>
<li><a href="#">학교 소식</a></li>
<li><a href="#">학사일정 </a></li>
</ul>

<% }else { //학생 %>
<ul id="menubar">
<li><a href="views/student/memberUpdatePage.jsp">마이페이지</a></li>
<li><a href="#">강의</a></li>
<li><a href="#">성적</a></li>
<li><a href="#">등록 / 장학</a></li>
<li><a href="views/lecture/menu.jsp">수강신청</a></li>
<li><a href="#">휴학 / 복학</a></li>
<li><a href="#">학교 소식</a></li>
<li><a href="/beet/schlist">학사일정</a></li>
</ul>
<% } %>

</header>


</body>
</html> --%>