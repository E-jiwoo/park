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
<h2>차량조회</h2>
<form name="frm" action="action.jsp">
<table border="1">
<tr>
<td>차량번호</td>
<td>차량종류</td>
<td>소유자이름</td>
<td>주차위치</td>
<td>입차시간</td>
<td>출차시간</td>
</tr>
<%
request.setCharacterEncoding("UTF-8");
String car_number = request.getParameter("car_number");
car_number="'" + car_number + "'";
try{
	String sql = "select car_number, car_name, owner_name, location, entrance_time, departure_time from parking natural join car where car_number="+car_number;
	PreparedStatement pstmt = con.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	while(rs.next()){
		%>
		<tr>
		<td><%=rs.getString(1) %></td>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(3) %></td>
		<td><%=rs.getString(4) %></td>
		<td><%=rs.getString(5) %></td>
		</tr>
		<% 
	}
}
catch(Exception e){
	e.printStackTrace();
}
%>
</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>