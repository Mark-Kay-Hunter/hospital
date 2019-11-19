<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>&nbsp;</p>
<table width="600" cellpadding="0" cellspacing="0" height="323">
    <tr>
        <td width="600" colspan="2">진료비결제</td>
    </tr>
    <tr>
        <td width="600" colspan="2">
            <p>ㅇㅇㅇ님의 총 결제예정 금액은 [00000]원입니다.</p>
        </td>
    </tr>
    <tr>
        <td width="300">
            <p>내역</p>
        </td>
        <td width="300">차감금액</td>
    </tr>
    <tr>
        <td width="300" height="48">
            <p>진료비</p>
            <p>&nbsp;</p>
            <p>검사비</p>
            <p>&nbsp;</p>
            <p>약제비</p>
        </td>
        <td width="300" height="48">
            <p>의료보험</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
        </td>
    </tr>
    <tr>
        <td width="600" height="5" colspan="2" bgcolor="#666666">
            <p>&nbsp;</p>
        </td>
    </tr>
    <tr>
        <td width="600" height="9" colspan="2">
            <p>결제하기</p>
        </td>
    </tr>
    <tr>
        <td width="590" height="6" colspan="2"><input type="radio">카드결제 <input type="radio">무통장입금</td>
    </tr>
    <tr>
        <td width="590" height="6" colspan="2">카카오뱅크 3333-04-2183863</td>
    </tr>
    <tr>
        <td width="608" height="6" colspan="2"><input type="radio">삼성 <input type="radio">롯데 <input type="radio">BC <input type="radio">마스터 <input type="radio">하나 <input type="radio">신한</td>
    </tr>
    <tr>
        <td width="600" height="15" colspan="2"> <input type="checkbox" name="payok">총 금액을 확인 하였고, 선택한 결제수단으로 결제함을 동의합니다. 
		<input type="button" name="paygo" value="결제하기"></td>
    </tr>
</table>
<p>&nbsp;</p>
</body>

</html>