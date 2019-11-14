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

	// select(검사종류)에서 선택시, 자동으로 checkbox에 체크되는 기능 필요합니다.	

</script>
<meta name="generator" content="Namo WebEditor(Trial)">
</head>

<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red">

<div id="calender"> 달력이 들어가는 곳  </div>
 
<div id="time">

<select name="hour">
        <option value=0>[시]</option>
        <option value=1>9</option>
        <option value=2>10</option>
        <option value=3>11</option>
        <option value=4>12</option>
        <option value=5>13</option>
        <option value=6>14</option>
        <option value=7>15</option>
        <option value=8>16</option>
        <option value=9>17</option>
</select>
시
<select name="minute">
        <option value=0>[분]</option>
        <option value=1>00</option>
        <option value=2>30</option>
</select>
분</div>
<p>[휴일검사 가능시간]토요일: 오전 9시 ~ 12시 일요일/공휴일: 불가(입원환자 우선)</p>
<p>선택한 예약일: 0000-00-00</p>
<p>&nbsp;</p>
<form name="form1">
    <p>검사종류: <select name="insp_sel" size="1">
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
                <p><input type="checkbox" value="1">혈액검사</p>
        </td>
		
        <td width="150">
                <p><input type="checkbox" value="2">소변검사</p>
        </td>
		
        <td width="150">
                <p><input type="checkbox" value="3">X-RAY촬영</p>
        </td>
		
    </tr>
	
    <tr>
        <td width="150">
                <p><input type="checkbox" value="4">MRI촬영</p>
        </td>
		
        <td width="150">
                <p><input type="checkbox" value="5">CT촬영</p>
        </td>
		
        <td width="150">
                <p><input type="checkbox" value="6">내시경</p>
        </td>
		
    </tr>
    <tr>
        <td width="450" colspan="3">※ 진료내역에 따라 당일 추가적인 검진이 있을 수 있습니다.</td>
    </tr>
</table>
</form>
</body>

</html>