<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);
	body { font-family: 'Jeju Gothic', serif; }
</style>

</head>
<body>
        <table width="700" cellpadding="0" cellspacing="0" height="300">
            <tr>
        <td width="700" colspan="2">
            <p align="center"><span style="font-size:20pt;"><b>감사합니다. 우리병원 회원가입이 완료되었습니다.</b>&nbsp;</span></p>
        </td>
            </tr>
            <tr>
                <td width="300">
                    <p align="right"><span style="font-size:16pt;"><b>${name}</b></span><span style="font-size:20pt;"></span></p>
                </td>
                <td width="400"><span style="font-size:16pt;">　회원님의 회원번호(ID)는</span><span style="font-size:20pt;"></span></td>
            </tr>
            <tr>
                <td width="300">
                    <p align="right"><span style="font-size:16pt;"><b>${idno}</b></span><span style="font-size:20pt;"></span></p>
                </td>
                <td width="400"><span style="font-size:16pt;">　입니다.</span><span style="font-size:20pt;"></span></td>
            </tr>
            <tr>
        <td width="700" colspan="2">
            <p align="center"><span style="font-size:16pt;">회원번호는 홈페이지 로그인시 ID로 사용되며,<br>
가입시 입력하신 이메일로 다시 한번 전송되었습니다.<br>
</span><span style="font-size:20pt;"></span></p>
        </td>
            </tr>
            <tr>
        <td width="700" colspan="2">
            <p align="center"><button style="color: #DEDEDE; background:#333333; font-size:1.2em; border-radius:0.5em; padding:5px 20px;" onclick="window.location.href='/hospital/member/login'">로그인하기</button>
		<button style="color: #DEDEDE; background:#333333; font-size:1.2em; border-radius:0.5em; padding:5px 20px;" onclick="window.location.href='/hospital'">돌아가기</button></p>
        </td>
            </tr>
        </table>
        <center>
        
		</center>


</body>
</html>