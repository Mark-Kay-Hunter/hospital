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

// 여기부터 달력에 대한 SC

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

//여기까지 달력에 대한 SC


//여기부터 Select-Check에 대한 SC

function inspselect()
{
	
	var selno = insp_sel.insp_type.value;
						
	switch (selno)
	{
	case "1": 	document.getElementById("1").checked = true;
				document.getElementById("3").checked = true;
				document.getElementById("2").checked = false;
				document.getElementById("4").checked = false;
				document.getElementById("5").checked = false;
				document.getElementById("6").checked = false; break;
	
	case "2": 	document.getElementById("1").checked = true;
				document.getElementById("2").checked = true;
				document.getElementById("3").checked = true;
				document.getElementById("4").checked = false;
				document.getElementById("5").checked = false;
				document.getElementById("6").checked = false; break;
	
	case "3": 	document.getElementById("3").checked = true;
				document.getElementById("4").checked = true;
				document.getElementById("6").checked = true;
				document.getElementById("1").checked = false;
				document.getElementById("2").checked = false;
				document.getElementById("5").checked = false; break;
	
	case "4": 	document.getElementById("4").checked = true;
				document.getElementById("5").checked = true;
				document.getElementById("6").checked = true;
				document.getElementById("1").checked = false;
				document.getElementById("2").checked = false;
				document.getElementById("3").checked = false; break;
				
	default:	alert("검사내용을 선택해 주세요.");
				document.getElementById("1").checked = false;
				document.getElementById("2").checked = false;
				document.getElementById("3").checked = false;
				document.getElementById("4").checked = false;
				document.getElementById("5").checked = false;
				document.getElementById("6").checked = false; break;
	}
	
}

//여기부터 Select-Check에 대한 SC

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
        <td>17:00</td>
    </tr>
    <tr>
        <td>10:30</td>
        <td>12:30</td>
        <td>15:30</td>
        <td bgcolor=#5cc4ef>17:30</td>
    </tr>
   
</table>
</span>
<script>buildCalendar();</script>
</div>

<p><p>

<div id=sel>

<p>[휴일검사 가능시간]토요일: 오전 9시 ~ 13시 일요일/공휴일: 불가(입원환자 우선)</p>

<p>

<form name="insp_sel">

    검사종류:	<select name="insp_type" size="1" onchange="inspselect()">
        			<option value="0" selected>［검진선택］</option>
        			<option value="1">일반예약검사</option>
        			<option value="2">공단정기검진</option>
					<option value="3">치료경과검사</option>
					<option value="4">기타선택검사</option>
				</select>

<p>

	<table width="450" cellpadding="0" cellspacing="0">
    <tr>
        <td width="150">
			<input type="checkbox" name=insp_chk id="1">혈액검사
        </td>
		
        <td width="150">
			<input type="checkbox" name=insp_chk id="2">소변검사
        </td>
		
        <td width="150">
			<input type="checkbox" name=insp_chk id="3">X-RAY촬영
        </td>
		
    </tr>
	
    <tr>
        <td width="150">
			<input type="checkbox" name=insp_chk id="4">MRI촬영
        </td>
		
        <td width="150">
			<input type="checkbox" name=insp_chk id="5">CT촬영
        </td>
		
        <td width="150">
			<input type="checkbox" name=insp_chk id="6">내시경
        </td>
		
    </tr>
    <tr>
		<td width="450" colspan="3">※ 진료내역에 따라 당일 추가적인 검진이 있을 수 있습니다.</td>
    </tr>
</table>
</div>

</form>
<p><p><p>
　　　　　<button id=login_ok>예약변경하기</button>　　<button id=login_ok>돌아가기</button>

</body>

</html>