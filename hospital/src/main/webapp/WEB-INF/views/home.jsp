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
		
	#upper { width:auto; height:50px; }
	#link { width:auto; height:15px; }
	#menu { width:auto; height:70px; }
	#main { width:auto; height:600px; }
	#footer { width:auto; height:100px; }
	
	dl dd { display:inline-block; }

	</style>

</head>

<body>

	<div id="link">
		<img src="image/hosci.png"><img src="image/hosci.gif">
		<nav id="nav">
			<dl>
				<dd><a href="home.jsp">HOME</a></dd>
				<dd><a href="member/login.jsp">LOGIN</a></dd>
				<dd><a href="member/signup.jsp">SIGNUP</a></dd>
				<dd><a href="board/list.jsp">BOARD</a></dd>
			</dl>
		</nav>
	</div>
	
	
	<div id="upper">
	
	</div>
	
	
	<div id="menu">
	
	<nav id="nav2">
			<dl>
				<dd><a href="home.jsp">공지사항</a></dd>
				<dd><a href="member/login.jsp">예약하기</a></dd>
				<dd><a href="member/signup.jsp">일정확인</a></dd>
				<dd><a href="board/list.jsp">선결제</a></dd>
			</dl>
		</nav>
	
	</div>
	
	
	<div id="main">
	
		<iframe width=1200 height=600 frameborder=0 align=center src="/hospital/main/main"></iframe>
	
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
