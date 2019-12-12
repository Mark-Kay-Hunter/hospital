<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제금액 확인</title>
</head>

<style>

	@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);
	div { font-family: 'Jeju Gothic', serif; width:100%; font-size:16px; }
	
	#cost_all { font-size:24px; }
	#cost_doc { display:inline-block; }
	#cost_btns { clear:both; }
	
	table { text-align:center; }
	
	#go_pay { width:250px; height:50px; border:none; background-color:#019DDD; font-family: 'Jeju Gothic', serif; font-size:20px; color:#FAFAFA; }
	#go_back { width:250px; height:50px; border:none; background-color:#019DDD; font-family: 'Jeju Gothic', serif; font-size:20px; color:#FAFAFA; }

</style>

<body>

<div id=cost_all align=center>

<b><font color=#15459E>김회원</font></b>께서 결제하실 총금액은 <br><b><font color=#15459E>16000원</font></b>입니다.

</div>

<p><p>

<div id=cost_indi align=center>

<table width=300px height=200px>

<tr height=50px>
	<td>검사예약내역</td>
	<td>진료예약내역</td>
</tr>

<tr height=100px>
	<td>2019-12-12 17:30<BR>치료경과검사</td>
	<td>2019-12-12 17:00<BR>내과/박교수</td>
</tr>

</table>

</div>

<p><p>

<div id=cost_btns align=center>

<a href=#><button type=button id=go_pay>결제하기</button></a>
<a href=#><button type=button id=go_back>이전 페이지</button></a>

</div>

<div id=cost_noti align=center>

</div>


</body>

</html>