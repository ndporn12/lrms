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
	<div class="form-example-area">
        <div class="container">
			<div class="row">
				<form action="/reservation" method="post" name="addForm" onsubmit="return availableCheck()">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="form-example-wrap mg-t-30">
                        <div class="cmp-tb-hd cmp-int-hd">
                            <h2>예약 등록</h2>
                        </div>
                        <div class="form-example-int form-horizental">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                        <label class="hrzn-fm">호실</label>
                                    </div>
                                    <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                        <div class="nk-int-st">
                                            <select class="chosen" name="labNo">
												<c:forEach items="${labs}" var="lab">
													<option value="${lab.no}">${lab.no}호</option>
												</c:forEach>
											</select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-example-int form-horizental mg-t-15">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                        <label class="hrzn-fm">시작일시</label>
                                    </div>
                                    <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                        <div class="nk-int-st">
                                           <input type="text" id="startcalender" name="startcalender">
                                           <select name="startTime">
														<option value="00">00</option>
														<option value="01">01</option>
														<option value="02">02</option>
														<option value="03">03</option>
														<option value="04">04</option>
														<option value="05">05</option>
														<option value="06">06</option>
														<option value="07">07</option>
														<option value="08">08</option>
														<option value="09">09</option>
														<option value="10">10</option>
														<option value="11">11</option>
														<option value="12">12</option>
														<option value="13">13</option>
														<option value="14">14</option>
														<option value="15">15</option>
														<option value="16">16</option>
														<option value="17">17</option>
														<option value="18">18</option>
														<option value="19">19</option>
														<option value="20">20</option>
														<option value="21">21</option>
														<option value="22">22</option>
														<option value="23">23</option>
												</select>시 
												<select name="startMinute">
														<option value="00">00</option>
														<option value="10">10</option>
														<option value="20">20</option>
														<option value="30">30</option>
														<option value="40">40</option>
														<option value="50">50</option>
												</select>분
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
						 <div class="form-example-int form-horizental mg-t-15">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                        <label class="hrzn-fm">종료 일시</label>
                                    </div>
                                    <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                        <div class="nk-int-st">
                                            <input type="text" id="endcalender" name="endcalender" />
                                            <select name="endTime">
												<option value="00">00</option>
												<option value="01">01</option>
												<option value="02">02</option>
												<option value="03">03</option>
												<option value="04">04</option>
												<option value="05">05</option>
												<option value="06">06</option>
												<option value="07">07</option>
												<option value="08">08</option>
												<option value="09">09</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option>
												<option value="13">13</option>
												<option value="14">14</option>
												<option value="15">15</option>
												<option value="16">16</option>
												<option value="17">17</option>
												<option value="18">18</option>
												<option value="19">19</option>
												<option value="20">20</option>
												<option value="21">21</option>
												<option value="22">22</option>
												<option value="23">23</option>
											</select>시 
											<select name="endMinute">
												<option value="00">00</option>
												<option value="10">10</option>
												<option value="20">20</option>
												<option value="30">30</option>
												<option value="40">40</option>
												<option value="50">50</option>
											</select>분
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
						 <div class="form-example-int form-horizental mg-t-15">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                        <label class="hrzn-fm">비고</label>
                                    </div>
                                    <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                        <div class="nk-int-st">
                                           <div class="row">
				                          	  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				                               	 <div class="form-group">
				                                    <div class="nk-int-st">
				                                        <textarea name="note" class="form-control" rows="5" placeholder="상세한정보를 적어주세요"></textarea>
				                                    </div>
				                                </div>
				                            </div>
				                        </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
						 <div class="form-example-int form-horizental mg-t-15">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                        <label class="hrzn-fm">서약서</label>
                                    </div>
                                    <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                        <div class="nk-int-st">
		                                    <select name="pledge">
												<option value="A">작성</option>
												<option value="C">미작성</option>
											</select>
	                                     </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                       
                    </div>
                </div>
         	        
          			 <div class="form-example-int mg-t-15" style="text-align: right;">
          			 	<input type="submit"class="btn btn-success notika-btn-success waves-effect" value="등록">
						<a href="/reservation"><input type="button" class="btn btn-success notika-btn-success waves-effect" value="목록"></a>
					</div>
                </form>
	
           </div>
	</div>
</div>


	<%@ include file="/WEB-INF/jsp/common/footer.jsp"%>

	<script>
		$(function() {
			$("#startcalender").datepicker({
				dateFormat : "yy-mm-dd",
				showOn : "both",
				buttonImage : "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif",
				minDate : 0
			});
		});

		$(function() {
			$("#endcalender")
					.datepicker(
							{
								dateFormat : "yy-mm-dd",
								showOn : "both",
								buttonImage : "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif",
								minDate : 0
							});
		});

		function availableCheck() {
			var note = document.addForm.note;
			var startCalender = document.addForm.startcalender;
			var endCalender = document.addForm.endCalender;

			var addConfirm = window.confirm("정말로 등록 하시겠습니까?");
			if (addConfirm) {
				if (note.value == '') {
					window.alert("비고란을 입력하세요");
					return false;
				}

				if (startCalender.value == '') {
					window.alert("시작 날짜를 입력하세요");
					return false;
				}

				if (endCalender.value == '') {
					window.alert("종료 날짜를 입력하세요");
				}

				return true;
			} else {
				return false;
			}

		}
	</script>
</body>
</html>