<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

	@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);
	body { font-family: 'Jeju Gothic', serif; align:center; }

	#show { width:45%; height:600px; float:left; background:#019DDD; }
	.btns { width:55%; height:600px; float:left; }
	#letter { font-family: 'Jeju Gothic', serif; font-size:30px; }
	#news1 { background-color:#019DDD; border:none; color:white; width:400px; height:100px; font-family: 'Jeju Gothic', serif; font-size:24px; }
	#news2 { background-color:#019DDD; border:none; color:white; width:400px; height:100px; font-family: 'Jeju Gothic', serif; font-size:24px; }
	#news3 { background-color:#019DDD; border:none; color:white; width:400px; height:100px; font-family: 'Jeju Gothic', serif; font-size:24px; }
	#news4 { background-color:#019DDD; border:none; color:white; width:400px; height:100px; font-family: 'Jeju Gothic', serif; font-size:24px; }
	
	

</style>

<script src="//code.jquery.com/jquery.min.js"></script>
	<script>
	function open_in_main(url) 
	{
	$('#subframe').attr('src', url);
	}
	</script>
	
</head>
<body>

<div id=main>

<div id=show align=center>

<iframe id=subframe width=600px height=600px frameborder=0 align=center src="/hospital/main/news1"></iframe>

</div> 

<div class=btns align=center>
<span id=letter>우리병원 소식지</span> <p>
<button type=button id=news1 onclick='open_in_main("/hospital/main/news1")'>2인실 15실 확충</button> <p>
<button type=button id=news2 onclick='open_in_main("/hospital/main/news2")'>피부과 개원</button> <p>
<button type=button id=news3 onclick='open_in_main("/hospital/main/news3")'>가톨릭대학교 성모병원 진료협약 체결</button> <p>
<button type=button id=news4 onclick='open_in_main("/hospital/main/news4")'>병원 새소식을 알려드립니다!</button> <p>
</div>

</div>

</body>
</html>