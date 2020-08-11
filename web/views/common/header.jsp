<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<!DOCTYPE html>
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


<h1 id="logo"><a href="/beet/views/main/main.jsp">logo</a></h1>

	<TD align=right style="PADDING:3px 10px 0 0">
		<ul id="bar">
			<td class=""><a href="/beet/logout.cp">로그아웃 </a></td>
			<td class="time" id="sessionTimer" style="color:#8f8f8f;">--:--:-- </td>
        	<td class="refresh" onclick="javascript:sessionTimeRefresh();"><a href="#skipnavi"> 연장 </a></td>     			
		</ul>	
	</TD>
	
	
<br>
<%-- <% if() {  //관리자 %>
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

<% }else { //학생 %> --%>
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
<%-- <% } %> --%>

</header>


</body>
</html>