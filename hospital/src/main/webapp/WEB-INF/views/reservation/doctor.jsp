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
        <option value=5>14</option>
        <option value=6>15</option>
        <option value=7>16</option>
        <option value=8>17</option>
</select>
시
<select name="minute">
        <option value=0>[분]</option>
        <option value=1>00</option>
        <option value=2>30</option>
</select>
분</div>
<p>13시 ~ 14시에는 진료하지 않습니다.</p>

<p>선택한 예약일: 0000-00-00</p>
<p>&nbsp;</p>
<form name="form1">
    <p>진료과: <select name="doc_sel" size="1">
        <option value="0" selected>--선택하세요--</option>
        <option value="1">내과</option>
        <option value="2">외과</option>
        <option value="3">치과</option>
        <option value="4">피부과</option>
		<option value="5">산부인과</option>
</select></p>
</form>
<p>&nbsp;</p>
<form name="form2">

	의료진: 
	<select name="doc_1" size="1">
        <option value="0" selected>--선택하세요--</option>
        <option value="1">김○○</option>
        <option value="2">이○○</option>
        <option value="3">박○○</option>
        <option value="4">최○○</option>
		<option value="5">정○○</option>
	</select>
	
	<select name="doc_2" size="1">
        <option value="0" selected>--선택하세요--</option>
        <option value="1">김○○</option>
        <option value="2">이○○</option>
        <option value="3">박○○</option>
        <option value="4">최○○</option>
		<option value="5">정○○</option>
	</select>
	
	<select name="doc_3" size="1">
        <option value="0" selected>--선택하세요--</option>
        <option value="1">김○○</option>
        <option value="2">이○○</option>
        <option value="3">박○○</option>
        <option value="4">최○○</option>
		<option value="5">정○○</option>
	</select>
	
	<select name="doc_4" size="1">
        <option value="0" selected>--선택하세요--</option>
        <option value="1">김○○</option>
        <option value="2">이○○</option>
        <option value="3">박○○</option>
        <option value="4">최○○</option>
		<option value="5">정○○</option>
	</select>
	
	<select name="doc_5" size="1">
        <option value="0" selected>--선택하세요--</option>
        <option value="1">김○○</option>
        <option value="2">이○○</option>
        <option value="3">박○○</option>
        <option value="4">최○○</option>
		<option value="5">정○○</option>
	</select>

</form>
</body>

</html>