<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>

	//

</script>

</head>
<body>
<table width="600" cellpadding="0" cellspacing="0">
    <tr>
        <td width="600" colspan="6">글작성하기</td>
    </tr>
    <tr>
        <td width="100" height="10">제목</td>
        <td width="500" height="22" colspan="5">
		<input type="text" name="wtitle" size="68">
		</td>
    </tr>
    <tr>
        <td width="100" height="10">작성자</td>
        <td width="100" height="22">
		<input type="text" name="wname" size="12">
		</td>
        <td width="100" height="22">비밀번호</td>
        <td width="100" height="22">
		<input type="password" name="wpass" size="12">
		</td>
        <td width="100" height="22">분류</td>
        <td width="100" height="22">
		
		<select>
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
		<textarea name="wcont" rows="14" cols="68"></textarea>
		</td>
    </tr>
    <tr>
        <td width="600" colspan="6">
		<input type="submit" value="작성">
		</td>
    </tr>
</table>
<p>&nbsp;</p>
</body>

</html>