<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
									<div class="breadcomb-icon">
										<i class="notika-icon notika-windows"></i>
									</div>
									<div class="breadcomb-ctn">
										<h2>예약목록</h2>
										<p>검색하고싶은 날짜를 선택해주세요</p>
										<form id="searchReservation">
											<table class="table table-sc-ex">
												<tr>
													<td>장소 <select name="labNo">
															<c:forEach items="${labs}" var="lab">
																<option value="${lab.no}">${lab.no}호</option>
															</c:forEach>
													</select> 일자 <input type="text" id="startcalender" name="startcalender">
													</td>
												</tr>
											</table>
										</form>
										<button  id="search" class="btn btn-success notika-btn-success">검색</button>
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-3">
								<div class="breadcomb-report">
									 <button id="excel" class="btn btn-success notika-btn-success">예약파일다운로드</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<br>
        <div class="container">
            <div class="row">			 
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="normal-table-list">
                        <div class="basic-tb-hd" id="showSearchReservation">
                            <h2>예약목록현황</h2>
                            <p></p>
                        </div>
                    </div>
                </div>
            </div>
		</div>
	</div>

	

	<script>
		$(function() {
			$("#startcalender")
					.datepicker(
							{
								dateFormat : "yy-mm-dd",
								showOn : "both",
								buttonImage : "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif"
							});
		});

		$('#search')
				.on('click',function() {

									$.ajax({
										url : "searchreservation",
										type : "POST",
										data : $('#searchReservation')
												.serialize(),
										success : function(data) {

											html = '<div class="bsc-tbl">';
											html += '	<table class="table table-sc-ex" id="reservationTable">';
											html += '	 <thead>';
											html += '	 	<tr>';
											html += '			<th>번호</th>';
											html += '			<th>장소</th>';
											html += '			<th>예약 시작 일시</th>';
											html += '			<th>예약 종료 일시</th>';
											html += '			<th>비고</th>';
											html += '		</tr>';
											html += '	</thead>';

											if (data == "") {
												html += '<h2>예약된 현황이 없습니다</h2>';
											} else {

												for (var i = 0; i < data.length; i++) {
													html += '<tbody>';
													html += '<tr>';
													html += '<td>'
															+ data[i].rownum
															+ '</td>';
													html += '<td><a href=/reservation/' + data[i].no + '>'
															+ data[i].labNo
															+ '</a></td>';
													html += '<td>'
															+ data[i].startDate
															+ '</td>';
													html += '<td>'
															+ data[i].expiryDate
															+ '</td>';
													html += '<td>'
															+ data[i].note
															+ '</td>';
													html += '</tr>';
													html += '</tbody>';
												}
											}

											html += '</table>';
											html += '</div>';
											$('#showSearchReservation').html(
													html);

										},
										error : function() {
											alert("에러");
										}
									});
						});

		$("#excel").click(function() {
			$("#reservationTable").table2excel({
				name : "excelFile",
				filename : "예약파일",
				fileext : ".xls"
			});
		});
	</script>
</body>
</html>