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

</head>

<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-2 p-0 menu">
				<div class="list-group ">
					<a href="taomaymoi.html"
						class="list-group-item list-group-item-action "><i
						class="fas fa-plus-circle"></i> Danh sách dịch Vụ </a> <a
						href="taomoikhachhang.html"
						class="list-group-item list-group-item-action"><i
						class="fas fa-plus-circle"></i> Tạo mới khách hàng</a> <a
						href="taomoidichvu.html"
						class="list-group-item list-group-item-action"><i
						class="fas fa-plus-circle"></i> Tạo mới dịch vụ</a> <a
						href="listmay.html" class="list-group-item list-group-item-action"><i
						class="fas fa-list"></i> Danh sách máy</a> <a
						href="listkhachhang.html"
						class="list-group-item list-group-item-action "><i
						class="fas fa-list"></i> Danh sách khách hàng</a> <a
						href="listdichvu.html"
						class="list-group-item list-group-item-action "><i
						class="fas fa-list"></i> Danh sách dịch vụ</a> <a
						href="dangkysudungmay.html"
						class="list-group-item list-group-item-action "><i
						class="fas fa-plus-circle"></i> Đăng kí sử dụng máy</a> <a
						href="dangkisudungdichvu.html"
						class="list-group-item list-group-item-action "><i
						class="fas fa-plus-circle"></i> Đăng kí sử dụng dịch vụ</a> <a
						href="thongtinkhachhang.html"
						class="list-group-item list-group-item-action "><i
						class="fas fa-plus-circle"></i> Thông tin khách hàng</a>
				</div>
			</div>

			<div class="col-10 content">

				<div class="row justify-content-center">
					<div class="card w-100 " style="background-color: transparent">
						<div class="card-header text-center">Danh sách dịch vụ</div>
						<div class="mt-3 ml-5">
							<form class="form-inline" action="search">
								<input class="form-control mr-sm-2" type="search" name="key"
									placeholder="Search" aria-label="Search">
								<button class="btn btn-outline-success my-2 my-sm-0"
									type="submit">Search</button>
							</form>
						</div>
						<div class="card-body d-flex justify-content-center">
							<table class="table">
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">Mã KH</th>
										<th scope="col">Tên KH</th>
										<th scope="col">Mã Máy</th>
										<th scope="col">Vị trí</th>
										<th scope="col">Trạng thái</th>
										<th scope="col">Ngày bắt đầu sử dụng</th>
										<th scope="col">Giờ bắt đầu sử dụng</th>
										<th scope="col">Thời gian sử dụng máy</th>
										<th scope="col">Mã dịch vụ</th>
										<th scope="col">Ngày sử dụng</th>
										<th scope="col">Giờ sử dụng</th>
										<th scope="col">Số lượng</th>
										<th scope="col">Tổng tiền</th>

									</tr>
								</thead>
								<tbody>
									<c:forEach items="${danhSachKhachHang}" var="dv"
										varStatus="loop">
										<tr>
											<th scope="row">${loop.count}</th>
											<td>${dv[0]}</td>
											<td>${dv[1]}</td>
											<td>${dv[2]}</td>
											<td>${dv[3]}</td>
											<td>${dv[4]}</td>
											<td>${dv[5]}</td>
											<td>${dv[6]}</td>
											<td>${dv[7]}</td>
											<td>${dv[8]}</td>
											<td>${dv[9]}</td>
											<td>${dv[10]}</td>
											<td>${dv[11]}</td>
											<td>${dv[12]}</td>
										</tr>
									</c:forEach>


								</tbody>
							</table>
						</div>

					</div>
					<nav aria-label="Page navigation example">
						<ul class="pagination">
							<li class="page-item"><a class="page-link"
								href="?${key }pageNo=${pre }">Previous</a></li>
							<c:forEach var="i" begin="1" end="${totalPage }" step="1">
								<li class="page-item"><a class="page-link"
									href="?${key }pageNo=${i-1 }"><c:out value="${i}" /></a></li>
							</c:forEach>


							<li class="page-item"><a class="page-link"
								href="?${key }pageNo=${next }">Next</a></li>
						</ul>
					</nav>
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
</body>

</html>