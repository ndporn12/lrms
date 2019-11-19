<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-3.4.0.js"></script>
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script> 
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
	<script src="https://raw.githack.com/rainabba/jquery-table2excel/master/dist/jquery.table2excel.js"></script>
</head>
<body>
<%@ include file="/WEB-INF/jsp/common/top.jsp" %>

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
										<h2>예약 이력</h2>
										<p>나열하고싶은 순서를 선택해주세요</p>
										<form id="searchRecord">
											<table class="table table-sc-ex">
												<tr>
													<td><select name="category">
																<option value="no">예약번호</option>
																<option value="lab_No">실습실</option>
																<option value="start_Date">예약시작시간</option>
																<option value="expiry_Date">예약종료시간</option>
																<option value="manager_id">관리자</option>
																<option value="state">상태</option>
																<option value="registration_date">등록시간</option>
														</select>
														<select name="sorting">
																<option value="ASC">오름차순</option>
																<option value="DESC">내림차순</option>						
														</select>
													</td>
												</tr>
											</table>
											</form>
										<button id="search" class="btn btn-success notika-btn-success">검색</button>												
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
                        <div class="basic-tb-hd" id="showSearchRecord">
                            <h2>예약이력현황</h2>
                            <p></p>
                        </div>
                    </div>
                </div>
            </div>
		</div>
		
	
	<script>
	$('#search').on('click', function(){
      	
        $.ajax({
            url: "searchrecord",
            type: "POST",
            data: $('#searchRecord').serialize(),
            success: function(data){
            	
            	html = '<div class="bsc-tbl">';
				html += '	<table class="table table-sc-ex" id="recordTable">';
				html += '	 <thead>';
				html += '	 	<tr>';
            	html +='			<th>예약번호</th>';
            	html +='			<th>실습실</th>';
            	html +='			<th>예약 시작 시간</th>';
            	html +='			<th>예약 종료 시간</th>';
            	html +='			<th>관리자</th>';
            	html +='			<th>상태</th>';
            	html +='			<th>등록시간</th>';
            	html +='		</tr>';
            	html += '	</thead>';
            	
            	for(var i = 0; i < data.length; i++){
            		html += '<tbody>';
					html += '<tr>';
            		html +='	<td>' + data[i].no + '</td>';
            		html +='	<td>' + data[i].labNo + '</td>';
            		html +='	<td>' + data[i].startDate + '</td>';
            		html +='	<td>' + data[i].expiryDate + '</td>';
            		html +='	<td>' + data[i].managerId + '</td>';
            		if(data[i].state == 'A'){
            			html +='	<td>등록</td>';
            		} else{
            			html +='	<td>취소</td>';
            		}
            		html +='	<td>' + data[i].registrationDate + '</td>';
            		html +='</tr>';
            		
            	}
            	
            	html +='</table>';  
            	html += '</div>';
            	   
                $('#showSearchRecord').html(html);
            
                
            },
            error: function(){
                alert("에러");
            }
        });
    });
	
	$("#excel").click(function () {
        $("#recordTable").table2excel({
            name: "excelFile",
            filename: "예약이력파일",
            fileext: ".xls"
        });
    });
	
	</script>
</body>
</html>