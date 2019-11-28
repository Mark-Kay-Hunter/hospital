<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

	@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);
	body { font-family: 'Jeju Gothic', serif; }
	
	#go_ins { width:300px; height:100px; background-color:#C8F3FF; border:none; font-size:20px; font-family: 'Jeju Gothic', serif; }
	#go_doc { width:300px; height:100px; background-color:#C8F3FF; border:none; font-size:20px; font-family: 'Jeju Gothic', serif; }
	#go_my { width:200px; height:100px; background-color:#D5FFBE; border:none; font-size:20px; font-family: 'Jeju Gothic', serif; }
	#go_md { width:200px; height:100px; background-color:#D5FFBE; border:none; font-size:20px; font-family: 'Jeju Gothic', serif; }
	#go_cc { width:200px; height:100px; background-color:#D5FFBE; border:none; font-size:20px; font-family: 'Jeju Gothic', serif; }

</style>
</head>
<body>

<div class=btns align=center>
<a href=/hospital/reservation/inspection><button type=button id=go_ins>검사예약</button></a>
<a href=/hospital/reservation/doctor><button type=button id=go_doc>진료예약</button></a>
<br>
<a href=/hospital/schedule/check><button type=button id=go_my>일정확인</button></a>
<a href=/hospital/schedule/change><button type=button id=go_md>예약변경</button></a>
<a href=/hospital/schedule/cancel><button type=button id=go_cc>예약취소</button></a>
</div>

</body>
</html>