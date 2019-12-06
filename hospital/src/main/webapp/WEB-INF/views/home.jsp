<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<head>
<title>[ Project ]</title>
	<style>
	
	
	@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);
	body { font-family: 'Jeju Gothic', serif; align:center; }
		
	#upper { width:auto; height:50px; background:#1F76C0; }
	#link { width:auto; height:15px; align:right; background:#1F76C0; }
	#menu { width:auto; height:70px; align:center; background:#1F76C0; color:#FAFAFA; }
	#main { width:auto; height:600px; }
	#footer { width:auto; height:100px; }
	
	dl dd { display:inline-block; }
	
	#go_login { background-color:transparent; border:none; }
	#go_signup { background-color:transparent; border:none; }

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
	
	<img src="image/upperbanner.png" />
	
	</div>
	

	<div id="link" align=right>
		<nav id="nav">
			<dl>
				<dd><button id=go_login onclick='open_in_frame("/hospital/member/login")'>로그인</button></dd>
				<dd><button id=go_signup onclick='open_in_frame("/hospital/member/signup")'>회원가입</button></dd>
			</dl>
		</nav>
	</div>
		
	
	<div id="menu" align=center>
	
	<nav id="nav2">
			<dl>
				<dd><a onclick='open_in_frame("/hospital/main/main")'>메인</a></dd>
				<dd><a onclick='open_in_frame("/hospital/reservation/select")'>예약</a></dd>
				<dd><a onclick='open_in_frame("/hospital/schedule/check")'>일정</a></dd>
				<dd><a onclick='open_in_frame("/hospital/payment/cost")'>결제</a></dd>
			</dl>
		</nav>
	
	</div>
	
	
	<div id="main" align=center>
	
		<iframe id=mainframe width=100% height=150% frameborder=0 align=center src="/hospital/main/main"></iframe>
	
	</div>
	
	
	<div id="footer">
		<div class="container">
			<div class="row">
			<div class="col-md-4 col-sm-12">
				<p>Copyright &copy; 2019 MK+JY+SG of MRHI <br> 
				All Rights Reserved.</p>
			</div>

		<div class="col-md-4 col-sm-12">
			<ul class="social-icons">
				<li><a href="#">MK</a></li>
				<li><a href="#">JY</a></li>
				<li><a href="#">SG</a></li>
			</ul>
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
