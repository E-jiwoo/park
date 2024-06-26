<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String mode = request.getParameter("mode");
String car_number = request.getParameter("car_number");
String owner_name = request.getParameter("owner_name");
String location = request.getParameter("location");
String entrance_time = request.getParameter("entrance_time");
String departure_time = request.getParameter("departure_time");
String departure = "";
try{
	String sql="";
	PreparedStatement pstmt = null;
	switch(mode){
	case "come":
		sql="insert into parking values(?,?,?,?)";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, car_number);
		pstmt.setString(2, location);
		pstmt.setString(3, entrance_time);
		pstmt.setString(4, departure);
		pstmt.executeUpdate();
		%>
		<jsp:forward page="come.jsp"></jsp:forward>
		<% 
		break;
	case "back":
		sql="update parking set departure_time=? where car_number=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, departure_time);
		pstmt.setString(2, car_number);
		pstmt.executeUpdate();
		con.commit();
		%>
		<jsp:forward page="back.jsp"></jsp:forward>
		<% 
		break;
	}
}
catch(Exception e){
	e.printStackTrace();
}
%>
