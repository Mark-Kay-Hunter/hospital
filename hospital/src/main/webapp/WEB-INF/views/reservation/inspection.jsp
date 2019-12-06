<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>

	#calender {width:400px; height:300px; background-color:blue;}
	#time {width:400px; height:30px; background-color:red;}
	
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
		cell.bgColor = "#FAF58C";
		}
	}
}

//여기까지 달력에 대한 SC


//여기부터 Select-Check에 대한 SC

</script>

</head>

<body>



<table id="calendar" border="3" align="center" style="border-color:#3333FF ">
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

<script>buildCalendar();</script>

<p>[휴일검사 가능시간]토요일: 오전 9시 ~ 12시 일요일/공휴일: 불가(입원환자 우선)</p>
<p>선택한 예약일: 0000-00-00</p>
<p>&nbsp;</p>
<form name="form1">
    <p>검사종류: <select name="insp_sel" size="1" onchange="fnSelectChange()">
        <option value="0" selected>--선택하세요--</option>
        <option value="1">일반검진</option>
        <option value="2">정기검진</option>
        <option value="3">진료전검진</option>
				</select></p>
</form>
<p>&nbsp;</p>
<form name="form2">
<table width="450" cellpadding="0" cellspacing="0">
    <tr>
        <td width="150">
                <p><input type="checkbox" id="c1">혈액검사</p>
        </td>
		
        <td width="150">
                <p><input type="checkbox" id="c2">소변검사</p>
        </td>
		
        <td width="150">
                <p><input type="checkbox" id="c3">X-RAY촬영</p>
        </td>
		
    </tr>
	
    <tr>
        <td width="150">
                <p><input type="checkbox" id="c4">MRI촬영</p>
        </td>
		
        <td width="150">
                <p><input type="checkbox" id="c5">CT촬영</p>
        </td>
		
        <td width="150">
                <p><input type="checkbox" id="c6">내시경</p>
        </td>
		
    </tr>
    <tr>
        <td width="450" colspan="3">※ 진료내역에 따라 당일 추가적인 검진이 있을 수 있습니다.</td>
    </tr>
</table>

</form>
</body>

</html>