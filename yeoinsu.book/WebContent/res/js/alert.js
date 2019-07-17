var delUserAlert = function() {
	swal({
		title : '회원탈퇴',
		text : '정말 탈퇴하시겠습니까?',
		type : 'warning',
		showCancelButton : true,
		cancelButtonText : "아니오",
		confirmButtonText : "네"
	}, function(isConfirm) {
		if (isConfirm)location.href = "deleteUserProc.jsp"
	});
}
var alert = function(msg, type) {
	swal({
		title : '',
		text : msg,
		type : type,
		showConfirmButton : true,
		confirmButtonText : "확인",
		closeOnConfirm : false
	});
}
