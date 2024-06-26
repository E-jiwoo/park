<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
<script type="text/javascript" src="check.js"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
<h2>차량입차</h2>
<form name="frm" action="action.jsp">
<input type="hidden" name="mode" value="come">
<table border="1">
<tr>
<td>차량번호</td>
<td><input type="text" name="car_number">예) 22가1111</td>
</tr>
<tr>
<td>소유자이름</td>
<td><input type="text" name="owner_name">예) 백선수</td>
</tr>
<tr>
<td>주차위치선택</td>
<td><input type="radio" name="location" value="A001">A001
<input type="radio" name="location" value="A002">A002
<input type="radio" name="location" value="A003">A003
<input type="radio" name="location" value="A004">A004
<input type="radio" name="location" value="A005">A005</td>
</tr>
<tr>
<td>입차시간</td>
<td><input type="text" name="entrance_time">예) 22:22</td>
</tr>
<tr>
<td colspan="2">
<input type="button" value="입차등록" onclick="come()">
<input type="button" value="다시쓰기" onclick="res()"></td>
</tr>
</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>