<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
	// idno:: 자동생성합니다.
	// table생성:: idno, passwd, passre, name, zip, adr1, adr2, ph1, ph2, ph3, em1, em2
	// 하단부 약관동의 체크 확인 후 진행할 수 있게 해주세요.
	// 미체크시 "약관에 동의해주세요." 메세지창 띄워주세요.
</script>

</head>
<body>

<form name="member" action="member.jsp">
 
<table width="590" cellspacing="0" cellpadding="3" align="center" border="0" style="font-family:돋움,Dotum,sans-serif;">
    <col width="120"><col width="380">
    <tr>
        <td height="2" colspan="2" bgcolor="#FF7A96" width="584"></td>
    </tr>
    <tr>
        <td height="1" colspan="2" bgcolor="#FFFFFF" width="584"></td>
    </tr>
    <tr>
        <th height="30" colspan="2" bgcolor="#EEEEEE" style="color:#D24966;" width="584">회원가입</th>
    </tr>
    <tr>
        <td height="1" colspan="2" bgcolor="#FFFFFF" width="584"></td>
    </tr>
    <tr>
        <td height="1" colspan="2" bgcolor="#FF7A96" width="584"></td>
    </tr>
    <tr>
        <td height="30" bgcolor="#FFFFFF" align="center" width="98">ID(회원번호)</td>
        <td bgcolor="#FFFFFF" width="480"><input type="text" name="idno" style="border:1px solid #DBDBDB;" maxlength="8"> ID(회원번호)는 자동생성됩니다</td>
    </tr>
    <tr>
        <td height="1" colspan="2" bgcolor="#FF7A96" background="jumsun.gif" width="584"></td>
    </tr>
    <tr>
        <td height="30" bgcolor="#FBF3F3" align="center" width="98">비밀번호</td>
        <td bgcolor="#FBF3F3" width="480"><input type="password" name="passwd" style="border:1px solid #DBDBDB;"></td>
    </tr>
    <tr>
        <td height="1" colspan="2" bgcolor="#FF7A96" background="jumsun.gif" width="584"></td>
    </tr>
    <tr>
        <td height="30" bgcolor="#FBF3F3" align="center" width="98">비밀번호확인</td>
        <td bgcolor="#FBF3F3" width="480"><input type="password" name="passre" style="border:1px solid #DBDBDB;"></td>
    </tr>
    <tr>
        <td height="1" colspan="2" bgcolor="#FF7A96" background="jumsun.gif" width="584"></td>
    </tr>
    <tr>
        <td height="30" bgcolor="#FFFFFF" align="center" width="98">회원정보</td>
        <td bgcolor="#FFFFFF" style="padding:0;" width="486">
            <table width="100%" cellpadding="0" cellspacing="0" style="font-family:돋움,Dotum,sans-serif;">
                <tr>
                    <td height="15" align="center" width="97">성명</td>
                    <td width="389" colspan="2"><input type="text" name="name" style="border:1px solid #DBDBDB;"></td>
                </tr>
                <tr>
                    <td height="15" align="center" width="97">우편번호</td>
                    <td height="30" width="248">

<input type="text" name="zip" size="7" style="border:1px solid #DBDBDB;">

                    </td>
                        <td width="141" height="30">
                            <p align="center">우편번호찾기</p>
                        </td>
                </tr>
                <tr>
                    <td height="30" align="center" bgcolor="#FBF3F3" width="97">주소</td>
                    <td bgcolor="#FBF3F3" colspan="2" width="389">

<input type="text" name="adr1" style="border:1px solid #DBDBDB;">

                    </td>
                </tr>
                <tr>
                    <td height="30" align="center" width="97">세부주소</td>
                    <td colspan="2" width="389"><input type="text" name="adr2" style="border:1px solid #DBDBDB;"></td>
                </tr>
                <tr>
                    <td height="15" align="center" bgcolor="#FBF3F3" width="97">전화번호</td>
                    <td bgcolor="#FBF3F3" colspan="2" width="389"><input type="text" name="phone" style="border:1px solid #DBDBDB;"></td>
                </tr>
                <tr>
                    <td height="15" align="center" bgcolor="#FBF3F3" width="97">이메일</td>
                    <td height="30" colspan="2" bgcolor="#FBF3F3" width="389"><input type="text" name="email" style="border:1px solid #DBDBDB;"></td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td height="1" colspan="2" bgcolor="#FF7A96" background="jumsun.gif" width="584"></td>
    </tr>
    <tr>
        <td height="30" bgcolor="#FBF3F3" align="center" colspan="2" width="584">회원약관</td>
    </tr>
    <tr>
        <td height="15" bgcolor="#FFFFFF" align="center" colspan="2" width="584">웅앵웅 쵸키포키</td>
    </tr>
    <tr>
        <td height="15" align="center" colspan="2" bgcolor="white" width="584"><input type="checkbox" name="okay">약관에 동의하며 회원가입합니다.</td>
    </tr>
    <tr>
        <td height="2" colspan="2" bgcolor="#FF7A96" width="584"></td>
    </tr>
    <tr>
        <td colspan="2" align="center" height="40" width="584">
            <input type="submit" value="보내기" style="font-size:12px; background-color:#EEEEEE; border:1px ridge #DBDBDB;">
            <input type="reset" value="다시작성" style="font-size:12px; background-color:#EEEEEE; border:1px ridge #DBDBDB;">
        </td>
    </tr>
</table>

</form>
 
</body>
</html>