<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Danh sách máy</title>
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
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>">

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
						href="${pageContext.request.contextPath}/may/dangkysudungmay"
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
                        <div class="card-header text-center">Đăng kí sử dụng máy</div>
                        <div class="card-body d-flex justify-content-center">
                            <form:form modelAttribute="dangkysudungmay" action="dangkysudungmay" method="post" class=" w-50 " id="formDangKySuDungMay">
                                <div class="form-group">
                                    <label for="maKH">Mã Khách Hàng</label>
                                    <form:select path="id.maKH" cssClass="form-control">
										<form:options items="${danhSachKhachHang}"
											itemLabel="maKH" itemValue="maKH" />
									</form:select>
                                    <small id="textMaKH" class="text-danger"></small>
                                </div>
                                <div class="form-group">
                                    <label for="maMay">Mã Máy</label>
                                   <form:select path="id.maMay" cssClass="form-control">
										<form:options items="${danhSachMay}"
											itemLabel="maMay" itemValue="maMay" />
									</form:select>
                                    <small id="textMaMay" class="text-danger"></small>
                                </div>
                                <div class="form-group">
                                    <label for="ngayBatDauSuDung">Ngày Bắt Đầu Sử Dụng</label>
                                    <form:input type="text" data-toggle="datepicker" placeholder="dd/MM/yyyy"
                                        aria-describedby="search" path="id.ngayBatDauSuDung" 
                                        class="form-control"/>
                                    <div data-toggle="datepicker"></div>
                                    <small id="textNgayBatDauSuDung" class="text-danger"></small>
                                </div>
                                <div class="form-group">
                                    <label for="gioBatDauSuDung">Giờ Bắt Đầu Sử Dụng</label>
                                    <form:input type="text" data-toggle="timepicker" placeholder="00:00 AM"
                                        aria-describedby="search" path="id.gioBatDauSuDung" name="gioBatDauSuDung"
                                        class="form-control timepicker" aria-describedby="search"/>
                                    <div data-toggle="timepicker"></div>
                                    <small id="textGioBatDauSuDung" class="text-danger"></small>
                                </div>
                                <div class="form-group">
                                    <label for="thoiGianSuDung">Thời Gian Sử Dụng</label>
                                    <input type="text" class="form-control" name="thoiGianSuDung" id="thoiGianSuDung"
                                        placeholder="Thoi Gian Su Dung">
                                    <small id="textThoiGianSuDung" class="text-danger"></small>
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary ">Đăng Kí</button>
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
		<script src=""
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
		
		<script src="<c:url value="/resources/js/validate.js"/>"></script>
		<script>
        $('[data-toggle="datepicker"]').datepicker({
            format: 'dd/mm/yyyy'
        });
        $('input.timepicker').timepicker({ interval: 1, scrollbar: true });
        document.getElementById("formDangKySuDungMay").addEventListener('submit', function (e) {
            e.preventDefault();
            //check maKH
            let maKH = document.getElementById('id.maKH').value;
            let text1 = "";
            let checkMaKH = false;
            if (maKH.length == 7 && maKH.startsWith('KH')) {
                checkMaKH = true;
            }
            if (checkMaKH == false) {
                text1 = "Ma Khach Hang phai co do dai bang 7 va bat dau bang KH";
            }
            //check Ma May
            let maMay = document.getElementById('id.maMay').value;
            let text2 = "";
            let checkMaMay = false;
            if (maMay.length < 10 && maMay.length > 0) {
                checkMaMay = true;
            }
            if (checkMaMay == false) {
                text2 = "May may chưa dung dinh dang";
            }
            //check Ngay Bat Dau Su Dung
            let ngayBatDauSuDung = document.getElementById('id.ngayBatDauSuDung').value;
            let text3 = "";
            let checkNgayBatDauSuDung = false;
            if (ngayBatDauSuDung && checkDate(ngayBatDauSuDung)) {
                checkNgayBatDauSuDung = true;
            }

            if (checkNgayBatDauSuDung == false) {
                text3 = "Ngay su dung phai la dd/MM/yyyy";
            }

            // check Gio Su Dung
            let gioBatDauSuDung = document.getElementById('id.gioBatDauSuDung').value;
            let text4 = "";
            let checkGioBatDauSuDung = false;
            if (gioBatDauSuDung && checkTime(gioBatDauSuDung.substring(0, 5))) {
                checkGioBatDauSuDung = true;
            }
            if (checkGioBatDauSuDung == false) {
                text4 = "Gio Su Dung phai dung dinh dang 00:00 AM";
            }
            //check thoi gian su dung
            let thoiGianSuDung = e.currentTarget.thoiGianSuDung.value;
            let text5 = "";
            let checkThoiGianSuDung = false;
            if (thoiGianSuDung && !isNaN(+thoiGianSuDung) && thoiGianSuDung>0 && stringContainsOnlyNumber(thoiGianSuDung)) {
                checkThoiGianSuDung = true;
            }
            if (checkThoiGianSuDung == false) {
                text5 = "Thoi gian su dung phai lon hon 0";
            }

            document.getElementById("textMaKH").innerHTML = text1;
            document.getElementById("textMaMay").innerHTML = text2;
            document.getElementById("textNgayBatDauSuDung").innerHTML = text3;
            document.getElementById("textGioBatDauSuDung").innerHTML = text4;
            document.getElementById("textThoiGianSuDung").innerHTML = text5;
            if (checkMaKH && checkMaMay && checkNgayBatDauSuDung && checkGioBatDauSuDung && checkThoiGianSuDung) {
                e.currentTarget.submit();
            }
            // e.currentTarget.submit();//gửi data lên server
        })
    </script>
</body>

</html>