<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

#selecttable td{
width:300px;
height:300px;
background-color:#dff9fb;
color:black;
text-align:center;
font-size:300%
}
a:link {text-decoration: none; color: black;}
a:visited {text-decoration: none; color: black;}
a:active {text-decoration: none; color: black;}
a:hover {text-decoration: none; color: black; font-size:200%;}
</style>
</head>
<body>

<table id="selecttable">
<td>
<a href="/beet/toenroll?who=student">학생</a>
</td>
<td>
<a href="/beet/toenroll?who=professor">교수</a>
</td>
<td>
<a href="/beet/toenroll?who=admin">임직원</a>
</td>
</table>

</body>
</html>