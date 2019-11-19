<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/WEB-INF/jsp/common/top.jsp" %>
	<c:set var="startDate" value="${reservation.startDate}"/>
	<c:set var="endDate" value="${reservation.expiryDate}"/>
			<% 
				String startDate = (String) pageContext.getAttribute("startDate");
			    String startMonth = startDate.substring(0,10);
			    String startTime = startDate.substring(11,13);
			    String startMinute = startDate.substring(14, 16);
			    int sTime = Integer.parseInt(startTime);
			    int sMinute = Integer.parseInt(startMinute);
			    
			    String endDate = (String) pageContext.getAttribute("endDate");
			    String endMonth = endDate.substring(0,10);
			    String endTime = endDate.substring(11,13);
			    String endMinute = endDate.substring(14, 16);
			    int eTime = Integer.parseInt(endTime);
			    int eMinute = Integer.parseInt(endMinute);
			  
			%>

	<div class="form-example-area">
        <div class="container">
			<div class="row">
				<form action="/reservation" method="post" name="editForm" onsubmit="return availableCheck()">
                <input type="hidden" name="_method" value="put"/>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="form-example-wrap mg-t-30">
                        <div class="cmp-tb-hd cmp-int-hd">
                            <h2>예약 수정</h2>
                        </div>
                        <div class="form-example-int form-horizental">
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12">
                                        <label class="hrzn-fm">호실</label>
                                    </div>
                                    <div class="col-lg-8 col-md-7 col-sm-7 col-xs-12">
                                        <div class="nk-int-st">
                                            <select name="labNo">
												<c:forEach items="${labs}" var="lab">
													<option value="${lab.no}"<c:if test="${reservation.labNo eq lab.no}">selected="selected"</c:if>>${lab.no}호</option>
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
                                           <input type="text" id="startcalender" name="startcalender" value="<%=startMonth%>">
                                           <select name="startTime">
										   		<option value="00"<c:if test="<%=sTime == 0 %>">selected="selected"</c:if>>00</option>
										    	<option value="01"<c:if test="<%=sTime == 1 %>">selected="selected"</c:if>>01</option>
										    	<option value="02"<c:if test="<%=sTime == 2 %>">selected="selected"</c:if>>02</option>
										    	<option value="03"<c:if test="<%=sTime == 3 %>">selected="selected"</c:if>>03</option>
										    	<option value="04"<c:if test="<%=sTime == 4 %>">selected="selected"</c:if>>04</option>
										    	<option value="05"<c:if test="<%=sTime == 5 %>">selected="selected"</c:if>>05</option>
										    	<option value="06"<c:if test="<%=sTime == 6 %>">selected="selected"</c:if>>06</option>
										    	<option value="07"<c:if test="<%=sTime == 7 %>">selected="selected"</c:if>>07</option>
										    	<option value="08"<c:if test="<%=sTime == 8 %>">selected="selected"</c:if>>08</option>
										    	<option value="09"<c:if test="<%=sTime == 9 %>">selected="selected"</c:if>>09</option>
										    	<option value="10"<c:if test="<%=sTime == 10 %>">selected="selected"</c:if>>10</option>
										    	<option value="11"<c:if test="<%=sTime == 11 %>">selected="selected"</c:if>>11</option>
										    	<option value="12"<c:if test="<%=sTime == 12 %>">selected="selected"</c:if>>12</option>
										    	<option value="13"<c:if test="<%=sTime == 13 %>">selected="selected"</c:if>>13</option>
										    	<option value="14"<c:if test="<%=sTime == 14 %>">selected="selected"</c:if>>14</option>
										    	<option value="15"<c:if test="<%=sTime == 15 %>">selected="selected"</c:if>>15</option>
										    	<option value="16"<c:if test="<%=sTime == 16 %>">selected="selected"</c:if>>16</option>
										    	<option value="17"<c:if test="<%=sTime == 17 %>">selected="selected"</c:if>>17</option>
										    	<option value="18"<c:if test="<%=sTime == 18 %>">selected="selected"</c:if>>18</option>
										    	<option value="19"<c:if test="<%=sTime == 19 %>">selected="selected"</c:if>>19</option>
										    	<option value="20"<c:if test="<%=sTime == 20 %>">selected="selected"</c:if>>20</option>
										    	<option value="21"<c:if test="<%=sTime == 21 %>">selected="selected"</c:if>>21</option>
										    	<option value="22"<c:if test="<%=sTime == 22 %>">selected="selected"</c:if>>22</option>
										    	<option value="23"<c:if test="<%=sTime == 23 %>">selected="selected"</c:if>>23</option>
										  </select>시
												 <select name="startMinute">
											    	<option value="00"<c:if test="<%=sMinute == 00 %>">selected="selected"</c:if>>00</option>
											    	<option value="10"<c:if test="<%=sMinute == 10 %>">selected="selected"</c:if>>10</option>
											    	<option value="20"<c:if test="<%=sMinute == 20 %>">selected="selected"</c:if>>20</option>
											    	<option value="30"<c:if test="<%=sMinute == 30 %>">selected="selected"</c:if>>30</option>
											    	<option value="40"<c:if test="<%=sMinute == 40 %>">selected="selected"</c:if>>40</option>
											    	<option value="50"<c:if test="<%=sMinute == 50 %>">selected="selected"</c:if>>50</option>
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
                                            <input type="text" id="endcalender" name="endcalender" value="<%=endMonth%>">
                                            <select name="endTime"> 
											    	<option value="00"<c:if test="<%=eTime == 0 %>">selected="selected"</c:if>>00</option>
											    	<option value="01"<c:if test="<%=eTime == 1 %>">selected="selected"</c:if>>01</option>
											    	<option value="02"<c:if test="<%=eTime == 2 %>">selected="selected"</c:if>>02</option>
											    	<option value="03"<c:if test="<%=eTime == 3 %>">selected="selected"</c:if>>03</option>
											    	<option value="04"<c:if test="<%=eTime == 4 %>">selected="selected"</c:if>>04</option>
											    	<option value="05"<c:if test="<%=eTime == 5 %>">selected="selected"</c:if>>05</option>
											    	<option value="06"<c:if test="<%=eTime == 6 %>">selected="selected"</c:if>>06</option>
											    	<option value="07"<c:if test="<%=eTime == 7 %>">selected="selected"</c:if>>07</option>
											    	<option value="08"<c:if test="<%=eTime == 8 %>">selected="selected"</c:if>>08</option>
											    	<option value="09"<c:if test="<%=eTime == 9 %>">selected="selected"</c:if>>09</option>
											    	<option value="10"<c:if test="<%=eTime == 10 %>">selected="selected"</c:if>>10</option>
											    	<option value="11"<c:if test="<%=eTime == 11 %>">selected="selected"</c:if>>11</option>
											    	<option value="12"<c:if test="<%=eTime == 12 %>">selected="selected"</c:if>>12</option>
											    	<option value="13"<c:if test="<%=eTime == 13 %>">selected="selected"</c:if>>13</option>
											    	<option value="14"<c:if test="<%=eTime == 14%>">selected="selected"</c:if>>14</option>
											    	<option value="15"<c:if test="<%=eTime == 15%>">selected="selected"</c:if>>15</option>
											    	<option value="16"<c:if test="<%=eTime == 16%>">selected="selected"</c:if>>16</option>
											    	<option value="17"<c:if test="<%=eTime == 17%>">selected="selected"</c:if>>17</option>
											    	<option value="18"<c:if test="<%=eTime == 18%>">selected="selected"</c:if>>18</option>
											    	<option value="19"<c:if test="<%=eTime == 19%>">selected="selected"</c:if>>19</option>
											    	<option value="20"<c:if test="<%=eTime == 20%>">selected="selected"</c:if>>20</option>
											    	<option value="21"<c:if test="<%=eTime == 21%>">selected="selected"</c:if>>21</option>
											    	<option value="22"<c:if test="<%=eTime == 22%>">selected="selected"</c:if>>22</option>
											    	<option value="23"<c:if test="<%=eTime == 23%>">selected="selected"</c:if>>23</option>
											 </select>시
											 <select name="endMinute">
											 	    <option value="00"<c:if test="<%=eMinute == 0 %>">selected="selected"</c:if>>00</option>
											    	<option value="10"<c:if test="<%=eMinute == 10 %>">selected="selected"</c:if>>10</option>
											    	<option value="20"<c:if test="<%=eMinute == 20 %>">selected="selected"</c:if>>20</option>
											    	<option value="30"<c:if test="<%=eMinute == 30 %>">selected="selected"</c:if>>30</option>
											    	<option value="40"<c:if test="<%=eMinute == 40 %>">selected="selected"</c:if>>40</option>
											    	<option value="50"<c:if test="<%=eMinute == 50 %>">selected="selected"</c:if>>50</option>
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
				                                        <textarea name="note" class="form-control" rows="5">${reservation.note}</textarea>
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
												<option value="A" <c:if test="${reservation.pledge=='A'}">selected</c:if>>작성</option>
												<option value="C"<c:if test="${reservation.pledge=='C'}">selected</c:if>>미작성</option>
											</select>
	                                     </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                       
                    </div>
                </div>
					<input type="hidden"  name="no" value="${reservation.no}">
         	        
          			 <div class="form-example-int mg-t-15" style="text-align: right;">
						<a href="/reservation"><input type="button" class="btn btn-success notika-btn-success waves-effect" value="목록" ></a>
						<input type="submit" class="btn btn-success notika-btn-success waves-effect" value="수정">
					</div>
                </form>
				
           </div>
	</div>
</div>
	
		<script>
		
		
		$(function() {
			
			$( "#startcalender").datepicker({
				dateFormat:"yy-mm-dd",
				showOn:"both",
				buttonImage:"http://jqueryui.com/resources/demos/datepicker/images/calendar.gif",
				minDate: 0
			});
		});
		
		$(function() {
			$( "#endcalender").datepicker({
				dateFormat:"yy-mm-dd",
				showOn:"both",
				buttonImage:"http://jqueryui.com/resources/demos/datepicker/images/calendar.gif",
				minDate: 0
			});
		});

		
		function availableCheck(){
			var note = document.editForm.note;
			var startCalender = document.editForm.startcalender;
			var endCalender = document.editForm.endCalender;
			
			var editConfirm = window.confirm("정말로 수정 하시겠습니까?");
			if(editConfirm){
				if(note.value ==''){
					window.alert("비고란을 입력하세요");
					return false;
				}
				
				if(startCalender.value == ''){
					window.alert("시작 날짜를 입력하세요");
					return false;
				}
				
				if(endCalender.value ==''){
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