<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<head>
<title>[ Project ]</title>
	<style>

	#upper { width:auto; height:100px; background:#EDEDED; }
	#link { width:auto; height:20px; background:#DCDCDC; }
	#menu { width:auto; height:150px; background:#CBCBCB; }
	#main { width:auto; height:500px; background:#BABABA; }
	#footer { width:auto; height:100px; background:#A9A9A9; }

	</style>

	<script>



	</script>
</head>

<body>
<div id=upper>상단배너</div>
<div id=link>로그인/회원가입</div>
<div id=menu>좌측메뉴</div>
<div id=main>실제 시현 페이지</div>
<div id=footer>

<div id=temp>

<!-- 각페이지별 링크 테스트합니다. 테스트 완료 후 temp div는 지워주세요. -->
<a href="/hospital/board/write">　[　게시판-글쓰기　]　</a>
<a href="/hospital/board/list">　[　게시판-글목록　]　</a><p>

<a href="/hospital/member/login">　[　멤버-로그인　]　</a>
<a href="/hospital/member/signup">　[　멤버-회원가입　]　</a>
<a href="/hospital/member/modufy">　[　게시판-정보수정　]　</a><p>

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
