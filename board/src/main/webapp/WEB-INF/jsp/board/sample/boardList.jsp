<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BOARD</title>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
</head>
<style type = "text/css">
.tb01{border : 1px solid black}
</style>
<body>
<h2>게시판 목록</h2>
<table class = "tb01">
	<colgroup>
		<col width = "10%"/>
		<col width = "*"/>
		<col width = "15%"/>
		<col width = "20%"/>
	</colgroup>
	<thead>
		<tr>
			<th scope = "col">글번호</th>
			<th scope = "col">제목</th>
			<th scope = "col">조회수</th>
			<th scope = "col">작성일</th>
		</tr>
	</thead>
	<tbody>
		<c:choose>
			<c:when test = "${fn:length(list) > 0}">
			 <c:forEach items = "${list}" var = "row">
			 	<tr>
			 		<td>${row.IDX }</td>
			 		<td>${row.TITLE }</td>
			 		<td>${row.HIT_CNT }</td>
			 		<td>${row.CRE_DT }</td>
				</tr>
				</c:forEach>
			</c:when>
		<c:otherwise>
			<tr>
				<td colsapn = "4">조회된 결과가 없습니다.</td>
			</tr>
		</c:otherwise>
		</c:choose>
	</tbody>
</table>
</body>
</html>