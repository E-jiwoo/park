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
<h2>차량출차</h2>
<form name="frm" action="action.jsp">
<input type="hidden" name="mode" value="back">
<table border="1">
<tr>
<td>차량번호</td>
<td><select name="car_number" onchange="get(this.value)">
<option value="">차량번호
<option value="11가1111">11가1111
</select></td>
</tr>
<tr>
<td>소유자이름</td>
<td><input type="text" name="owner_name" readonly></td>
</tr>
<tr>
<td>출차시간</td>
<td><input type="text" name="departure_time">예) 22:03</td>
</tr>
<tr>
<td colspan="2">
<input type="button" value="출차등록" onclick="back()">
<input type="button" value="다시쓰기" onclick="res()"></td>
</tr>
</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>