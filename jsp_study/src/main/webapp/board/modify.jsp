<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<h1>Detail Page</h1>
<br>
<img alt="" src="/_fileUpload/${bvo.imageFile }">
<form action="/brd/edit" method="post" enctype="multipart/form-data">
	<table border="1">
		<input type="hidden" name="bno" value="${bvo.bno }"> <!-- 보여주진 않을 건데 정보는 가져와야할 때 hidden사용 -->
		<tr>
			<th>순번 </th>
			<%-- <td><input type="text" name="bno" value="${bvo.bno }" readonly="readonly"> </td> --%>
			<td>${bvo.bno }</td>
		</tr>
			<th>제목 </th>
			<td><input type="text" name="title" value="${bvo.title }"> </td>
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
			<td><textarea rows="10" cols="30" name="content">${bvo.content }</textarea> </td>
		</tr>
		<tr>
			<th>image_file</th>
			<td>
				<input type="hidden" name="image_file" value="${bvo.imageFile }">
				<input type="file" name="new_file" accept="image/png, image/jpg, image/jpeg, image/gif">
			</td>
		</tr>
	</table>

		<button type="submit">modify</button></a>

</form>
	<a href="/brd/remove?bno=${bvo.bno }"><button type="button">remove</button></a>
	<a href="/brd/list"><button>list</button></a>
</body>
</html>