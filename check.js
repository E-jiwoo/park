function come(){
	if(frm.car_number.value.length==0){
		alert("차량번호가 입력되지 않았습니다");
		frm.car_number.focus();
		return false;
	}
	else if(frm.owner_name.value.length==0){
		alert("소유자이름이 입력되지 않았습니다");
		frm.owner_name.focus();
		return false;
	}
	else if(frm.location.value.length==0){
		alert("주차위치가 선택되지 않았습니다");
		frm.location.focus();
		return false;
	}
	else if(frm.entrance_time.value.length==0){
		alert("입차시간이 입력되지 않았습니다");
		frm.departure_time.focus();
		return false;
	}
	else{
		alert("차량입차가 등록되었습니다!");
		document.frm.submit();
		return true;
	}
}
function back(){
	if(frm.car_number.value.length==0){
		alert("차량번호가 입력되지 않았습니다");
		frm.car_number.focus();
		return false;
	}
	else if(frm.owner_name.value.length==0){
		alert("소유자이름이 입력되지 않았습니다");
		frm.owner_name.focus();
		return false;
	}
	else if(frm.departure_time.value.length==0){
		alert("출차시간이 입력되지 않았습니다");
		frm.departure_time.focus();
		return false;
	}
	else{
		alert("차량출차가 등록되었습니다!");
		document.frm.submit();
		return true;
	}
}
function search(){
	if(frm.car_number.value.length==0){
		alert("차량번호가 입력되지 않았습니다");
		frm.car_number.focus();
		return false;
	}
	else{
		document.frm.submit();
		return true;
	}
}
function home(){
	window.location = "index.jsp";
}
function get(car_number){
	if(car_number=="11가1111"){
		frm.owner_name.value="박선수";
	}
}

function res(){
	alert("정보를 지우고 다시 작성합니다");
	document.frm.reset();
}