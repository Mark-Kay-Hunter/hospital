<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>

	div { align:center; }

	#sch_ins { width:auto; height:20px; background-color:skyblue; }
	#sch_doc { width:auto; height:20px; background-color:skyblue; }
	#sch_not { width:auto; height:20px; background-color:skyblue; }
	
	#go_md { width:200px; height:100px; background-color:#D5FFBE; border:none; font-size:20px; font-family: 'Jeju Gothic', serif; }
	#go_cc { width:200px; height:100px; background-color:#D5FFBE; border:none; font-size:20px; font-family: 'Jeju Gothic', serif; }

</style>

</head>

<body>

<div id=sch_ins>
[name]님은 [year]년 [month]년 [day]일 [hour]시 [minute]분에 [inpection]검진예약이 있습니다.
</div>

<p>

<div id=sch_doc>
[name]님은 [year]년 [month]년 [day]일 [hour]시 [minute]분에 [subject]과 [doctor]선생님 진료예약이 있습니다.
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
</body>

</html>