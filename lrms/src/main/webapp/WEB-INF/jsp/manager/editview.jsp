<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/WEB-INF/jsp/common/top.jsp"%>
	<div class="breadcomb-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="normal-table-list">
						<div class="basic-tb-hd" id="showSearchReservation">
							<p>
							<div class="bsc-tbl">
							<form id="editForm" action="/manager/${managerInfo.id}" method="post">
							<input type="hidden" name="_method" value="put" />
							<h2>관리자 수정</h2>
								<table class="table table-sc-ex">
									<tr>
										<td>아이디</td>
										<td>${managerInfo.id}<input type="hidden" name="id"
											value="${managerInfo.id}" />
										</td>
									</tr>
									<tr>
										<td>비밀번호</td>
										<td><input type="password" id="password" name="password"
											value="${managerInfo.password}" /></td>
									</tr>
									<tr>
										<td>이름</td>
										<td><input type="text" id="name" name="name"
											value="${managerInfo.name}" /></td>
									</tr>
									<tr>
										<td>연락처</td>
										<td><input type="text" id="extensionNumber"
											name="extensionNumber" value="${managerInfo.extensionNumber}" />
										</td>
									</tr>
								</table>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
								<div class="form-example-int mg-t-15" style="text-align: right;">
								<button type="button" id="btn_edit" class="btn btn-success notika-btn-success">수정</button>
								<button type="button" id="btn_delete" class="btn btn-success notika-btn-success">삭제</button>
								<a href="/manager"><button type = "button" id="excel" class="btn btn-success notika-btn-success">목록</button></a>
								</div>
		</div>
	</div>
</body>
<script>
	$(document).ready(function() {
		$("#btn_edit").click(function() {
			$('input[name=_method]').val('put');

			var editConfirm = window.confirm("정말로 수정 하시겠습니까?");
			if (editConfirm) {
				if ($("#password").val() == '') {
					window.alert("필수 입력 정보를 입력하세요");
					return false;
				}

				if ($("#name").val() == '') {
					window.alert("필수 입력 정보를 입력하세요");
					return false;
				}

				if ($("#extensionNumber").val() == '') {
					window.alert("필수 입력 정보를 입력하세요");
					return false;
				}
				$("#editForm").submit();
			}
		});

		$("#btn_delete").click(function() {
			$('input[name=_method]').val('delete');

			var del_confirm = confirm('정말로 삭제 하시겠습니까?');

			if (del_confirm) {
				$("#editForm").submit();
			}
		});

	});
</script>
<%@ include file="/WEB-INF/jsp/common/footer.jsp"%>
</html>