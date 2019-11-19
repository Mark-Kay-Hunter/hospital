<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	
	#go_board { float:left; width:100px; height:15px; }
	#go_reservaion { float:left; width:100px; height:15px; }
	#go_schedule { float:left; width:100px; height:15px; }
	#go_payment { float:left; width:100px; height:15px; }
	#go_login { float:left; width:100px; height:15px; }

</style>

</head>

<body>

		<div id="go_board"><a href="/hospital/board/list">병원소식</a></div>
		<div id="go_reservation"><a href="/hospital/reservation/select">검사/진료예약</a></div>
		<div id="go_schedule"><a href="/hospital/schedule/check">나의 일정</a></div>
		<div id="go_payment"><a href="/hospital/payment/cost">결제하기</a></div>
		<div id="go_login"><a href="/hospital/member/login">로그인</a></div>

</body>

</html>