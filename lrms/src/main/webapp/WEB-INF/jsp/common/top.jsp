<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="no-js" lang="">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Dashboard One | Notika - Notika Admin Template</title>

<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- favicon
		============================================ -->
<link rel="shortcut icon" type="/image/x-icon" href="img/favicon.ico">
<!-- Google Fonts
		============================================ -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900"
	rel="stylesheet">
<!-- Bootstrap CSS
		============================================ -->
<link rel="stylesheet" href="/css/bootstrap.min.css">
<!-- Bootstrap CSS
		============================================ -->
<link rel="stylesheet" href="/css/font-awesome.min.css">
<!-- owl.carousel CSS
		============================================ -->
<link rel="stylesheet" href="/css/owl.carousel.css">
<link rel="stylesheet" href="/css/owl.theme.css">
<link rel="stylesheet" href="/css/owl.transitions.css">
<!-- meanmenu CSS
		============================================ -->
<link rel="stylesheet" href="/css/meanmenu/meanmenu.min.css">
<!-- animate CSS
		============================================ -->
<link rel="stylesheet" href="/css/animate.css">
<!-- normalize CSS
		============================================ -->
<link rel="stylesheet" href="/css/normalize.css">
<!-- mCustomScrollbar CSS
		============================================ -->
<link rel="stylesheet"
	href="/css/scrollbar/jquery.mCustomScrollbar.min.css">
<!-- jvectormap CSS
		============================================ -->
<link rel="stylesheet"
	href="/css/jvectormap/jquery-jvectormap-2.0.3.css">
<!-- notika icon CSS
		============================================ -->
<link rel="stylesheet" href="/css/notika-custom-icon.css">
<!-- wave CSS
		============================================ -->
<link rel="stylesheet" href="/css/wave/waves.min.css">
<!-- main CSS
		============================================ -->
<link rel="stylesheet" href="/css/main.css">
<!-- style CSS
		============================================ -->
<link rel="stylesheet" href="/css/style.css">
<!-- responsive CSS
		============================================ -->
<link rel="stylesheet" href="/css/responsive.css">
<!-- modernizr JS
		============================================ -->
<script src="/js/vendor/modernizr-2.8.3.min.js"></script>
<!-- jquery
		============================================ -->
<script src="/js/vendor/jquery-1.12.4.min.js"></script>
<!-- bootstrap JS
		============================================ -->
<script src="/js/bootstrap.min.js"></script>
<!-- wow JS
		============================================ -->
<script src="/js/wow.min.js"></script>
<!-- price-slider JS
		============================================ -->
<script src="/js/jquery-price-slider.js"></script>
<!-- owl.carousel JS
		============================================ -->
<script src="/js/owl.carousel.min.js"></script>
<!-- scrollUp JS
		============================================ -->
<script src="/js/jquery.scrollUp.min.js"></script>
<!-- meanmenu JS
		============================================ -->
<script src="/js/meanmenu/jquery.meanmenu.js"></script>
<!-- counterup JS
		============================================ -->
<script src="/js/counterup/jquery.counterup.min.js"></script>
<script src="/js/counterup/waypoints.min.js"></script>
<script src="/js/counterup/counterup-active.js"></script>
<!-- mCustomScrollbar JS
		============================================ -->
<script src="/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
<!-- jvectormap JS
		============================================ -->
<script src="/js/jvectormap/jquery-jvectormap-2.0.2.min.js"></script>
<script src="/js/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="/js/jvectormap/jvectormap-active.js"></script>
<!-- sparkline JS
		============================================ -->
<script src="/js/sparkline/jquery.sparkline.min.js"></script>
<script src="/js/sparkline/sparkline-active.js"></script>
<!-- sparkline JS
		============================================ -->
<script src="/js/flot/jquery.flot.js"></script>
<script src="/js/flot/jquery.flot.resize.js"></script>
<script src="/js/flot/curvedLines.js"></script>
<script src="/js/flot/flot-active.js"></script>
<!-- knob JS
		============================================ -->
<script src="/js/knob/jquery.knob.js"></script>
<script src="/js/knob/jquery.appear.js"></script>
<script src="/js/knob/knob-active.js"></script>
<!--  wave JS
		============================================ -->
<script src="/js/wave/waves.min.js"></script>
<script src="/js/wave/wave-active.js"></script>
<!--  todo JS
		============================================ -->
<script src="/js/todo/jquery.todo.js"></script>
<!-- plugins JS
		============================================ -->
<script src="/js/plugins.js"></script>
<!--  Chat JS
		============================================ -->
<script src="/js/chat/moment.min.js"></script>
<script src="/js/chat/jquery.chat.js"></script>
<!-- main JS
		============================================ -->
<script src="/js/main.js"></script>
<!-- tawk chat JS
		============================================ -->
<script src="https://code.jquery.com/jquery-3.4.0.js"></script>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
	type="text/css" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script
	src="https://raw.githack.com/rainabba/jquery-table2excel/master/dist/jquery.table2excel.js"></script>
</head>
<body>
	<div class="header-top-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="logo-area">
						<h2 style="color: white;">실습실 예약 관리 시스템</h2>
					</div>
					<div>
						${sessionScope.managerInfo.id} <a href="/common/logout"><button
								type="button" id="excel"
								class="btn btn-success notika-btn-success">로그아웃</button></a>
					</div>

				</div>
				<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
					<div class="header-top-menu">
						<ul class="nav navbar-nav notika-top-nav">
							<li class="nav-item nc-al"><a href="#"
								data-toggle="dropdown" role="button" aria-expanded="false"
								class="nav-link dropdown-toggle"><span><i
										class="notika-icon notika-alarm"></i></span></a>
								<div role="menu"
									class="dropdown-menu message-dd notification-dd animated zoomIn">
									<div class="hd-mg-tt">
										<h2>Notification</h2>
									</div>
									<div class="hd-message-info">
										<a href="#">
											<div class="hd-message-sn">
												<div class="hd-message-img">
													<img src="img/post/2.jpg" alt="" />
												</div>
											</div>
										</a>
									</div>
								</div></li>
							<li class="nav-item"><a href="#" data-toggle="dropdown"
								role="button" aria-expanded="false"
								class="nav-link dropdown-toggle"><div
										class="spinner4 spinner-4"></div>
									<div class="ntd-ctn">
										<span>2</span>
									</div></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="main-menu-area mg-tb-40">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<ul class="nav nav-tabs notika-menu-wrap menu-it-icon-pro">
						<li class="active"><a data-toggle="tab" href="#Home"><i
								class="notika-icon notika-house"></i> 예약</a></li>
						<li><a data-toggle="tab" href="#mailbox"><i
								class="notika-icon notika-mail"></i> 실습실</a></li>
						<c:if test="${sessionScope.managerInfo.grade == 'A'}">
							<li><a data-toggle="tab" href="#Interface"><i
									class="notika-icon notika-edit"></i> 관리자</a></li>
						</c:if>
						<c:if test="${sessionScope.managerInfo.grade == 'A'}">
							<li><a data-toggle="tab" href="#Charts"><i
									class="notika-icon notika-bar-chart"></i> 예약이력</a></li>
						</c:if>
					</ul>
					<div class="tab-content custom-menu-content">
						<div id="Home"
							class="tab-pane in active notika-tab-menu-bg animated flipInX">
							<ul class="notika-main-menu-dropdown">
								<li><a href="/reservation">예약 목록</a></li>
								<li><a href="/reservation/form">예약 등록</a></li>
							</ul>
						</div>
						<div id="mailbox"
							class="tab-pane notika-tab-menu-bg animated flipInX">
							<ul class="notika-main-menu-dropdown">
								<li><a href="/lab">실습실 목록</a></li>
								<li><a href="/lab/form">실습실 등록</a></li>
							</ul>
						</div>
						<c:if test="${sessionScope.managerInfo.grade == 'A'}">
							<div id="Interface"
								class="tab-pane notika-tab-menu-bg animated flipInX">
								<ul class="notika-main-menu-dropdown">
									<li><a href="/manager">관리자 목록</a></li>
									<li><a href="/manager/form">관리자 등록</a></li>
								</ul>
							</div>
						</c:if>
						<div id="Charts"
							class="tab-pane notika-tab-menu-bg animated flipInX">
							<ul class="notika-main-menu-dropdown">
								<li><a href="/record">예약 이력</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>