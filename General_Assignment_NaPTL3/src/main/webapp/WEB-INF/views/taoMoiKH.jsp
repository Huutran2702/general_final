<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Tạo mới khách hàng</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css"
        integrity="sha512-q3eWabyZPc1XTCmF+8/LuE1ozpg5xxn7iO89yfSOd5/oKvyqLngoNGsx8jq92Y8eXJ/IRxQbEC+FGSYxtk2oiw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
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
                        <div class="card-header text-center">Tạo mới khách hàng</div>
                        <div class="card-body d-flex justify-content-center">
                            <form:form class=" w-50 " id="formKhachHang" action="saveKH" method="post" modelAttribute="maKH">
                                <div class="form-group">
                                    <label for="maKH">Mã Khách Hàng</label>
                                    <input type="text" class="form-control" name="maKH" id="maKH"
                                        aria-describedby="maKH" placeholder="Ma Khach Hang">
                                    <small id="textMaKH" class="text-danger"></small>
                                </div>
                                <div class="form-group">
                                    <label for="tenKH">Tên Khách Hàng</label>
                                    <input type="text" class="form-control" name="tenKH" id="tenKH"
                                        placeholder="Ten Khach Hang">
                                    <small id="textTenKH" class="text-danger"></small>
                                </div>
                                <div class="form-group">
                                    <label for="diaChi">Địa Chỉ</label>
                                    <input type="text" class="form-control" name="diaChi" id="diaChi"
                                        placeholder="Dia Chi">
                                    <small id="textDiaChi" class="text-danger"></small>
                                </div>
                                <div class="form-group">
                                    <label for="soDienThoai">Số Điện Thoại</label>
                                    <input type="text" class="form-control" name="soDienThoai" id="soDienThoai"
                                        placeholder="So Dien Thoai">
                                    <small id="textSoDienThoai" class="text-danger"></small>
                                </div>
                                <div class="form-group">
                                    <label for="diaChiEmail">Địa chỉ Email</label>
                                    <input type="text" class="form-control" name="diaChiEmail" id="diaChiEmail"
                                        placeholder="Dia Chi Email">
                                    <small id="textDiaChiEmail" class="text-danger"></small>
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary ">Tạo Khách Hàng</button>
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/js/all.min.js"
        integrity="sha512-LW9+kKj/cBGHqnI4ok24dUWNR/e8sUD8RLzak1mNw5Ja2JYCmTXJTF5VpgFSw+VoBfpMvPScCo2DnKTIUjrzYw=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="./validate.js"></script>
    <script>
        document.getElementById("formKhachHang").addEventListener('submit', function (e) {
            e.preventDefault();
            //check maKH
            let maKH = e.currentTarget.maKH.value;
            let text1 = "";
            let checkMaKH = false;
            if (maKH.length == 7 && maKH.startsWith('KH')) {
                checkMaKH = true;
            }
            if (checkMaKH == false) {
                text1 = "Input not valid";
            }
            //checktenKH
            let tenKH = e.currentTarget.tenKH.value;
            let checkTenKH = false;
            let text2 = "";
            if (tenKH.length < 50 && tenKH.length > 1) {
                checkTenKH = true;
            }
            if (checkTenKH == false) {
                text2 = "Input not valid";
            }
            //checkDiaChi
            let diaChi = e.currentTarget.diaChi.value;
            let text3 = "";
            let checkDiaChi = false;
            if (diaChi) {
                checkDiaChi = true;
            }
            if (checkDiaChi == false) {
                text3 = "Input not valid";
            }
            // check Số điện thoại
            let checkSDT = false;
            let soDienThoai = e.currentTarget.soDienThoai.value;
            let text4 = "";
            if (soDienThoai.length == 10) {
                if (soDienThoai.startsWith("090") || soDienThoai.startsWith("091")) {
                    let end = soDienThoai.substring(3);
                    if (!isNaN(+end)) {//dau + de chuyen string sang number
                        checkSDT = true;
                    }
                }
            }
            if (soDienThoai.length == 14) {
                if (soDienThoai.startsWith("(84)+90") || soDienThoai.startsWith("(84)+91")) {
                    let end = soDienThoai.substring(7);
                    if (!isNaN(+end)) {//dau + de chuyen string sang number
                        checkSDT = true;
                    }
                }
            }
            if (checkSDT == false) {
                text4 = "So Dien Thoai Khong Dung Dinh Dang";
            }
            //check email
            let diaChiEmail = e.currentTarget.diaChiEmail.value;
            let text5 = "";
            let checkEmail = false;
            if ((/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/).test(diaChiEmail)) {
                checkEmail = true;
            } if (checkEmail == false) {
                text5 = "Vui long nhap dung dinh dang Email";
            }

            document.getElementById("textMaKH").innerHTML = text1;
            document.getElementById("textTenKH").innerHTML = text2;
            document.getElementById("textDiaChi").innerHTML = text3;
            document.getElementById("textSoDienThoai").innerHTML = text4;
            document.getElementById("textDiaChiEmail").innerHTML = text5;
            if(checkMaKH && checkTenKH && checkDiaChi && checkSDT && checkEmail){
                e.currentTarget.submit();
            }
            // e.currentTarget.submit();//gửi data lên server
        })

    </script>
</body>

</html>