<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>

function selchk() 
{

	var num = test.sct.value;
	
}

function clck()
{
	var num = test.sct.value;
	var n2 = chk.check.value;
	alert(num, n2);
	
}

</script>

</head>
<body>

<center><font size=20>소스 테스트 페이지입니다. 삭제예정임.</font></center>

<form name=test>
<select name="sct" onchange="selchk();">
	<option value="0">0</option>
	<option value="1">1</option>
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">4</option>
	<option value="5">5</option>
	<option value="6">6</option>
	<option value="7">7</option>
</select>
</form>
<p>
<form name=chk>
<input type=checkbox name=check value='1'>■
<input type=checkbox name=check value='2'>■
<input type=checkbox name=check value='3'>■
</form>

<input type=button onclick="clck()" value="RE">

</body>
</html>