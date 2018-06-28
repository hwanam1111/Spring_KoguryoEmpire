<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Koguryo Empire</title>
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/image/km_common/favicon.ico">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_common/common.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/resources/css/km_member/list/memberNotice.css" rel="stylesheet" type="text/css">
		<script src="${pageContext.request.contextPath}/resources/script/km_common/jquery-3.3.1.min.js" type="text/javascript"></script>
	</head>
	<body>
		<%if(session.getAttribute("login") == null) { %>
			<jsp:include page="/WEB-INF/views/km_common/header.jsp"/>
		<%} else { %>
			<jsp:include page="/WEB-INF/views/km_common/afterHeader.jsp"/>
		<%} %>
		<div class="container">
			<table class="table table-bordered">
				<tr>
					<td>No.</td>
					<td>Title.</td>
					<td>Writer.</td>
					<td>Date.</td>
					<td>View.</td>
				</tr>
				<c:forEach items="${selectNotice}" var="selectNotice">
					<tr>
						<td>${selectNotice.noticeNum}</td>
						<td><a href="km_noticeView.do?noticeNum=${selectNotice.noticeNum}">${selectNotice.noticeTitle}</a></td>
						<td>${selectNotice.noticeNickname}</td>
						<td>${selectNotice.noticeWritedate}</td>
						<td>50</td>
					</tr>
				</c:forEach>
			</table>
			<a href="km_noticeWrite.do"><button class="btn">글쓰기</button></a>
		</div>
	</body>
</html> 