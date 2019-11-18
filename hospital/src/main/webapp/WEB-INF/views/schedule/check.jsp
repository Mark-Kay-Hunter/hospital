<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>

	#sch_ins { width:auto; height:20px; background-color:skyblue; }
	#sch_doc { width:auto; height:20px; background-color:skyblue; }
	#sch_not { width:auto; height:20px; background-color:skyblue; }

</style>
</head>
<body>
<!-- 예약 일정보여주기
1. DB에서 id로 값 불러오기
2. sch_ins => 이름(name), 년(year), 월(month), 일(day), 시(hour), 분(minute), 검진내용(inpection) 출력
3. sch_doc => 이름(name), 년(year), 월(month), 일(day), 시(hour), 분(minute), 과(subject), 의사(doctor) 출력
4. 일정변경하기 => userid값을 가지고 change.jsp로 이동
5. 일정취소하기 => userid값을 가지고 cencel.jsp로 이동 -->
<div id=sch_ins>
<center>[name]님은 [year]년 [month]년 [day]일 [hour]시 [minute]분에 [inpection]검진예약이 있습니다.</center>
</div>

<p>

<div id=sch_doc>
<center>[name]님은 [year]년 [month]년 [day]일 [hour]시 [minute]분에 [subject]과 [doctor]선생님 진료예약이 있습니다.</center>
</div>

<p>

<div id=sch_not>
<center>예약시간 10분전까지 병원에 방문하여주시기 바랍니다.</center>
</div>

<p><p>
<div id=sch_but>
<center> <input type="button" id="go_change" value="일정변경하기"><input type="button" id="go_cancel" value="일정취소하기"></center>
</div>
</body>

</html>