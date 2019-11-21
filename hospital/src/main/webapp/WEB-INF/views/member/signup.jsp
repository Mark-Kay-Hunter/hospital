<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.util.*" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<script>
	// idno:: 자동생성합니다.
	// table생성:: id, idno, passwd, passre, name, zip(char), adr1, adr2, ph1, em1
	/* 비밀번호 일치 체크  */
	function pwd_check()
	{
		pass1=document.getElementById("passwd").value;
		pass2=document.getElementById("passre").value;
		if(pass1 !== pass2)
			{
			alert("비밀번호가 일치하지 않습니다.");
			document.getElementById("passre").focus();
			return false;
		
			}
		else
			{
			return true;
			}
			
	}
	
	/*  미작성한 내용 있는지 체크하고 알림 띄우기 */
	function rule_check(form)
 {
	if(form.passwd.value=="")
		{
		alert("비밀번호를 입력하세요.");
		form.passwd.focus();
		return false;
		}
	else if(form.passre.value=="")
		{
		alert("비밀번호가 일치하지 않습니다.");
		form.passre.focus();
		return false;
		}
	else if(form.name.value=="")
		{
		alert("이름을 입력하세요.");
		form.name.focus();
		return false;
		}
	else if(form.adr1.value=="")
		{
		alert("주소를 입력하세요.");
		form.adr1.focus();
		return false;
		}
	else if(form.adr2.value=="")
		{
		alert("상세주소를 입력하세요.");
		form.adr2.focus();
		return false;
		}
	else if(form.phone.value=="")
		{
		alert("전화번호를 입력하세요.");
		form.phone.focus();
		return false;
		}
	else if(form.email.value=="")
		{
		alert("이메일 주소를 입력하세요.");
		form.email.focus();
		return false;
		}
	else if((document.getElementByName("okay").value) !== checked)
		{
		alert("약관에 동의해주세요.");
		return false;
		}
	else  
		{ 
		return true;
		}
 }
	

	/* daum 도로명주소검색 API  */
	function juso_search() {
        new daum.Postcode({
        	oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;
                } 
                else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' ){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' ){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    fullAddr += (extraAddr !== '' ? ' (' + extraAddr + ')' : '');
                    }
                

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('zip').value = data.zonecode;
                document.getElementById("adr1").value = fullAddr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("adr2").focus();
            }
        }).open();
    
    }
</script>

</head>
<body>

<form name="member" action="signup_ok" onsubmit="return rule_check(this)">
<!-- hidden 전부 여기에 몰빵 -->
 
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
        <td bgcolor="#FFFFFF" width="480"><input type="text" name="idno" id="idno" style="border:1px solid #DBDBDB;" maxlength="8" readonly> ID(회원번호)는 자동생성됩니다</td>
    </tr>
    <tr>
        <td height="1" colspan="2" bgcolor="#FF7A96"  width="584"></td>
    </tr>
    <tr>
        <td height="30" bgcolor="#FBF3F3" align="center" width="98">비밀번호</td>
        <td bgcolor="#FBF3F3" width="480"><input type="password" name="passwd" id="passwd" style="border:1px solid #DBDBDB;"></td>
    </tr>
    <tr>
        <td height="1" colspan="2" bgcolor="#FF7A96" width="584"></td>
    </tr>
    <tr>
        <td height="30" bgcolor="#FBF3F3" align="center" width="98">비밀번호확인</td>
        <td bgcolor="#FBF3F3" width="480"><input type="password" name="passre" id="passre" style="border:1px solid #DBDBDB;" onblur=pwd_check()></td>
    </tr>
    <tr>
        <td height="1" colspan="2" bgcolor="#FF7A96"  width="584"></td>
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

<input type="text" name="zip" id="zip" style="border:1px solid #DBDBDB;" placeholder="우편번호 찾기" readonly>

                    </td>
                        <td width="141" height="30">
                            <p align="center">
                            <button type="button" onclick="juso_search()">우편번호 찾기</button>
                            </p>
                        </td>
                </tr>
                <tr>
                    <td height="30" align="center" bgcolor="#FBF3F3" width="97">주소</td>
                    <td bgcolor="#FBF3F3" colspan="2" width="389" >

<input type="text" name="adr1" id="adr1" style="border:1px solid #DBDBDB;" placeholder="주소" readonly>

                    </td>
                </tr>
                <tr>
                    <td height="30" align="center" width="97">세부주소</td>
                    <td colspan="2" width="389"><input type="text" name="adr2" id="adr2" style="border:1px solid #DBDBDB;" placeholder="세부주소"></td>
                </tr>
                <tr>
                    <td height="15" align="center" bgcolor="#FBF3F3" width="97">전화번호</td>
                    <td bgcolor="#FBF3F3" colspan="2" width="389"><input type="text" name="ph" style="border:1px solid #DBDBDB;"></td>
                </tr>
                <tr>
                    <td height="15" align="center" bgcolor="#FBF3F3" width="97">이메일</td>
                    <td height="30" colspan="2" bgcolor="#FBF3F3" width="389"><input type="text" name="em" style="border:1px solid #DBDBDB;"></td>
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
