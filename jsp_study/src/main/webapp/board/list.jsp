<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<h1>List Page</h1>

<!-- search line -->
<div>
	<form action="/brd/list" method="get">
		<!-- c:set 변수처리가능 -->
		<c:set value="${ph.pgvo.type }" var="typed"></c:set>
		<select name="type">
			<option ${typed==null ? 'selected':'' }>CHOOSE</option>
			<option value="t" ${typed eq 't' ? 'selected':'' }>TITLE</option>
			<option value="w" ${typed eq 'w' ? 'selected':'' }>WRITER</option>
			<option value="c" ${typed eq 'c' ? 'selected':'' }>CONTENT</option>
			<option value="tc" ${typed eq 'tc' ? 'selected':'' }>TITLE&CONTENT</option>
			<option value="tw" ${typed eq 'tw' ? 'selected':'' }>TITEL&WIRTER</option>
			<option value="wc" ${typed eq 'wc' ? 'selected':'' }>WRITER&CONTENT</option>
			<option value="twc" ${typed eq 'twc' ? 'selected':'' }>TITLE&WRITER&CONTENT</option>
		</select>
		<input type="text" name="keyword" placeholder="search" value="${ph.pgvo.keyword }">
		<input type="hidden" name="pageNo" value="1">
		<input type="hidden" name="qty" value="${ph.pgvo.qty }">
		<button type="submit" class="btn btn-primary btn-sm">search</button>
		<span>${ph.totalCount }</span>
	</form>
</div>









<table class="table table-hover">
	<tr>
		<th>bno</th>
		<th></image>title</th>
		<th>writer</th>
		<th>regdate</th>
		<th>readcount</th>
	</tr>
	<!-- DB에서 가져온 리스트를 c:foreach를 통해 반복 -->
	<c:forEach items="${list }" var="bvo">
	<tr>
		<td><a href="/brd/detail?bno=${bvo.bno }">${bvo.bno }</a></td>
		<td><a href="/brd/detail?bno=${bvo.bno }"><image alt="" src="/_fileUpload/_th_${bvo.imageFile}">  ${bvo.title }</a></td>
		<td>${bvo.writer }</td>
		<td>${bvo.regdate }</td>
		<td>${bvo.readcount }</td>
	</tr>
	</c:forEach>
</table>

<!-- 페이지네이션 표시 구역 -->
<div>
	<!-- prev -->
	<c:if test="${ph.prev }">
		<a href="/brd/list?pageNo=${ph.startPage-1 }&qty=${ph.pgvo.qty}&type=${ph.pgvo.type}&keyword=${ph.pgvo.keyword}"> ◁ | </a>
	</c:if>
		
	<!-- paging -->
	<c:forEach begin="${ph.startPage }" end="${ph.endPage }" var="i">
		<a href="/brd/list?pageNo=${i }&qty=${ph.pgvo.qty}&type=${ph.pgvo.type}&keyword=${ph.pgvo.keyword}"> ${i } </a>
	</c:forEach>
	
	<!-- next -->
	<c:if test="${ph.next }">
		<a href="/brd/list?pageNo=${ph.endPage+1 }&qty=${ph.pgvo.qty}&type=${ph.pgvo.type}&keyword=${ph.pgvo.keyword}"> | ▷ </a>
	</c:if>
</div>

<a href="/brd/register"><button>register</button></a>
<a href="/index.jsp"><button>index</button></a>

</body>
</html>