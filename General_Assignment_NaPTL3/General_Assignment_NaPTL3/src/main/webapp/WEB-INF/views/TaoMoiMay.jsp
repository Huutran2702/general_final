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
                    <a href="taomaymoi.html" class="list-group-item list-group-item-action "><i
                            class="fas fa-plus-circle"></i>
                        Tạo Máy Mới
                    </a>
                    <a href="taomoikhachhang.html" class="list-group-item list-group-item-action"><i
                            class="fas fa-plus-circle"></i> Tạo mới khách hàng</a>
                    <a href="taomoidichvu.html" class="list-group-item list-group-item-action"><i
                            class="fas fa-plus-circle"></i> Tạo mới dịch vụ</a>
                    <a href="/listmay" class="list-group-item list-group-item-action"><i class="fas fa-list"></i>
                        Danh sách máy</a>
                    <a href="listkhachhang.html" class="list-group-item list-group-item-action "><i
                            class="fas fa-list"></i> Danh sách khách hàng</a>
                    <a href="listdichvu.html" class="list-group-item list-group-item-action "><i
                            class="fas fa-list"></i> Danh sách dịch vụ</a>
                    <a href="dangkysudungmay.html" class="list-group-item list-group-item-action "><i
                            class="fas fa-plus-circle"></i> Đăng kí sử dụng máy</a>
                    <a href="dangkisudungdichvu.html" class="list-group-item list-group-item-action "><i
                            class="fas fa-plus-circle"></i> Đăng kí sử dụng dịch vụ</a>
                    <a href="thongtinkhachhang.html" class="list-group-item list-group-item-action "><i
                            class="fas fa-plus-circle"></i> Thông tin khách hàng</a>
                </div>
            </div>

            <div class="col-10 content">

                <div class="row justify-content-center">
                    <div class="card w-100 " style="background-color: transparent">
                        <div class="card-header text-center">Tạo máy mới</div>
                        <div class="card-body d-flex justify-content-center">
                            <form:form class=" w-50 " id="formMaMay" action="save" method="post" modelAttribute="maMay">
                                <div class="form-group">
                                    <label for="maMay">Mã máy</label>
                                    <input type="text" class="form-control" id="maMay" aria-describedby="maMay"
                                        placeholder="Ma May Moi" name="maMay">
                                    <small id="textMaMayMoi" class="text-danger"></small>
                                </div>
                                <div class="form-group">
                                    <label for="viTri">Vị trí</label>
                                    <input type="text" class="form-control" name="viTri" id="viTri"
                                        placeholder="Vi Tri May">
                                    <small id="textViTriMayMoi" class="text-danger"></small>
                                </div>
                                <div class="form-group">
                                    <label for="trangThai">Trạng thái</label>
                                    <select class="form-control" name="trangThai" id="trangThai">
                                        <option value="Rãnh">Rãnh</option>
                                        <option value="Bận">Bận</option>
                                        <option value="Dùng được">Dùng được</option>
                                        <option value="Đang sửa chữa">Đang sửa chữa</option>
                                    </select>
                                    <small id="textTrangThaiMayMoi" class="text-danger"></small>
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary ">Tạo Máy</button>
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
    <script>
        document.getElementById("formMaMay").addEventListener('submit', function (e) {
            e.preventDefault();
            //check Ma May
            let maMay = e.currentTarget.maMay.value;
            let text1 = "";
            let checkMaMay = false;
            if (maMay.length < 10 && maMay.length > 0) {
                checkMaMay = true;
            }
            if (checkMaMay == false) {
                text1 = "Input not valid";
            }
            document.getElementById("textMaMayMoi").innerHTML = text1;
            //check Vitri may
            let viTri = e.currentTarget.viTri.value;
            let text2 = "";
            let checkViTriMay = false;
            if (viTri.length < 10 && viTri.length > 0) {
                checkViTriMay = true;
            }
            if (checkViTriMay == false) {
                text2 = "Input not valid";
            }
            // //check trang thai
            // let trangThaiMayMoi = e.currentTarget.trangThaiMayMoi.value;
            // let text3 = "";
            // let checkTrangThaiMayMoi = false;
            // if (trangThaiMayMoi.length < 20 && trangThaiMayMoi.length > 0) {
            //     checkTrangThaiMayMoi = true;
            // }
            // if (checkTrangThaiMayMoi == false) {
            //     text3 = "Input not valid";
            // }
            document.getElementById("textViTriMayMoi").innerHTML = text2;
            // document.getElementById("textTrangThaiMayMoi").innerHTML = text3;
            // e.currentTarget.submit();//gửi data lên server
            if(checkMaMay && checkViTriMay){
                e.currentTarget.submit();
            }
        })

    </script>
</body>

</html>