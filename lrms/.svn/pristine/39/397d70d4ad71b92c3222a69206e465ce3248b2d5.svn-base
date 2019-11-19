<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
</head>
<body>
	<%@ include file="/WEB-INF/jsp/common/top.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="breadcomb-list">
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<div class="breadcomb-wp">
								<div class="breadcomb-ctn">
									<h2>실습실 등록</h2>
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
								<form action="/lab" method="POST" name="addForm"
									onsubmit="return availableCheck();"
									enctype="multipart/form-data">
									<input type="hidden" name="state" value='A'>
									<table class="table table-sc-ex">
										<tr>
											<td>호실</td>
											<td>
												<input type="text" name="no" id="no" size="40" maxlength="3" onchange="change(this)" />
												<input	type="button" id="search" value="중복검사" />
												<div id="checkLab"></div>
											</td>
										</tr>
										<tr>
											<td>정원</td>
											<td><input type="text" name="acceptablePerson" size="40"
												maxlength="3" /></td>
										</tr>
										<tr>
											<td>장비 수</td>
											<td><input type="text" name="availableEquipNo" size="40"
												maxlength="3" /></td>
										</tr>
										<tr>
											<td>용도</td>
											<td><input type="text" name="usePerpose" size="40" /></td>
										</tr>
										<tr>
											<td>컴퓨터 사양</td>
											<td><input type="text" name="computerSpec" size="40" /></td>
										</tr>
										<tr>
											<td>사진</td>
											<td><input type="file" value="사진 선택"
												name="multipartFile" /></td>
										</tr>
									</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="form-example-int mg-t-15" style="text-align: right;">
				<button class="btn btn-success notika-btn-success waves-effect"
					id="submit" disabled="disabled">
					<!-- <input type="submit" id="submit" disabled="disabled" value="버튼"> -->
					등록
					</form>
					<button class="btn btn-success notika-btn-success waves-effect">
							<a href="/lab" style="color: white"> 목록 </a>
					</button>
					</button>
				</button>
			</div>
		</div>
	</div>

	<script>
		$('#search').on('click', function() {

			var query = {
				no : $("#no").val()
			};

			$.ajax({
				url : "/check",
				type : "POST",
				data : query,
				success : function(data) {
					if (data == 1) {
						$('#checkLab').text("사용불가능");

					} else {
						$('#checkLab').text("사용가능");
						$("#submit").removeAttr("disabled");
					}
				}
			});
		});

		function change(obj) {
			$('#checkLab').text("중복체크를 확인해주세요");
			$("#submit").attr("disabled", "disabled");
		}

		function availableCheck() {
			var no = document.addForm.no;
			var acceptablePerson = document.addForm.acceptablePerson;
			var availableEquipNo = document.addForm.availableEquipNo;
			var usePerpose = document.addForm.usePerpose;
			var computerSpec = document.addForm.computerSpec;

			var addForm = window.confirm("정말로 등록 하시겠습니까?");
			if (addForm) {
				if (no.value == '') {
					window.alert("호실 정보를 입력하세요");
					return false;
				}
				if (isNaN(no.value)) {
					window.alert("호실 정보는 숫자만 입력 가능합니다.");
					return false;
				}
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