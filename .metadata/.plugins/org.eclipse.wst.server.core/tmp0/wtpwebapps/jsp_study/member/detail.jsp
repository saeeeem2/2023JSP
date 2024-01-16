<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Member Detail Page</h1>
<form action="/memb/modify" method="post">
	ID : <input type="text" name="id" value="${ses.id }" readonly="readonly"><br>
	PW : <input type="text" name="pwd" value="${ses.pwd }"><br>
	E-Mail : <input type="text" name="email" value="${ses.email }"><br>
	Age : <input type="text" name="age" value="${ses.age }"><br>
	Reg-date : <input type="text" name="age" value="${ses.regdate } " readonly="readonly"><br>
	Last-login : <input type="text" name="age" value="${ses.lastlogin }" readonly="readonly"><br>
	<button type="submit">수정</button>
	<a href="/memb/remove"><button type="button">회원탈퇴</button></a>
</form>

</body>
</html>