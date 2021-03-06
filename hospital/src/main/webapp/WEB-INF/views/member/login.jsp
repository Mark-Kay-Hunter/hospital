<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우리병원 로그인</title>

<style>

	@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);
	body { font-family: 'Jeju Gothic', serif; align:center; font-size:15px; }
	
	#login_ok { width:250px; height:50px; border:none; background-color:#019DDD; font-family: 'Jeju Gothic', serif; font-size:20px; color:#FAFAFA; }
	#go_signup { width:250px; height:50px; border:none; background-color:#019DDD; font-family: 'Jeju Gothic', serif; font-size:20px; color:#FAFAFA; }
	
	
</style>

</head>
<body>

<center>
<table width="560" height="252" cellpadding="0" cellspacing="0">
    
	<tr>
        <td width="560" colspan="3">
            <p align="center">[회원로그인]</p>
        </td>
    </tr>
	
    <tr>
        <td width="100">
            <p align="right">ID[회원번호]</p>
        </td>
        <td width="460" colspan="2">　　<input type="text" size="40" name="id" value="8자리의 숫자를 입력해주세요" maxlength="8"></td>
    </tr>
	
    <tr>
        <td width="100">
            <p align="right">비밀번호</p>
        </td>
        <td width="460" colspan="2">　　<input type="password" size="40" name="passw"></td>
    </tr>
	
    <tr>
		<!-- 이부분은 로그인 실패시 안내메세지가 나타나게 할거라 Hidden을 기본 설정으로 해주세요. -->
        <td width="560" height="7" colspan="3">
            <p align="center">ID와 비밀번호를 확인해주세요.</p>
        </td>
    </tr>
	
    <tr>
        <td width="280" height="60" colspan="2">
            <button id=login_ok>로그인</button>
        </td>
        <td width="280" height="60">
            <button id=go_signup>회원가입</button>
        </td>
    </tr>
	
</table>
</center>

</body>

</html>