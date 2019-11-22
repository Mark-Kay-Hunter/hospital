<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table width="600" cellpadding="0" cellspacing="0">
    <tr>
        <td width="100" height="10">제목</td>
        <td width="500" height="22" colspan="5">
		${boarddto.wtitle}
		</td>
    </tr>
    <tr>
        <td width="100" height="10">작성자</td>
        <td width="100" height="22">
        ${boarddto.wname}
		</td>
        <td width="100" height="22">분류</td>
        <td width="100" height="22">
        ${boarddto.wcat}
		</td>
    </tr>
    <tr>
        <td width="100">내용</td>
        <td width="500" colspan="5">
        ${boarddto.wcont}
		</td>
    </tr>

    <!-- client page -->
    <tr>
        <td width="600" colspan="6">
        <a href="list">목록</a>
	    </td>
    </tr>
    <!-- admin page -->
    <tr>
        <td width="600" colspan="6">
        <a href="delete?id=${boarddto.id}">삭제</a>
        <a href="update?id=${boarddto.id}">수정</a>
        <a href="list">목록</a>
	    </td>
    </tr>

</table>
</body>
</html>