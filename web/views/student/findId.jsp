<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beet</title>
<form class="form-horizontal" role="form" method="POST" action="index">
아이디찾기
<div class="row">
   <div class="col-md-10 inputbb">
       <div class="form-group has-danger">
           <div class="input-group mb-2 mr-sm-2 mb-sm-0">
               <input type="text" name="name" class="form-control" id="name" placeholder="이름" required autofocus>
           </div>
       </div>
   </div>
</div>
<div class="row">
   <div class="col-md-10 inputbb">
       <div class="form-group">
           <div class="input-group mb-2 mr-sm-2 mb-sm-0">
             <input type="treasure" name="treasure" class="form-control" id="treasure" placeholder="나의보물1호" required>
           </div>
       </div>
   </div>
 </div>
 
 <div class="row">
   <div class="col-md-10 inputbb">
         <button type="submit" class="btn btn-outline-secondary findbtn">찾기</button>
   </div>
 </div>
 
 </form>
</body>
</html>