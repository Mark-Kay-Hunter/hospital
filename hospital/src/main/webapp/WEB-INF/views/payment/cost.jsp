<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<style>

	@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);
	div { font-family: 'Jeju Gothic', serif; width:100%; font-size:16px; }
	
	#cost_ins { display:inline-block; }
	#cost_doc { display:inline-block; }
	#cost_btns { clear:both; }

</style>

<body>

<div id=cost_all align=center>

<b><font color=#15459E>${name}님</font></b>께서 결제하실 총금액은 <b><font color=#15459E>${total_cost}원</font></b>입니다.

</div>

<div id=cost_indi align=center>

	<div id=cost_ins align=center>검사내역출력</div>
	<div id=cost_doc align=center>진료내역출력</div>

</div>

<div id=cost_btns align=center>

<a href=#><button type=button id=go_pay>결제하기</button></a>
<a href=#><button type=button id=go_back>이전 페이지</button></a>

</div>

<div id=cost_noti align=center>

이걸 뭐라고 써야하나.. 

</div>


</body>

</html>