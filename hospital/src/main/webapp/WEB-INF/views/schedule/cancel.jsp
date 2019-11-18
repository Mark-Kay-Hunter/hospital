<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id=sch_ins>
<center><input type="checkbox" id="ins_1">[year]년 [month]년 [day]일 [hour]시 [minute]분에 [inpection]검진</center>
<center><input type="checkbox" id="ins_2">[year]년 [month]년 [day]일 [hour]시 [minute]분에 [inpection]검진</center>
</div>

<p>

<div id=sch_doc>
<center><input type="checkbox" id="doc_1">[year]년 [month]년 [day]일 [hour]시 [minute]분에 [subject]과 [doctor]선생님 진료</center>
<center><input type="checkbox" id="doc_2">[year]년 [month]년 [day]일 [hour]시 [minute]분에 [subject]과 [doctor]선생님 진료</center>
</div>

<p></p>

<div id="can_not">
<center>내원으로 예약된 검사/진료일정취소는 전화(00-0000-0000)로 진행가능합니다.</center>
<p>
<center>결제하신 금액은 취소일 기준 5영업일이내로 환불될 예정입니다.</center>
</div>
<p>
<div id="can_del">
<center><input type="checkbox" id="cancel_ok"> 취소 및 환불 규정을 확인하였으며, 해당 예약을 취소합니다</center>
<p></p>
<center><input type="button" id="cancel" value="예약취소하기"></center>

</div>

</body>

</html>