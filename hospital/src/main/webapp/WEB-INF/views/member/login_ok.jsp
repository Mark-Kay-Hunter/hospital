<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="kr.co.hospital.dao.MemberDao"  %>
    <%@ page import = "java.io.PrintWriter" %>
    <% request.setCharacterEncoding("UTF-8"); %>
    
    <jsp:useBean id="member" class="kr.co.hospital.dto.MemberDto" scope="page"/>
    <jsp:setProperty property="idno" name="member"/>
    <jsp:setProperty property="passwd" name="member"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>

</script>
</head>
<body>
<%

  MemberDao memberdao = new MemberDao();
  int result = memberdao.login(member.getIdno(), member.getPasswd());
  
  if ( result == 1 )
  {
	  PrintWriter script = response.getWriter();
	  script.println("<script>");
	  script.println("location.href = 'main.jsp'");
	  script.println("</script>");
  }
  else if ( result == 0 )
  {
	  PrintWriter script = response.getWriter();
	  script.println("<script>");
	  script.println("alert('비밀번호가 틀립니다.')");
	  script.println("history.back()");
	  script.println("</script>");
  }
  else if ( result == -1 )
  {
	  PrintWriter script = response.getWriter();
	  script.println("<script>");
	  script.println("alert('아이디가 존재하지 않습니다')");
	  script.println("history.back()");
	  script.println("</script>");
  }
  else if ( result == -2 )
  {
	  PrintWriter script = response.getWriter();
	  script.println("<script>");
	  script.println("alert('데이터베이스 오류가 발생했습니다.')");
	  script.println("history.back()");
	  script.println("</script>");
  }

%>
</body>

</html>