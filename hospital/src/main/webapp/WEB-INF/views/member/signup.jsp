<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- daum 도로명주소검색 API -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
	// idno:: 자동생성합니다.
	// table생성:: idno, passwd, passre, name, zip(char), adr1, adr2, ph1, ph2, ph3, em1, em2
	// 하단부 약관동의 체크 확인 후 진행할 수 있게 해주세요.
	// 미체크시 "약관에 동의해주세요." 메세지창 띄워주세요.
	function rule_check(ck)  // 약관 동의 체크 _ 폰번호, 이메일 합쳐서 리턴
	{
		if((document.member.okay.value)!=checked)   /* 나중에 다시 확인 */
			{
			alert("약관에 동의해주세요.");
			}
		else
			{
			  ck.phone.value=ck.p1.value+"-"+ck.p2.value+"-"+ck.p3.value;
			  ck.email.value=ck.email1.value+"@"+ck.email2.value;
			}
	}
	
	function juso_search()  // 우편번호 버튼 클릭시 호출 함수
	  {
	    new daum.Postcode({
	        oncomplete: function(data) {
	            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                addr = data.roadAddress;
	            } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                addr = data.jibunAddress;
	            }

	            // 우편번호와 주소 정보를 해당 필드에 넣는다.
	            document.pkc.zip.value = data.zonecode; // 우편번호
	            document.pkc.adr1.value = addr;  // 주소
	            // 커서를 상세주소 필드로 이동한다.
	            document.pkc.adr2.focus();
	        }
	    }).open();
</script>

</head>
<body>

<form name="member" action="member.jsp" onsubmit="return rule_check(this)">
<!-- hidden 전부 여기에 몰빵 -->
<input type=hidden name=phone>
<input type=hidden name=email>
 
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
                            <p align="center"><input type=button class=zip value=우편번호 onclick=juso_search()></p>
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
            <input type="submit" value="회원가입" style="font-size:12px; background-color:#EEEEEE; border:1px ridge #DBDBDB;">
            <input type="reset" value="다시작성" style="font-size:12px; background-color:#EEEEEE; border:1px ridge #DBDBDB;">
        </td>
    </tr>
</table>

</form>
 
</body>
</html>