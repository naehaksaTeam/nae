<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="student.model.vo.Member" errorPage="../../views/common/error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="column_inner">
<aside class="sidebar">
							
		<div class="widget "><div id="dc_jqaccordion_widget-8">		
		<div class="dcjq-accordion" id="dc_jqaccordion_widget-8-item">

<ul id="menu-%ed%96%89%ec%a0%95" class="menu">
  <li id="menu-item-9101" class="menu001-9101"><a href="javascript:location.href='/beet/showplan.ss'" >강의계획서</a></li>
  <li id="menu-item-9102" class="menu002-9102"><a href="javascript:location.href='/beet/toapply?who=<%= ((Member)session.getAttribute("loginMember")).getId() %>'" onclick="javascript:location.href='/beet/toapply?who=<%= ((Member)session.getAttribute("loginMember")).getId() %>'" >수강신청</a></li>
  <li id="menu-item-9103" class="menu003-9103"><a href="javascript:location.href='/beet/showTimeTable?who=<%= ((Member)session.getAttribute("loginMember")).getId() %>'" >시간표조회</a></li> 
  <li id="menu-item-9104" class="menu004-9104"><a href="javascript:location.href='/beet/torest?who=<%= ((Member)session.getAttribute("loginMember")).getId() %>'" >휴보강신청</a></li>
  <li id="menu-item-9105" class="menu005-9105"><a href="javascript:location.href='/beet/toapl'" >수강과목추가</a></li> 
  <li id="menu-item-9106" class="menu006-9106"><a href="javascript:location.href='/beet/'" >첫화면으로</a></li>
</ul>		

		</div>
		</div></div>		</aside>
	</div>
</body>
</html>