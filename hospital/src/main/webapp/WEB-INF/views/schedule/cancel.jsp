<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);
	body { font-family: 'Jeju Gothic', serif; align:center; }
	

	#sch_ins { width:auto; height:25px; background-color:#019ddd; color:white; text-align:center; vertical-align:middle; font-size:15px; }
	#sch_doc { width:auto; height:25px; background-color:#019ddd; color:white; text-align:center; vertical-align:middle; font-size:15px; }
	#can_not { width:auto; height:50px; background-color:#019ddd; color:white; text-align:center; vertical-align:middle; font-size:15px; }
	
	#go_cc { width:200px; height:50px; background-color:#5ac3ee; border:none; font-size:20px; font-family: 'Jeju Gothic', serif; }
</style>

</head>
<body>

<div id=sch_ins>
<center><input type="checkbox" id="ins_1">2019년 12년 12일 16시 30분 일반예약검진</center>
</div>

<p>

<div id=sch_doc>
<center><input type="checkbox" id="doc_1">2019년 12년 12일 17시 00분 내과 박교수선생님 진료</center>
</div>

<p><p>

<div id="can_not">
<center>내원으로 예약된 검사/진료일정취소는 전화(02-9999-7575)로 진행가능합니다.</center>
<p>
<center>결제하신 금액은 취소일 기준 5영업일이내로 환불될 예정입니다.</center>
</div>
<p>
<div id="can_del">
<center><input type="checkbox" id="cancel_ok"> 취소 및 환불 규정을 확인하였으며, 해당 예약을 취소합니다</center>
<p></p>
<center><button type=button id=go_cc>예약취소하기</button></center>

</div>

</body>

</html>