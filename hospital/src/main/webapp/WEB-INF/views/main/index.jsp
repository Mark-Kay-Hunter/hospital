<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

	#go_home { width:150px; height:20px; border:none; background-color:transparent; font-family: 'Jeju Gothic', serif; }
	#go_reservation { width:150px; height:20px; border:none; background-color:transparent; font-family: 'Jeju Gothic', serif; } 
	#go_schedule { width:150px; height:20px; border:none; background-color:transparent; font-family: 'Jeju Gothic', serif; }
	#go_payment	{ width:150px; height:20px; border:none; background-color:transparent; font-family: 'Jeju Gothic', serif; }

</style>

</head>
<body>

	<nav id="nav2">
	
	<button id=go_home onclick='open_in_frame("/hospital/main/main")'>메인</button>
	
	<button id=go_reservation onclick='open_in_frame("/hospital/reservation/select")'>예약</button>
	
	<button id=go_schedule onclick='open_in_frame("/hospital/schedule/check")'>일정</button>
	
	<button id=go_payment onclick='open_in_frame("/hospital/payment/cost")'>결제</button>	

	</nav>
	

</body>
</html>