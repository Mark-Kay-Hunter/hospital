<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    ${memberdto.name } 님의 회원가입이 완료되었습니다. <p>
    ${memberdto.name } 님의 Id.No는 ${memberdto.idno}입니다. <p>
    <input type=button value="메인으로"><p>
    <input type=button value="예약하기">
    
</body>
</html>