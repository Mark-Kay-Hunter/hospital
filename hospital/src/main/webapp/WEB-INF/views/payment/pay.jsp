<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

	@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);
	body { font-family: 'Jeju Gothic', serif; }
	div { text-align:center; }
	
	#cost { font-size:20px; }
	#way { font-size:15px; }
	#account { font-size:14px; }
	#check { font-size:13px; }
	
	#go_pay { width:250px; height:50px; border:none; background-color:#019DDD; font-family: 'Jeju Gothic', serif; font-size:20px; color:#FAFAFA; }
		

</style>
</head>
<body>

<br><br>

<div id=cost>

결제예정금액: <font color=indigo>16000원</font> (VAT포함)

</div>

<br><br><br>

<div id=way>
결제방식:	<input type=radio name=pp>무통장입금	<input type=radio name=pp>카카오페이	<input type=radio name=pp>토스결제
<br>
(※카드결제는 준비중입니다. 양해부탁드립니다.)
</div>
<br><br>
<div id=account>

[계좌번호]　　농협 829-12-108021　　기업 023-134962-01-015　　카뱅 3333-04-2183863

</div>

<br><br><br>

<div id=check>

<input type=checkbox>결제금액을 확인하였으며, 선택한 방식으로 결제합니다.<p>
<a href=#><button type=button id=go_pay>결제하기</button></a>

</div>





</body>
</html>