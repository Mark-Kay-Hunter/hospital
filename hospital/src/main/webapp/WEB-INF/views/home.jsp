<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<head>
<title>[ :: 우리병원 홈페이지 :: ProtoType :: OnTest :: ]</title>
	<style>
	
	
	@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);
	body { font-family: 'Jeju Gothic', serif; align:center; }
		
	#upper { width:auto; height:110px; background:#019DDD; color:#FAFAFA; }
	#link { width:auto; height:20px; align:right; background:#019DDD; }
	#menu { width:auto; height:50px; align:center; background:#019DDD; color:#FAFAFA; }
	#main { width:auto; height:600px; }
	#footer { width:auto; height:100px;  background:#019DDD; color:#FAFAFA; }
	
	#up1 { width:25%; height:110px; float:left; }
	#up2 { width:75%; height:110px; float:left; }
	
	dl dd { display:inline-block; }
	
	#go_login { background-color:transparent; border:none; font-family: 'Jeju Gothic', serif; font-size:15px; color:#FAFAFA; }
	#go_signup { background-color:transparent; border:none; font-family: 'Jeju Gothic', serif; font-size:15px; color:#FAFAFA; }
	
	#go_home { width:200px; height:20px; border:none; background-color:transparent; font-family: 'Jeju Gothic', serif; font-size:20px; color:#FAFAFA; }
	#go_board { width:200px; height:20px; border:none; background-color:transparent; font-family: 'Jeju Gothic', serif; font-size:20px; color:#FAFAFA; }
	#go_reservation { width:200px; height:20px; border:none; background-color:transparent; font-family: 'Jeju Gothic', serif; font-size:20px; color:#FAFAFA; } 
	#go_schedule { width:200px; height:20px; border:none; background-color:transparent; font-family: 'Jeju Gothic', serif; font-size:20px; color:#FAFAFA; }
	#go_payment	{ width:200px; height:20px; border:none; background-color:transparent; font-family: 'Jeju Gothic', serif; font-size:20px; color:#FAFAFA; }

	</style>
	
	<script src="//code.jquery.com/jquery.min.js"></script>
	<script>
	function open_in_frame(url) 
	{
	$('#mainframe').attr('src', url);
	}
	</script>

</head>

<body>

	<div id="upper">
	
	<div id=up1 align=center><img src="resources/image/wrhosci.png"></div><div id=up2 align=center><img src="resources/image/title.png"></div>
	
	</div>
	

	<div id="link" align=right>
		<nav id="nav">
			<dl>
				<dd><button id=go_login onclick='window.open("/hospital/member/login", "로그인", "width=600px, height=350px")'>로그인</button></dd>
				<dd><button id=go_signup onclick='window.open("/hospital/member/signup", "회원가입", "width=650px, height=550px")'>회원가입</button></dd>
			</dl>
		</nav>
	</div>	
	
	<div id="menu" align=center>
	
	<nav id="nav2">
		<button id=go_home onclick='open_in_frame("/hospital/main/main")'>메인</button>
		<button id=go_board onclick='open_in_frame("/hospital/board/list")'>게시판</button>
		<button id=go_reservation onclick='open_in_frame("/hospital/reservation/select")'>예약</button>
		<button id=go_schedule onclick='open_in_frame("/hospital/schedule/check")'>일정</button>
		<button id=go_payment onclick='open_in_frame("/hospital/payment/cost")'>결제</button>	
	</nav>
	
	</div>
	
	<div id="main" align=center>
	
		<iframe id=mainframe width=100% height=150% frameborder=0 align=center src="/hospital/main/main"></iframe>
	
	</div>
	
	<br>
	<div id="footer">
		<div id=copyright>
			Copyright &copy; 2019 MK+JY+SG of MRHI All Rights Reserved.
		</div>

		<div id="member">
		MK JY SG
		</div>

		<div class="col-md-2 col-md-offset-2 col-sm-12">
		<div class="back-to-top">
			<a href="#top"><i class="fa fa-angle-up"></i>back to top</a>
		</div>
		</div>
			</div>
		</div>
	</div>

<div id=temp>

<!-- 각페이지별 링크 테스트합니다. 테스트 완료 후 temp div는 지워주세요. -->
<a href="/hospital/main/index">　[　SCTEST　]　</a>

<a href="/hospital/board/write">　[　게시판-글쓰기　]　</a>
<a href="/hospital/board/list">　[　게시판-글목록　]　</a><p>

<a href="/hospital/member/login">　[　멤버-로그인　]　</a>
<a href="/hospital/member/signup">　[　멤버-회원가입　]　</a>
<a href="/hospital/member/modufy">　[　게시판-정보수정　]　</a><p>
<a href="/hospital/member/welcome">　[　완료　]　</a><p>

<a href="/hospital/payment/cost">　[　결제-금액확인　]　</a>
<a href="/hospital/payment/pay">　[　결제-실행　]　</a><p>

<a href="/hospital/reservation/select">　[　예약-선택하기　]　</a>
<a href="/hospital/reservation/inspection">　[　예약-검사예약　]　</a>
<a href="/hospital/reservation/doctor">　[　예약-진료예약　]　</a><p>

<a href="/hospital/schedule/check">　[　일정-일정확인　]　</a>
<a href="/hospital/schedule/change">　[　일정-일정변경　]　</a>
<a href="/hospital/schedule/cancel">　[　일정-일정취소　]　</a><p>

</div>

</body></html>
