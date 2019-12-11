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
	#news1 { background-color:#019DDD; border:none; color:white; width:400px; height:100px; font-family: 'Jeju Gothic', serif; }
	#news2 { background-color:#019DDD; border:none; color:white; width:400px; height:100px; font-family: 'Jeju Gothic', serif; }
	#news3 { background-color:#019DDD; border:none; color:white; width:400px; height:100px; font-family: 'Jeju Gothic', serif; }
	#news4 { background-color:#019DDD; border:none; color:white; width:400px; height:100px; font-family: 'Jeju Gothic', serif; }
	
	

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
우리병원 소식지<p>
<button type=button id=news1 onclick='open_in_main("/hospital/main/news1")'>2인실 15실 확충</button> <br>
<button type=button id=news2 onclick='open_in_main("/hospital/main/news2")'>뉴스2</button> <br>
<button type=button id=news3 onclick='open_in_main("/hospital/main/news3")'>뉴스3</button> <br>
<button type=button id=news4 onclick='open_in_main("/hospital/main/news4")'>뉴스4</button> <br>
</div>

</div>

</body>
</html>