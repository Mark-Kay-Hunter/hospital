<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>

	@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);
	body { font-family: 'Jeju Gothic', serif; }

	#shc { align:center; }
	#scal { float:left; }
	#stim { float:left; }
	#sel { clear:both; }
	
	#login_ok { width:250px; height:50px; border:none; background-color:#019DDD; font-family: 'Jeju Gothic', serif; font-size:20px; color:#FAFAFA; }
	#go_signup { width:250px; height:50px; border:none; background-color:#019DDD; font-family: 'Jeju Gothic', serif; font-size:20px; color:#FAFAFA; }
	
	
</style>


<script>

var today = new Date();
var date = new Date();

function prevCalendar() 
{
today = new Date(today.getFullYear(), today.getMonth() - 1, today.getDate());
buildCalendar();
}

function nextCalendar() 
{
today = new Date(today.getFullYear(), today.getMonth() + 1, today.getDate());
buildCalendar();
}
			
function buildCalendar()
{
var doMonth = new Date(today.getFullYear(),today.getMonth(),1);
var lastDate = new Date(today.getFullYear(),today.getMonth()+1,0);
var tbCalendar = document.getElementById("calendar");
var tbCalendarYM = document.getElementById("tbCalendarYM");

tbCalendarYM.innerHTML = today.getFullYear() + "년 " + (today.getMonth() + 1) + "월"; 

	while (tbCalendar.rows.length > 2) 
	{
	tbCalendar.deleteRow(tbCalendar.rows.length-1);
	}

	var row = null;
	row = tbCalendar.insertRow();

	var cnt = 0;
	for (i=0; i<doMonth.getDay(); i++) 
	{
	cell = row.insertCell();
	cnt = cnt + 1;
	}

	for (i=1; i<=lastDate.getDate(); i++) 
	{
	cell = row.insertCell();
	cell.innerHTML = i;
	cnt = cnt + 1;
		if (cnt % 7 == 1)
		{
		// 일요일 cell
		cell.innerHTML = "<font color=#F79DC2>" + i
		}
		    
		if (cnt%7 == 0)
		{
		// 토요일 cell
		cell.innerHTML = "<font color=skyblue>" + i
		row = calendar.insertRow();
		}

		if (today.getFullYear() == date.getFullYear()
			&& today.getMonth() == date.getMonth()
			&& i == date.getDate()) 
		{
		// 오늘
		cell.bgColor = "#5cc4ef";
		}
	}
}	

</script>

</head>

<body>

<div id=shc align=center>
<span id=scal>
<table id="calendar" border="3" align="center" style="border-color:#3333FF; font-size:14px;" width=300px height=300px>
    <tr>
        <!-- label은 마우스로 클릭을 편하게 해줌 -->
        <td><label onclick="prevCalendar()">◀</label></td>
        <td align="center" id="tbCalendarYM" colspan="5">[yyyy년 m월]</td>
        <td><label onclick="nextCalendar()">▶</label></td>
    </tr>
    <tr>
        <td align="center"><font color ="#F79DC2">일</td>
        <td align="center">월</td>
        <td align="center">화</td>
        <td align="center">수</td>
        <td align="center">목</td>
        <td align="center">금</td>
        <td align="center"><font color ="skyblue">토</td>
    </tr>
</table>
</span>
<span id=stim>
<table id="timetable" border="3" align="center" style="border-color:#3333FF; font-size:14px;" width=300px height=300px>
    <tr>
        <td>09:00</td>
        <td>11:00</td>
        <td>14:00</td>
        <td>16:00</td>
    </tr>
    <tr>
        <td>09:30</td>
        <td>11:30</td>
        <td>14:30</td>
        <td>16:30</td>
    </tr>
    <tr>
        <td>10:00</td>
        <td>12:00</td>
        <td>15:00</td>
        <td bgcolor=#5cc4ef>17:00</td>
    </tr>
    <tr>
        <td>10:30</td>
        <td>12:30</td>
        <td>15:30</td>
        <td>17:30</td>
    </tr>
   
</table>
</span>
<script>buildCalendar();</script>
</div>

<p><p><p><p>
<p><p><p><p>

<div id=sel>

진료과:	<select name="insp_type" size="1" onchange="inspselect()">
        			<option value="0" selected>［진료과선택］</option>
        			<option value="1">외과</option>
        			<option value="2">내과</option>
					<option value="3">피부과</option>
					<option value="4">치과</option>
					<option value="5">산부인과</option>
				</select>
				
진료과:	<select name="doctor" size="1" onchange="inspselect()">
        			<option value="0" selected>［진료의사선택］</option>
        			<option value="1">김선생</option>
        			<option value="2">박교수</option>
					<option value="3">정인턴</option>
					<option value="4">최닥터</option>
				</select>
				
</div>


<p><p><p>
　　　　　<button id=login_ok>예약하기</button>　　<button id=login_ok>돌아가기</button>



</body>

</html>