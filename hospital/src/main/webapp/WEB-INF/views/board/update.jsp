<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="update_ok">
<input type="hidden" name="id" value="${boarddto.id}">
<table width="600" cellpadding="0" cellspacing="0">
    <tr>
        <td width="600" colspan="6">글수정하기</td>
    </tr>
    <tr>
        <td width="100" height="10">제목</td>
        <td width="500" height="22" colspan="5">
		<input type="text" name="wtitle" size="68" value="${boarddto.wtitle}">
		</td>
    </tr>
    <tr>
        <td width="100" height="10">작성자</td>
        <td width="100" height="22">
		<input type="text" name="wname" size="12" value="${boarddto.wname}">
		</td>
        <td width="100" height="22">비밀번호</td>
        <td width="100" height="22">
		<input type="password" name="wpwd" size="12" value="${boarddto.wpwd}">
		</td>
        <td width="100" height="22">분류</td>
        <td width="100" height="22">
		
		<select name="wcat">
			<option value=0>[선택하세요]</option>
			<option value=1>[공지사항]</option>
			<option value=2>[건강정보]</option>
			<option value=3>[보도자료]</option>
		</select>
		
		</td>
    </tr>
    <tr>
        <td width="100">내용</td>
        <td width="500" colspan="5">
		<textarea name="wcont" rows="14" cols="68">${boarddto.wcont}</textarea>
		</td>
    </tr>
    <tr>
        <td width="600" colspan="6">
		<input type="submit" value="수정">
		</td>
    </tr>
</table>
</form>
</body>
</html>