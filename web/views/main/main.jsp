<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="student.model.vo.Member" isErrorPage="false" %>
<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<% Member m = (Member)session.getAttribute("loginMember"); %>
<%
    request.setCharacterEncoding("utf-8");
   
    Calendar now = Calendar.getInstance();
    int year = now.get(Calendar.YEAR);
    int month = now.get(Calendar.MONTH)+1;
   
    String _year = request.getParameter("year");
    String _month = request.getParameter("month");
   
    if(_year != null)
        year = Integer.parseInt(_year);
   
    if(_month != null)
        month = Integer.parseInt(_month);
   
    now.set(year, month-1, 1);    //출력할 년도, 월로 설정
   
    year = now.get(Calendar.YEAR);    //변화된 년, 월
    month = now.get(Calendar.MONTH) + 1;
   
    int end = now.getActualMaximum(Calendar.DAY_OF_MONTH);    //해당월의 마지막 날짜
    int w = now.get(Calendar.DAY_OF_WEEK);    //1~7(일~토)
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>beet</title>
</head>



<style type="text/css">
/* body {
  font-family: 'Poppins', sans-serif;
  margin: 0;
  padding: 0;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
} */
#outer{
			width: 800px;
			margin-left: auto;
			margin-right: auto;
		}

.quotes {
   /* width: 65vw; */
   min-height: 350px;  
   display: flex;
  /* flex-wrap: wrap; */
  /* justify-content: space-between; */
   z-index: 2; 
   
}
 .quotes .box {
  position: relative; 
  width: 230px;
  height: 230px;
  min-height: 0px;  
  background: #f2f2f2;
  padding: 30px;
  box-shadow: 10px 20px 30px rgba(0, 0, 0, 0.3) ;
} 



.quotes .box::after {
  content: '\201D';
  position: absolute;
  bottom: -10%;
  right: 5%;
  font-size: 120px;
  opacity: 0.2;
  background: transparent;
  filter: invert(1);
  pointer-events: none;
}

.quotes .box p {
  margin: 0;
  padding: 10px;
  font-size: 1.2rem;
}

.quotes .box h2 {
  /* position: absolute; */
  margin: 0;
  padding: 0;
  bottom: 10%;
  right: 10%;
  font-size: 1.5rem;
}
.quotes .bg {
  position: absolute;
  top: 0;
  left: 0;
  z-index: 1;
  opacity: 0;
  transition: all 0.5s ease-in;
  pointer-events: none;
  width: 100%;
  height: 200%;
  overflow: hidden;
}
</style>
<script type="text/javascript" src="/beet/resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">

$(function(){

	
	//스케줄
	$.ajax({
		url: "/beet/smonth",
		type: "get", 
		dataType: "json",
		success: function(data){
			
			console.log("success : "+ data);
			
			
			var jsonStr = JSON.stringify(data);
		
			var json = JSON.parse(jsonStr);
			
			var values = "";
			for(var i in json.list){
				values += "<tr><td>"+ json.list[i].schstartdate
				+ "</td><td><a href='/beet/schlist" +"'>" 
				 + decodeURIComponent(json.list[i].schname).replace(/\+/gi, " ")+ "</td></tr>";
			} 
			
			
			$("#mainSchedule").html($("#mainSchedule").html() + values); 
		
			
			
		},
		error: function(jqXHR, textstatus, errorthrown){
			console.log("error : "+ jqXHR + ","+textstatus + "," + errorthrown);
		}
	}); 
	
	//공지사항 
	$.ajax({
		url: "/beet/ntop5",
		type: "get", 
		dataType: "json",
		success: function(data){
			
			console.log("success : "+ data);
			
		
			var jsonStr = JSON.stringify(data);
			
			var json = JSON.parse(jsonStr);
			
			var values = "";
			for(var i in json.list){
				values += "<tr><td>"+ json.list[i].no 
				+ "</td><td><a href='/beet/ndetail?noticeno=" + json.list[i].no + "'>" 
				+ decodeURIComponent(json.list[i].title).replace(/\+/gi, " ")
				+ "</a></td><td>"+ json.list[i].date + "</td></tr>";
			} 
			
			
			$("#mainNotice").html($("#mainNotice").html() + values); //html을 적용해야 태그를 적용할 수 있다.
		
			
			
		},
		error: function(jqXHR, textstatus, errorthrown){
			console.log("error : "+ jqXHR + ","+textstatus + "," + errorthrown);
		}
	}); 
	
	//학점
 	$.ajax({
		url: "/beet/stusco?id=<%= m.getId() %>",
		type: "get", 
		dataType: "json",
		success: function(data){
			
			console.log("success : "+ data);
			
		
			var jsonStr = JSON.stringify(data);
			
			var json = JSON.parse(jsonStr);
			
			var values = "";
			for(var i in json.list){
				values += "<tr><td>"+ json.list[i].SEMESTER
				+ "</td><td>" + json.list[i].TERMGETPOINT + "</td></tr>";
			} 
			
			
			$("#mainScore").html($("#mainScore").html() + values); //html을 적용해야 태그를 적용할 수 있다.
		
			
			
		},
		error: function(jqXHR, textstatus, errorthrown){
			console.log("error : "+ jqXHR + ","+textstatus + "," + errorthrown);
		}
	});   

	//날씨
	$.ajax({
		url: "/beet/weather",
		type: "get", 
		dataType: "json",
		success: function(data){
			
			console.log("success : "+ data);
			
		
			var jsonStr = JSON.stringify(data);
			
			var json = JSON.parse(jsonStr);
			
			var values = "";
			for(var i in json.list){
				values += "<tr><td>"+ json.list[i].pop
				+ "</td><td>" + json.list[i].pop + "</td></tr>";
			} 
			
			
			$("#mainWeather").html($("#mainWeather").html() + values); //html을 적용해야 태그를 적용할 수 있다.
		
			
			
		},
		error: function(jqXHR, textstatus, errorthrown){
			console.log("error : "+ jqXHR + ","+textstatus + "," + errorthrown);
		}
	});   

	


	
	
});
	
</script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <style type="text/css">
            *{padding: 0px; margin: 0px;}  /* 브라우저별 기본 여백 차이가 있기에 작성한다. */
            body{font-size: 9pt;}
            td{font-size: 9pt;}
            a{cusor: pointer; color: #000000; text-decoration: none; font-size: 9pt; line-height: 150%;}
            a:HOVER, a:ACTIVE{font-size: 9pt; color: #F28011; text-decoration: underline;}
        </style>


<body>



<!-- 세션 아래 인클루드코드 복사해서 쓰세요! -->
<%-- <%@ include file="/views/common/sessionChk.jsp" %> --%>
<%-- <% if(m == null){ %>
<form action="/beet/login.cp">
아이디:<input type="text" name="userid">
비밀번호:<input type="password" name="userpwd">
<br><button type="submit" value="로그인">로그인</button>
</form>
<% }else{ %> --%>

<div id="outer">
<header>

<%@ include file="../common/header.jsp" %>

  <button onclick="javascript:location.href='views/lecture/menu.jsp'">수강신청 메뉴테스트</button>
<button onclick="javascript:location.href='views/attendance/sub4main.jsp'">출결 목록 테스트</button>
<button onclick="javascript:location.href='/beet/selectab?studentid=<%=m.getId()%>'">학생신청페이지</button>
<button onclick="javascript:location.href='/beet/nlist'">공지사항</button>
<button onclick="javascript:location.href='views/student/enrollPage.html'">회원가입</button>
<button onclick="javascript:location.href='views/student/findId.jsp'">아이디찾기</button>
<button onclick="javascript:location.href='views/student/findPassword.jsp'">비밀번호찾기</button>
<button onclick="javascript:location.href='views/student/memberUpdatePage.jsp'">마이페이지</button>
</header>



<br>
<br>

  <div class="quotes">
    <div class="card">
      <div class="box box1">
      <h1>내 학번 : <%= m.getId() %>, <%=m.getCategoryname() %>
       <%= m.getName() %>님 내학사에 오신것을 환영합니다.</h1>
		 
		  <table id="mainLecture" border="1" cellspacing="0">
      	<tr>
      		
      	</tr>
      	
      	</table>
      	
		
      </div>
      <div class="bg"></div>
    </div>
    <div class="card">
      <div class="box box2">
      <h2 >캘린더</h2>
                  <table width="250" border="0" cellpadding="1" cellspacing="2">
                <tr height="30">
                    <td align="center">
                        <%--  <a href="calendar.jsp?year=<%=year%>&month=<%=month-1%>">◀</a>  --%>
                        <b><%=year %>년 <%=month %>월</b>
                      <%--   <a href="calendar.jsp?year=<%=year%>&month=<%=month+1%>">▶</a> --%>
                    </td>
                </tr>
            </table>
           
            <table width="210" border="0" cellpadding="2" cellspacing="1" bgcolor="#cccccc">
                <tr height="25">
                    <td align="center" bgcolor="#e6e4e6"><font color="red">일</font></td>
                    <td align="center" bgcolor="#e6e4e6">월</td>
                    <td align="center" bgcolor="#e6e4e6">화</td>
                    <td align="center" bgcolor="#e6e4e6">수</td>
                    <td align="center" bgcolor="#e6e4e6">목</td>
                    <td align="center" bgcolor="#e6e4e6">금</td>
                    <td align="center" bgcolor="#e6e4e6"><font color="blue">토</font></td>
                </tr>
                <%
                    int newLine = 0;
                    //1일이 어느 요일에서 시작하느냐에 따른 빈칸 삽입
                    out.println("<tr height='25'>");
                    for(int i=1; i<w; i++)
                    {
                        out.println("<td bgcolor='#ffffff'>&nbsp;</td>");
                        newLine++;
                    }
                   
                    String fc, bg;
                    for(int i=1; i<=end; i++)
                    {
                       
                        fc = (newLine == 0)?"red":(newLine==6?"blue":"#000000");
                        bg = "#ffffff";
                        out.println("<td align='center' bgcolor=" + bg + "><font color=" + fc + ">"
                                + i + "</font></td>");
                        newLine++;
                        if(newLine == 7 && i != end)
                        {
                            out.println("</tr>");
                            out.println("<tr height='25'>");
                            newLine = 0;
                        }
                    }
                   
                    while(newLine>0 && newLine<7)
                    {
                        out.println("<td bgcolor='ffffff'>&nbsp;</td>");
                        newLine++;   
                    }
                    out.println("</tr>");
                %>
                
            </table>
      </div>
      <div class="bg"></div>
    </div>
    <div class="card">
      <div class="box box3">
        
     
        <table id="mainSchedule" border="1" cellspacing="0">
        <h2> <%=month %>월 학사일정</h2>
      	<tr>
      		<th> &nbsp;일&nbsp;</th><th> 일정 </th>
      	</tr>
      	
      	</table>
      	
      </div>
      <div class="bg"></div>
    </div>
  </div>


  <div class="quotes">
    <div class="card">
      <div class="box box1" >
      <table id="mainScore" border="1" cellspacing="0">
        <h2>나의 학점 현황</h2>
        
      		<th>학기</th><th> 취득학점 </th>
      	
      	</table>
      </div>
      <div class="bg"></div>
    </div>
    <div class="card">
      <div class="box box2">
      	<h2>최신 공지글</h2>
      	<section>
      	<table id="mainNotice" border="1" cellspacing="0">
      	<tr>
      		<th>번호<th>제목</th><th>날짜</th>
      	</tr>
      	</table>
      	</section>
        <p></p>
        
      </div>
      <div class="bg"></div>
    </div>
    <div class="card">
      <div class="box box3">
       
       <table id="mainWeather" border="1" cellspacing="0">
        <h2>날씨</h2>
        <tr>
        	<th>강수량</th>
        	
        </tr>
      </div>
      <div class="bg"></div>
    </div>
  </div>
  <br>
  
  <br>
 
  </div>
  <footer>
<%@include file="../common/footer.jsp" %>
</footer>


</body>
</html>