<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>

	@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);
	body { font-family: 'Jeju Gothic', serif; align:center; }

	div { align:center; }

	#sch_ins { width:auto; height:25px; background-color:#019ddd; color:white; text-align:center; vertical-align:middle; font-size:15px; }
	#sch_doc { width:auto; height:25px; background-color:#019ddd; color:white; text-align:center; vertical-align:middle; font-size:15px; }
	#sch_not { width:auto; height:25px; background-color:#019ddd; color:white; text-align:center; vertical-align:middle; font-size:15px; }
	
	#go_md { width:200px; height:50px; background-color:#5ac3ee; border:none; font-size:20px; font-family: 'Jeju Gothic', serif; }
	#go_cc { width:200px; height:50px; background-color:#5ac3ee; border:none; font-size:20px; font-family: 'Jeju Gothic', serif; }

</style>

</head>

<body>

<center>

<div id=sch_ins>
<input type=radio>김회원님은 2019년 12년 12일 17시 30분에 치료경과검사예약이 있습니다.
</div>

<p>

<div id=sch_doc>
<input type=radio>김회원님은 2019년 12년 12일 17시 00분에 내과 박교수선생님 진료예약이 있습니다.
</div>

<p>

<div id=sch_not>
예약시간 10분전까지 병원에 방문하여주시기 바랍니다.
</div>

<p><p>
<div id=sch_but>
<a href=/hospital/schedule/change><button type=button id=go_md>예약변경</button></a>
<a href=/hospital/schedule/cancel><button type=button id=go_cc>예약취소</button></a>
</div>
</center>
</body>

</html>