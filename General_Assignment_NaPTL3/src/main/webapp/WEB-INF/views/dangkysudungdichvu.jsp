<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Title</title>
<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css"
	integrity="sha512-q3eWabyZPc1XTCmF+8/LuE1ozpg5xxn7iO89yfSOd5/oKvyqLngoNGsx8jq92Y8eXJ/IRxQbEC+FGSYxtk2oiw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous" />

<link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap.min.css"/>">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/datepicker/1.0.10/datepicker.min.css"
	integrity="sha512-YdYyWQf8AS4WSB0WWdc3FbQ3Ypdm0QCWD2k4hgfqbQbRCJBEgX0iAegkl2S1Evma5ImaVXLBeUkIlP6hQ1eYKQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">

</head>

<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-2 p-0 menu">
				<div class="list-group ">
					<a href="${pageContext.request.contextPath}/may/taoMoiMay"
						class="list-group-item list-group-item-action "><i
						class="fas fa-plus-circle"></i> Tạo Máy Mới </a> <a
						href="${pageContext.request.contextPath}/khachHang/taoKhachHang"
						class="list-group-item list-group-item-action"><i
						class="fas fa-plus-circle"></i> Tạo mới khách hàng</a> <a
						href="${pageContext.request.contextPath}/dichvu/taomoi"
						class="list-group-item list-group-item-action"><i
						class="fas fa-plus-circle"></i> Tạo mới dịch vụ</a> <a
						href="${pageContext.request.contextPath}/may/listmay"
						class="list-group-item list-group-item-action"><i
						class="fas fa-list"></i> Danh sách máy</a> <a
						href="${pageContext.request.contextPath}/khachHang/listKH"
						class="list-group-item list-group-item-action "><i
						class="fas fa-list"></i> Danh sách khách hàng</a> <a
						href="${pageContext.request.contextPath}/dichvu/listdichvu"
						class="list-group-item list-group-item-action "><i
						class="fas fa-list"></i> Danh sách dịch vụ</a> <a
						href="dangkysudungmay.html"
						class="list-group-item list-group-item-action "><i
						class="fas fa-plus-circle"></i> Đăng kí sử dụng máy</a> <a
						href="${pageContext.request.contextPath}/dichvu/dangkysudungdichvu"
						class="list-group-item list-group-item-action "><i
						class="fas fa-plus-circle"></i> Đăng kí sử dụng dịch vụ</a> <a
						href="${pageContext.request.contextPath}/khachHang/danhSachKhachHang"
						class="list-group-item list-group-item-action "><i
						class="fas fa-plus-circle"></i> Thông tin khách hàng</a>
				</div>
			</div>

			<div class="col-10 content">

				<div class="row justify-content-center">
					<div class="card w-100 " style="background-color: transparent">
						<div class="card-header text-center">Đăng kí sử dụng dịch vụ</div>
						<div class="card-body d-flex justify-content-center">
							<form:form modelAttribute="dangkysudungdichvu" action="dangkysudungdichvu" method="post" class=" w-50 "
								id="formDangKyDichVu">
								<div class="form-group">
									<label for="maKH">Mã Khách Hàng</label>
									<form:select path="id.maKH" cssClass="form-control">
										<form:options items="${danhSachKhachHang}"
											itemLabel="maKH" itemValue="maKH" />
									</form:select>
									<small id="textMaKH" class="text-danger"></small>
								</div>
								<div class="form-group">
									<label for="maDV">Mã Dịch Vụ</label>
									<form:select path="id.maDV" cssClass="form-control">
										<form:options items="${danhSachDichVu}" itemLabel="maDV"
											itemValue="maDV" />
									</form:select>
									<small id="textMaDV" class="text-danger"></small>
								</div>
								<div class="form-group">
									<label for="ngaySuDung">Ngày Sử Dụng</label>
									<form:input type="text" data-toggle="datepicker"
										placeholder="dd/MM/yyyy" 
										path="id.ngaySuDung" class="form-control" />
									<div data-toggle="datepicker"></div>
									<small id="textNgaySuDung" class="text-danger"></small>
								</div>
								<div class="form-group">
									<label for="gioSuDung">Giờ Sử Dụng</label>
									<form:input type="text" data-toggle="timepicker"
										placeholder="00:00 AM" path="id.gioSuDung"
										class="form-control timepicker" />
									<div data-toggle="timepicker"></div>
									<small id="textGioSuDung" class="text-danger"></small>
								</div>
								<div class="form-group">
									<label for="soLuong">Số Lượng</label>
									<form:input type="text" class="form-control" path="soLuong"
										placeholder="So Luong" />
									<small id="textSoLuong" class="text-danger"></small>
								</div>
								<div class="text-center">
									<button type="submit" class="btn">Tạo Dịch Vụ</button>
								</div>
							</form:form>

						</div>

					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/js/all.min.js"
		integrity="sha512-LW9+kKj/cBGHqnI4ok24dUWNR/e8sUD8RLzak1mNw5Ja2JYCmTXJTF5VpgFSw+VoBfpMvPScCo2DnKTIUjrzYw=="
		crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/datepicker/1.0.10/datepicker.min.js"
		integrity="sha512-RCgrAvvoLpP7KVgTkTctrUdv7C6t7Un3p1iaoPr1++3pybCyCsCZZN7QEHMZTcJTmcJ7jzexTO+eFpHk4OCFAg=="
		crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
	<script src="./validate.js"></script>
	<script>
		$('[data-toggle="datepicker"]').datepicker({
			format : 'dd/mm/yyyy'
		});
		$('input.timepicker').timepicker({
			interval : 1,
			scrollbar : true
		});
		document
				.getElementById("formDangKyDichVu")
				.addEventListener(
						'submit',
						function(e) {
							e.preventDefault();
							//check maKH
							let maKH = document.getElementById('id.maKH').value;
							let text1 = "";
							let checkMaKH = false;
							if (maKH.length == 7 && maKH.startsWith('KH')) {
								checkMaKH = true;
							}
							if (checkMaKH == false) {
								text1 = "Input not valid";
							}
							//check Dich Vu
							let maDV = document.getElementById('id.maDV').value;
							let text2 = "";
							let checkMaDV = false;
							if (maDV.length = 5 && maDV.startsWith("DV")) {
								checkMaDV = true;
							}
							if (checkMaDV == false) {
								text2 = "Input not valid";
							}

							//check Ngay Su Dung
							let ngaySuDung = document
									.getElementById('id.ngaySuDung').value;
							let text3 = "";
							let checkNgaySuDung = false;
							if (ngaySuDung && checkDate(ngaySuDung)) {
								checkNgaySuDung = true;
							}

							if (checkNgaySuDung == false) {
								text3 = "Ngay su dung phai la dd/MM/yyyyS";
							}
							// check Gio Su Dung
							let gioSuDung = document
									.getElementById('id.gioSuDung').value;
							let text4 = "";
							let checkGioSuDung = false;
							if (gioSuDung
									&& checkTime(gioSuDung.substring(0, 5))) {
								checkGioSuDung = true;
							}
							if (checkGioSuDung == false) {
								text4 = "Gio Su Dung phai dung dinh dang 00:00 AM";
							}
							// check so luong
							let soLuong = e.currentTarget.soLuong.value;
							let text5 = "";
							let checkSoLuong = false;
							if (soLuong && !isNaN(+soLuong) && soLuong > 0
									&& stringContainsOnlyNumber(soLuong)) {
								checkSoLuong = true;
							}
							if (checkSoLuong == false) {
								text5 = "So luong phai lon hon 0";
							}

							document.getElementById("textMaKH").innerHTML = text1;
							document.getElementById("textMaDV").innerHTML = text2;
							document.getElementById("textNgaySuDung").innerHTML = text3;
							document.getElementById("textGioSuDung").innerHTML = text4;
							document.getElementById("textSoLuong").innerHTML = text5;
							if (checkMaKH && checkMaDV && checkNgaySuDung
									&& checkGioSuDung && checkSoLuong) {
								e.currentTarget.submit();
							}
							// e.currentTarget.submit();//gửi data lên server
						})

		function checkDate(pText) {
			let isValid = false;
			let t = pText.match(/^(\d{2})\/(\d{2})\/(\d{4})$/);

			if (t !== null) {
				let d = +t[1], m = +t[2], y = +t[3];
				let date = new Date(y, m - 1, d);

				isValid = (date.getFullYear() === y && date.getMonth() === m - 1);
			}
			return isValid;
		}
		function checkTime(time) {
			let regex = /^([0-1][0-9]|2[0-3]):([0-5][0-9])$/
			return regex.test(time)
		}
		
		function stringContainsOnlyNumber(_input) {
		    let string1 = String(_input);
		    for (let i = 0; i < string1.length; i++) {
		        if (isNaN(string1.charAt(i)) || (string1.charAt(i) === " ")) {
		            return false;
		        }
		    }
		    return true;
		}
	</script>
</body>

</html>