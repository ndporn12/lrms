<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>실습실 목록</title>
</head>
<body>
	<%@ include file="/WEB-INF/jsp/common/top.jsp"%>
	<div class="normal-table-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="normal-table-list">
						<div class="basic-tb-hd">
							<h2>실습실 목록</h2>
							<p>실습실 목록 정보를 조회할 수 있습니다.</p>
						</div>
						<div class="bsc-tbl-hvr">
							<table class="table table-hover">
								<thead>
									<tr>
										<th>번호</th>
										<th>장소</th>
										<th>실습실</th>
										<th>정원</th>
										<th>장비</th>
										<th>용도</th>
									</tr>
								</thead>
								<tbody>
									<%
										int i = 1;
									%>
									<c:forEach var="lab" items="${listLab}">
										<tr>
											<td><%=i++%></td>
											<td>원화관</td>
											<td><a href='/lab/${lab.no}'>${lab.no}</a></td>
											<td>${lab.acceptablePerson}</td>
											<td>${lab.availableEquipNo}</td>
											<td>${lab.usePerpose}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<div class="form-example-int mg-t-15" style="text-align: right;">
						<button class="btn btn-success notika-btn-success waves-effect">
							<a href="/lab/form" style="color: white"> 등록 </a>
						</button>
					</div>

				</div>
			</div>
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"></div>
			</div>
		</div>
		<%@ include file="/WEB-INF/jsp/common/footer.jsp"%>
</body>
</html>