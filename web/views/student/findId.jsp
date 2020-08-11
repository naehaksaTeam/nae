<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

 String name = request.getParameter("name");
 String domain = request.getParameter("domain");
 String e_domain = request.getParameter("e_domain");
 String email = request.getParameter("email");
 System.out.println("이름:" + name);

 if (domain.equals("0")) {
  email = email + "@" + e_domain;
 } else {
  email = email + "@" + domain;
 }

 System.out.println("이메일:" + email);
 String id = "";//id(name, email); //아이디를 디비에서 가져옴..실패시 널
 if (id != null) { //아이디 찾기 성공시

 }
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
tr,td {
 border: 0px solid none;
}

 

k:hover {
 text-decoration: none;
 color: #9354ED
}
</style>


</script>
</head>
<body>
<body>
 <font face="Yang Rounded">
  <form name="idsearch" method="post">

   <table width="1330px" height="530px" align="center">
    <tr>
     <td>
      <%
       if (id != null) {
      %>
      <table width="550px" align=center border="0"
       style="color: black; font-size: 30px;">
       <tr align=center>
        <td style="height: 170px">* 회원님의 아이디를 찾았습니다! *</td>
       </tr>
       <tr align=center>
        <td style="font-size: 20px"><%=id%></td>
       </tr>
      </table> <%
  } else {
 %>
      <table width="550px" align=center border="0"
       style="color: black; font-size: 30px;">
       <tr align=center>
        <td style="height: 170px">* 아이디 찾기를 실패하셨습니다. *</td>
       </tr>
       <tr align=center>
        <td><input type="button" value="돌아가기"
         onClick="history.back()"></td>
       </tr>
      </table> <%
  }
 %> </font>
      </form>

</font>
</body>

</body>
</html>