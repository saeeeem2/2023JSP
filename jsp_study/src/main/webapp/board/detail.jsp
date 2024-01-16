<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Detail Page</h1>
	<div><image alt="" src="/_fileUpload/${bvo.imageFile}"></div> 
	<table border="1">
		<tr>
			<th>순번 </th>
			<td>${bvo.bno } </td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>${bvo.writer } </td>
		</tr>
		<tr>
			<th>작성일</th>
			<td>${bvo.regdate } </td>
		</tr>
		<tr>
			<th>수정일</th>
			<td>${bvo.moddate } </td>
		</tr>
		<tr>
			<th>조회수</th>
			<td>${bvo.readcount } </td>
		</tr>
		<tr>
			<th>내용</th>
			<td>${bvo.content } </td>
		</tr>
	</table>
	<c:if test="${ses.id eq bvo.writer }">
		<a href="/brd/modify?bno=${bvo.bno }"><button type="button">modify</button></a>
		<a href="/brd/remove?bno=${bvo.bno }"><button type="button">remove</button></a>
	</c:if>
	<a href="/brd/list"><button>list</button></a>
	
	<!-- comment line -->
	<hr>
	<div>
		comment line<br>
		<input type="text" id="cmtWriter" value="${ses.id }" readonly="readonly"><br>
		<input type="text" id="cmtText" placeholder="Add Comment...">
		<button type="button" id="cmtAddBtn">댓글 등록</button>
	</div>
	<br>
	<hr>
	
	<!-- 댓글 표시 라인 -->
	<div id="commentLine">
		<div>cno, bno, writer</div>
		<button>수정</button> <button>삭제</button><br>
		<input value="content"> content regdate
	</div>
	
<script type="text/javascript">
	const bnoVal=`<c:out value="${bvo.bno}"/>`;
	const ses=`<c:out value="${ses.id}"/>`;
	console.log(bnoVal);
</script>
	
<script src="/resource/board_detail.js"></script>	
<script type="text/javascript">
printCommentList(bnoVal);
</script>
	
</body>
</html>