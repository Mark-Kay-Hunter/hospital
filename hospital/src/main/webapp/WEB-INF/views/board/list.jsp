<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function userType_page() {
	/* admin */
	/* client */
}
</script>
</head>
<body onload="userType_page()">
<!-- 공지사항 부분
- 최근 작성된 글이 상위로 이동 
- 분류 검색 기능 
- 분류 value 값에 맞는 종류 출력
- 조회수 부분  
- 관리자(admin)로 로그인시 수정, 삭제, 작성 부분 나오기-->
<table width="650" cellpadding="0" cellspacing="0">
    <tr>
        <td width="650" colspan="5">게시글 목록</td>
    </tr>
    <tr>
        <td width="50" bgcolor="#CCCCCC">번호</td>
        <td width="100" bgcolor="#CCCCCC">분류</td>
        <td width="400" bgcolor="#CCCCCC">제목</td>
        <td width="150" bgcolor="#CCCCCC">작성일</td>
		<td width="60" bgcolor="#CCCCCC">조회수</td>
    </tr>
    
    <c:set var="i" value="0"/>  <!--  i변수의 값은 0 -->
    <c:set var="len" value="${list.size()}"/>
    <!-- ArrayList<Dto> -->
    <c:forEach items="${list}" var="boarddto" varStatus="status"> <!-- for문과 동일한 기능 -->
    <c:if test="${i%2 eq 0 }" >
    <tr>
    </c:if>
    <c:if test="${i%2 eq 1 }" >
    <tr bgcolor="#EEEEEE">
    </c:if>	
    <c:choose>
      <c:when test="${boarddto.wcat eq 0}">
        <c:set var="cat" value="[분류로검색]"/>
      </c:when>
      <c:when test="${boarddto.wcat eq 1}">
        <c:set var="cat" value="[공지사항]"/>
      </c:when>
      <c:when test="${boarddto.wcat eq 2}">
        <c:set var="cat" value="[건강정보]"/>
      </c:when>
      <c:when test="${boarddto.wcat eq 3}">
        <c:set var="cat" value="[보도자료]"/>
      </c:when>
      <c:otherwise>
        <c:set var="cat" value=""/>
      </c:otherwise>
    </c:choose>
        <td width="50">${len}</td><!-- content_num -->
        <td width="100">${cat}</td><!-- category -->
        <td width="400"><a href="read_num?id=${boarddto.id}">${boarddto.wtitle}</a></td><!-- title -->
        <td width="150">${boarddto.writeday}</td><!-- writeday -->
        <td width="60">${boarddto.read_num}</td><!-- read_num -->
    </tr>
    <c:set var="i" value="${i+1}" />  <!--  i변수의 값을 1증가 -->
    <c:set var="len" value="${len-1}"/>
    </c:forEach>
    
    <tr>
        <td width="650" colspan="5"><!-- 둘다 나타나기 -->
        <c:if test="${page eq 1}">
        [이전]
        </c:if>
<%--         <c:if test="${page ne 1}">
        <a href="list?page=${page-1}&searchType=${searchType}&keyword=${keyword}">[이전]</a>
        </c:if> --%>
        <c:choose>
          <c:when test="${page ne 1 && empty seachType && empty keyword}">
            <!-- searchType, keyword 값이 없을때 -->
            <a href="list?page=${page-1}">[이전]</a>
          </c:when>
          <c:when test="${page ne 1 && empty seachType && keyword ne null}">
            <!-- searchType 값이 없을때 -->
            <a href="list?page=${page-1}&searchType=0&keyword=${keyword}">[이전]</a>
          </c:when>
          <c:when test="${page ne 1 && seachType ne null && keyword ne null}">
            <!-- searchType, keyword 둘다 값이 있을때 -->
            <a href="list?page=${page-1}&searchType=${searchType}&keyword=${keyword}">[이전]</a>
          </c:when>
        </c:choose>
        <c:if test="${page eq page_cnt}">
        [다음]
        </c:if>
<%--         <c:if test="${page ne page_cnt}">
        <a href="list?page=${page+1}&searchType=${searchType}&keyword=${keyword}">[다음]</a>
        </c:if> --%>
        <c:choose>
          <c:when test="${page ne page_cnt && empty seachType && empty keyword}">
            <!-- searchType, keyword 값이 없을때 -->
            <a href="list?page=${page+1}">[다음]</a>
          </c:when>
          <c:when test="${page ne page_cnt && empty seachType && keyword ne null}">
            <!-- searchType 값이 없을때 -->
            <a href="list?page=${page+1}&searchType=0&keyword=${keyword}">[다음]</a>
          </c:when>
          <c:when test="${page ne page_cnt && seachType ne null && keyword ne null}">
            <!-- searchType, keyword 둘다 값이 있을때 -->
            <a href="list?page=${page+1}&searchType=${searchType}&keyword=${keyword}">[다음]</a>
          </c:when>
        </c:choose>
        </td>
        <td id="pageType_admin"><!-- admin page에서만 -->
        <c:if test="${idno eq admin}">
        <a href="write">글쓰기</a>
        </c:if>
        </td>
    </tr>
    
	<tr>
        <td width="650" height="9" colspan="5">
        <!-- search start -->
        <form method="post" action="list">
		<select name="searchType">
			<option value=0>[분류로검색]</option>
			<option value=1>[공지사항]</option>
			<option value=2>[건강정보]</option>
			<option value=3>[보도자료]</option>
		</select>

		<input type="text" size="20" name="keyword">
		<input type="submit" value="검색">
        </form>
		</td>
    </tr>

</table>
</body>
</html>