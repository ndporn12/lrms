<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/WEB-INF/jsp/common/top.jsp"%>
	<div class="breadcomb-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="breadcomb-list">
						<div class="row">
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
								<div class="breadcomb-wp">
									<div class="breadcomb-ctn">
										<h2>실습실 수정</h2>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="breadcomb-area">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="normal-table-list">
							<div class="basic-tb-hd" id="showSearchReservation">
								<div class="bsc-tbl">
									<form action="/lab" method="POST" name="editForm"
										onsubmit="return availableCheck();"
										enctype="multipart/form-data">
										<input type="hidden" name="_method" value="put" />
										<table class="table table-sc-ex">
											<tr>
												<input type="hidden" name="state" value='A'>
												<th>호실</th>
												<td><input type="hidden" name="no" value='${lab.no}'>${lab.no}</td>
											</tr>
											<tr>
												<th>정원</th>
												<td><input type="text" name="acceptablePerson"
													size="40" value="${lab.acceptablePerson}" maxlength="3"></td>
											</tr>
											<tr>
												<th>장비 수</th>
												<td><input type="text" name="availableEquipNo"
													size="40" value="${lab.availableEquipNo}" maxlength="3"></td>
											</tr>
											<tr>
												<th>용도</th>
												<td><input type="text" name="usePerpose" size="40"
													value="${lab.usePerpose}"></td>
											</tr>
											<tr>
												<th>컴퓨터 사양</th>
												<td><input type="text" name="computerSpec" size="40"
													value="${lab.computerSpec}"></td>
											</tr>
											<tr>
												<td>사진</td>
												<td><input type="file" value="파일 선택"
													name="multipartFile"></td>
											</tr>
										</table>
								</div>
							</div>
						</div>
						<div class="form-example-int mg-t-15" style="text-align: right;">
							<button class="btn btn-success notika-btn-success waves-effect"
								id="submit">수정</button>
							<button class="btn btn-success notika-btn-success waves-effect">
								<a href="/lab" style="color: white"> 목록 </a>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		function availableCheck() {
			var acceptablePerson = document.editForm.acceptablePerson;
			var availableEquipNo = document.editForm.availableEquipNo;
			var usePerpose = document.editForm.usePerpose;
			var computerSpec = document.editForm.computerSpec;

			var editForm = window.confirm("정말로 수정 하시겠습니까?");
			if (editForm) {
				if (acceptablePerson.value == '') {
					window.alert("정원 정보를 입력하세요");
					return false;
				}
				if (isNaN(acceptablePerson.value)) {
					window.alert("정원 정보는 숫자만 입력 가능합니다.");
					return false;
				}
				if (availableEquipNo.value == '') {
					window.alert("장비 수를 입력하세요");
					return false;
				}
				if (isNaN(availableEquipNo.value)) {
					window.alert("장비 수는 숫자만 입력 가능합니다.");
					return false;
				}
				if (usePerpose.value == '') {
					window.alert("사용 용도를 입력하세요");
					return false;
				}
				if (computerSpec.value == '') {
					window.alert("컴퓨터 사양을 입력하세요");
					return false;
				}
				return true;
			} else {
				return false;
			}
		}
	</script>
	<%@ include file="/WEB-INF/jsp/common/footer.jsp"%>
</body>
</html>