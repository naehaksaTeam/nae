<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="termScore.model.vo.TermScore, student.model.vo.Member " %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beet</title>
</head>
<body>

<div class="column_inner">
<aside class="sidebar">
							
		<div class="widget "><div id="dc_jqaccordion_widget-8">		
		<div class="dcjq-accordion" id="dc_jqaccordion_widget-8-item">

<ul id="menu-%ed%96%89%ec%a0%95" class="menu">
  <li id="menu-item-9101" class="menu001-9101">
  <form action="/beet/mylctr" method="post">
<input type="hidden" name="userid" value="<%=((Member)session.getAttribute("loginMember")).getId() %>">
<!-- 강의목록 join시 중복되는 문제 해결 필요 -->
 </form>
</li>
  <li id="menu-item-9102" class="menu002-9102">
  <form action="/beet/myScore" method="post">
<input type="hidden" name="userid" value="<%=((Member)session.getAttribute("loginMember")).getId() %>">
<input type="submit" class="btn-sm" value="나의성적조회">
 </form>
 </li>
</ul>		

		</div>
		</div></div>		</aside>
	</div>
</body>
</html>