<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>MatDesign</title>
<!-- Favicon -->
<link rel="icon" href="../images/favicon.ico" sizes="32x32">
<!-- Bootstrap core CSS -->
<link rel="stylesheet" href="../css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel='stylesheet' href='../css/fontawesome.min.css'>
<script src="https://kit.fontawesome.com/6a35b80892.js"
	crossorigin="anonymous"></script>
<!-- Animate -->
<link href="../css/animate.css" rel="stylesheet">
<!-- Owl Carousel -->
<link rel="stylesheet" href="../css/owl.carousel.min.css">
<link rel="stylesheet" href="../css/owl.theme.default.min.css">
<!-- light box -->
<link rel="stylesheet" href="../css/lightbox.min.css">
<!-- jquery ui -->
<link rel="stylesheet" href="../css/jquery-ui.min.css">
<!-- nice select -->
<link rel="stylesheet" href="../css/nice-select.min.css">
<!-- Main Styles -->
<link rel="stylesheet" href="../scss/main.css">
<!-- Boxicon -->
<script src="https://unpkg.com/boxicons@2.1.4/dist/boxicons.js"></script>
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>
</head>

<body>
	<!-- main header navbar -->
	<nav class="navbar navbar-expand-lg navbar-light custom-navbar"
		id="mainMenu">
		<div class="container">
			<a class="navbar-brand" href="index.jsp"> <img
				src="../images/MatDesignLogo.png" alt="">
			</a>
			<!--  navbar actions -->
			<div class="main-navbar-action">
				<div id="mainNavbarDropdown">
					<!-- navbar user account dropdown -->
					<div class="dropdown-wrapper" id="usermenu" data-collapse="false">
						<div class="account-wrapper">
							<!-- login form wrapper -->

							<!-- login form wrapper -->
							<div class="account-wrapper__content" style="text-align: center;">
								<div class="">
									<div class="account-wrapper__heading">
										<span>${memberVO.memberAccount}</span> <span
											class="account-wrapper__heading--link">${memberVO.memberName}
										</span>
									</div>
								</div>
								<div class="account-wrapper__content">
									<div class="form-group custom-form__input">
										<!-- <a class="dropdown-item "
											href="designerPorfile.jsp"> -->
										<form method="post" action="MemberServlet">
											<button class="btn">
												<div>
													<i class="icon-user-profile"></i>????????????
												</div>
											</button>
											<input type="hidden" name="memberNo"
												value="${memberVO.memberNo}"> <input type="hidden"
												name="action" value="portfolio_GetByNo">
										</form>
									</div>
									<div class="form-group custom-form__input">
										<form method="post" action="../index.html">
											<button class="btn">
												<div>
													<i class="icon-user-profile"></i>??????
												</div>
											</button>
										</form>
									</div>
								</div>

							</div>

						</div>
					</div>
					<!-- navbar cart dropdown -->
					<div class="" id="cartmenu" data-collapse="false"></div>
				</div>
				<!-- navbar user account icon -->
				<div class="main-navbar-action__btn nav-dropdown">
					<a class="dropdown-link" data-target="usermenu"> <i
						class="icon-user"></i>
					</a>
				</div>
				<!-- navbar cart icon -->
				<div class="main-navbar-action__btn nav-dropdown">
					<a class="dropdown-link" data-target="cartmenu"> <!-- <span
						class="cart-badge"></span>  --> <i class="icon-shopping-bag"></i>
					</a>
				</div>
				<!-- navbar actions content -->
			</div>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#mainNavbar" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="mainNavbar">
				<ul class="navbar-nav main-navbar">
					<li class="nav-item main-navbar__item dropdown"><a
						class="nav-link " href="./designer_protfolio/listAll.html">?????????</a>
					</li>
					<li class="nav-item main-navbar__item dropdown"><a
						class="nav-link " href="#">????????????</a></li>
					<li class="nav-item main-navbar__item dropdown"><a
						class="nav-link " href="./product/productListAll.html">??????</a></li>
					<li class="nav-item main-navbar__item dropdown"><a
						class="nav-link " href="#">??????</a></li>
					<!-- <li class="nav-item main-navbar__item dropdown">
                    <a class="nav-link " href="#" data-toggle="dropdown">????????????</a>
                </li> -->
					<li class="nav-item main-navbar__item"><a class="nav-link"
						href="contact.html">????????????</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- end main header navbar -->
	<!-- breadcrumb -->
	<div class="container header-mt">
		<div class="row">
			<div class="col-12">
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb custom-breadcrumb">
						<li class="breadcrumb-item"><a href="../index.html">??????</a></li>
						<li class="breadcrumb-item active" aria-current="page">????????????</li>
					</ol>
				</nav>
			</div>
		</div>
	</div>
	<!-- end breadcrumb -->
	<!-- main content -->
	<div class="main-content pb-80">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="nav flex-column nav-pills account-pills account-tabs"
						id="v-pills-tab" role="tablist" aria-orientation="vertical">
						<a class="nav-link active" id="v-pills-profile-tab"
							data-toggle="pill" href="#v-pills-profile" role="tab"
							aria-controls="v-pills-profile" aria-selected="true"> <span><i
								class="icon-user-profile"></i></span>????????????
						</a> <a class="nav-link"
							href="${pageContext.request.contextPath}/SelectOrder"> <span><i
								class='bx bx-shopping-bag'></i></span>????????????
						</a> <a class="nav-link" id="v-pills-wishlist-tab" data-toggle="pill"
							href="#v-pills-designorder" role="tab"
							aria-controls="v-pills-wishlist" aria-selected="false"> <span><i
								class='bx bx-file'></i></span>????????????
						</a>
						<%-- <form method="post"
									action="<%=request.getContextPath()%>/front-end/chat/intochatServlet"> 
							<label class="nav-link profile-info__action">
							
								<span><i class='bx bx-message-square-dots'></i> </span>?????????
								<input type="hidden" name="memberNo" value="${memberVO.memberNo}">
								<input type="submit" hidden>
								<button type="submit" class="btn"></button>
							
							</label>
						</form>  --%>
						<a class="nav-link" href="../index.html" role="tab"
							aria-selected="false"> <span><i class="icon-log-out"></i></span>??????
						</a>
					</div>
				</div>
				<div class="col-lg-9">
					<div class="tab-content account-content" id="v-pills-tabContent">
						<!-- profile tab -->
						<div class="tab-pane fade show active" id="v-pills-profile"
							role="tabpanel" aria-labelledby="v-pills-profile-tab">
							<!-- profile information -->
							<div class="row">
								<div class="col-12">
									<div class="profile-info profile-info--main">
										<div class="profile-info__row">
											<div class="profile-info__col">
												<span class="content"> <span>????????????</span> <span>${memberVO.memberAccount}</span>
												</span>
											</div>

										</div>
										<div class="profile-info__row">
											<div class="profile-info__col">
												<span class="content"> <span>????????????</span> <span
													class="profile-info__col--value ltr">${memberVO.memberName}</span>
												</span>
											</div>
											<div class="profile-info__col">
												<span class="content"> <span>??????</span> <span
													class="profile-info__col--value">${memberVO.nickName}</span>
												</span>
											</div>
										</div>
										<div class="profile-info__row">
											<div class="profile-info__col">
												<span class="content"> <span>??????</span> <span
													class="profile-info__col--value">${memberVO.birthDate}</span>
												</span>
											</div>
											<div class="profile-info__col">
												<span class="content"> <span>??????</span> <span>${memberVO.gender}</span>
												</span>
											</div>
										</div>
										<div class="profile-info__action">
											<button type="button" data-toggle="modal"
												data-target="#editProfileModal" class="btn">
												<span><i class="icon-edit"></i></span>??????????????????
											</button>
										</div>
									</div>
								</div>
							</div>
							<!-- end profile information -->

							<!-- edit profile -->
							<div class="modal fade profile-info__modal" id="editProfileModal"
								tabindex="-1" role="dialog"
								aria-labelledby="editProfileModalTitle" aria-hidden="true">
								<div class="modal-dialog modal-dialog-centered modal-lg"
									role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="editProfileModalTitle">??????????????????</h5>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body">
											<div class="card-body">

												<%-- ???????????? --%>
												<c:if test="${not empty errorMsgs}">
													<div class="mb-3">
														<ul class="list-unstyled mt-2">
															<li class="">
																<ul>
																	<c:forEach var="message" items="${errorMsgs}">
																		<li class="form-text" style="color: red">${message}</li>
																	</c:forEach>
																</ul>
															</li>
														</ul>
													</div>
												</c:if>
												<%-- /???????????? --%>

												<form method="post" action="MemberServlet"
													class="change-pass custom-form">
													<div class="mb-3">
														<label class="form-label" for="basic-default-fullname">????????????</label>
														<div>${memberVO.memberAccount}</div>
													</div>
													<div class="mb-3">
														<div class="form-group custom-form__input">
															<label class="form-label" for="memberPassword">??????</label>
															<div class="input-box password-box row">
																<input type="password" class="form-control"
																	name="memberPassword" id="memberPassword"
																	value="${memberVO.memberPassword}">
																<div class="input-box__icon ">
																	<span class="showhidepassword"><i
																		class="far fa-eye-slash"></i></span>
																</div>
															</div>
														</div>
													</div>
													<div class="mb-3 custom-form__input">
														<label class="form-label" for="memberName">????????????</label> <input
															type="text" class="form-control" id="memberName"
															name="memberName" value="${memberVO.memberName}" />
													</div>
													<div class="mb-3 custom-form__input">
														<label class="form-label" for="nickName">??????</label> <input
															type="text" class="form-control" id="nickName"
															name="nickName" value="${memberVO.nickName}" />
													</div>
													<div class="mb-3 custom-form__input">
														<label class="form-label" for="gender">??????</label>
														<div class="row">
															<div class="col-md">
																<c:choose>
																	<c:when test="${memberVO.gender =='??????' }">
																		<div class="form-check form-check-inline mt-3">
																			<input class="form-check-input" type="radio"
																				name="gender" id="inlineRadio1" value="??????" checked />
																			<label class="form-check-label" for="inlineRadio1"
																				style="font-size: 15px;">??????</label>
																		</div>
																		<div class="form-check form-check-inline">
																			<input class="form-check-input" type="radio"
																				name="gender" id="inlineRadio2" value="??????" /> <label
																				class="form-check-label" for="inlineRadio2"
																				style="font-size: 15px;">??????</label>
																		</div>
																		<div class="form-check form-check-inline">
																			<input class="form-check-input" type="radio"
																				name="gender" id="inlineRadio3" value="??????" /> <label
																				class="form-check-label" for="inlineRadio3"
																				style="font-size: 15px;">????????????</label>
																		</div>
																	</c:when>
																	<c:when test="${memberVO.gender =='??????' }">
																		<div class="form-check form-check-inline mt-3">
																			<input class="form-check-input" type="radio"
																				name="gender" id="inlineRadio1" value="??????" /> <label
																				class="form-check-label" for="inlineRadio1"
																				style="font-size: 15px;">??????</label>
																		</div>
																		<div class="form-check form-check-inline">
																			<input class="form-check-input" type="radio"
																				name="gender" id="inlineRadio2" value="??????" checked />
																			<label class="form-check-label" for="inlineRadio2"
																				style="font-size: 15px;">??????</label>
																		</div>
																		<div class="form-check form-check-inline">
																			<input class="form-check-input" type="radio"
																				name="gender" id="inlineRadio3" value="??????" /> <label
																				class="form-check-label" for="inlineRadio3"
																				style="font-size: 15px;">????????????</label>
																		</div>
																	</c:when>
																	<c:otherwise>
																		<div class="form-check form-check-inline mt-3">
																			<input class="form-check-input" type="radio"
																				name="gender" id="inlineRadio1" value="??????" /> <label
																				class="form-check-label" for="inlineRadio1"
																				style="font-size: 15px;">??????</label>
																		</div>
																		<div class="form-check form-check-inline">
																			<input class="form-check-input" type="radio"
																				name="gender" id="inlineRadio2" value="??????" /> <label
																				class="form-check-label" for="inlineRadio2"
																				style="font-size: 15px;">??????</label>
																		</div>
																		<div class="form-check form-check-inline">
																			<input class="form-check-input" type="radio"
																				name="gender" id="inlineRadio3" value="??????" checked />
																			<label class="form-check-label" for="inlineRadio3"
																				style="font-size: 15px;">????????????</label>
																		</div>
																	</c:otherwise>
																</c:choose>
															</div>
														</div>
													</div>
													<div class="mb-3 custom-form__input">
														<label class="form-label" for="nickName">??????</label>
														<div class="">
															<input class="form-control" type="date"
																value="${memberVO.birthDate}" id="html5-date-input"
																name="birthDate" />
														</div>
													</div>

													<div class="modal-footer custom-form__btn">
														<button type="button" class="btn btn-close"
															data-dismiss="modal">??????</button>
														<div>
															<button type="submit" class="btn btn-green">??????</button>
															<input type="hidden" name="action" value="updatemember">
															<input type="hidden" name="memberNo"
																value="${memberVO.memberNo}"> <input
																type="hidden" name=memberAccount
																value="${memberVO.memberAccount}"> <input
																type="hidden" name="activaction"
																value="${memberVO.activaction}">
														</div>
													</div>
												</form>
											</div>
										</div>

									</div>
								</div>
							</div>
							<!-- end edit profile -->
						</div>

						<!-- DesignerOrder tab -->
						<div class="tab-pane fade" id="v-pills-designorder"
							role="tabpanel" aria-labelledby="v-pills-wishlist-tab">
							<div class="order-table order-table__collapse">
								<div class="panel">
									<div class="panel-body">
										<table
											class="table table-bordered bordered table-striped table-condensed datatable">
											<thead>
												<tr>
													<th>????????????</th>
													<th>???????????????</th>
													<th>???????????????</th>
													<th>????????????</th>
													<th>????????????</th>
													<th>????????????</th>
													<th>??????</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="desOrderList" items="${desOrderList}">
													<tr>
														<td>
															<div class="card-body">
																<div class="demo-vertical-spacing">
																	<strong>${desOrderList.orderNo} </strong>
																</div>
															</div>
														</td>
														<td>
															<div class="card-body">
																<div class="demo-vertical-spacing">
																	${desOrderList.designerVO.designerName}</div>
															</div>
														</td>

														<%-- <td>${desOrderList.quotationStatus}</td> --%>
														<c:choose>
															<c:when test="${desOrderList.quotationStatus =='????????????' }">
																<td>
																	<div class="card-body">
																		<div class="demo-vertical-spacing">????????????</div>
																	</div>
																</td>
															</c:when>
															<c:when test="${desOrderList.quotationStatus =='?????????' }">
																<td>
																	<div class="card-body">
																		<div class="demo-vertical-spacing">?????????</div>
																	</div>
																</td>
															</c:when>
															<c:when test="${desOrderList.quotationStatus =='????????????' }">
																<td>
																	<div class="card-body">
																		<div class="demo-vertical-spacing">????????????</div>
																	</div>
																</td>
															</c:when>
															<c:otherwise>
																<td>
																	<div class="card-body">
																		<div class="demo-vertical-spacing">?????????</div>
																	</div>
																</td>
															</c:otherwise>
														</c:choose>
														<c:choose>
															<c:when test="${desOrderList.contractStatus =='????????????' }">
																<td>
																	<div class="card-body">
																		<div class="demo-vertical-spacing">????????????</div>
																	</div>
																</td>
															</c:when>
															<c:when test="${desOrderList.contractStatus =='?????????' }">
																<td>
																	<div class="card-body">
																		<div class="demo-vertical-spacing">?????????</div>
																	</div>
																</td>
															</c:when>
															<c:when test="${desOrderList.contractStatus =='????????????' }">
																<td>
																	<div class="card-body">
																		<div class="demo-vertical-spacing">????????????</div>
																	</div>
																</td>
															</c:when>
															<c:otherwise>
																<td>
																	<div class="card-body">
																		<div class="demo-vertical-spacing">????????????</div>
																	</div>
																</td>
															</c:otherwise>
														</c:choose>

														<c:choose>
															<c:when test="${desOrderList.contractStatus =='????????????' }"> 
																<td>
																	<div class="card-body">
																		<div class="demo-vertical-spacing"
																			style="width: 50px;">
																			<div class="progress">
																			<c:set var="orderPhase" value="${desOrderList.designerOrderPhaseVO.orderPhase}"></c:set>
																			<c:set var="totalOrderPhase" value="${desOrderList.designerOrderPhaseVO.totalOrderPhase}"></c:set>
																			<c:set var="orderPhasePercentage" value="${orderPhase/totalOrderPhase}"></c:set>
																				<div class="progress-bar" role="progressbar"
																					style="width: <fmt:formatNumber type="percent" value="${orderPhasePercentage}" maxFractionDigits="1" />" aria-valuenow="50"
																					aria-valuemin="0" aria-valuemax="100">
																				<fmt:formatNumber type="percent" value="${orderPhasePercentage}" maxFractionDigits="1" /></div>
																			</div><fmt:formatNumber type="percent" value="${orderPhasePercentage}" maxFractionDigits="1" />
																		</div>
																	</div>
																</td>
															</c:when> 
															<c:otherwise>
																<td>
																	<div class="card-body">
																		<div class="demo-vertical-spacing">????????????</div>
																	</div>
																</td>
															</c:otherwise>

														</c:choose>

														<c:choose>
															<c:when test="${desOrderList.finishStatus =='true' }">
																<td>
																	<div class="card-body">
																		<div class="demo-vertical-spacing">?????????</div>
																	</div>
																</td>
															</c:when>
															<c:otherwise>
																<td>
																	<div class="card-body">
																		<div class="demo-vertical-spacing">?????????</div>
																	</div>
																</td>
															</c:otherwise>
														</c:choose>
														<td>
															<form method="post" action="MemberServlet">
																<label class="btn btn-primary" tabindex="0"
																	style="margin-top: 10px;"> <span
																	class="d-none d-sm-block">??????</span> <i
																	class="fa-regular fa-pen-to-square d-block d-sm-none"></i>
																	<input type="submit" class="account-file-input" hidden />
																	<input type="hidden" name="orderNo"
																	value="${desOrderList.orderNo}"> <input
																	type="hidden" name="memberNo"
																	value="${desOrderList.memberNo}"> <input
																	type="hidden" name="action" value="desOrder_GetOne">
																</label>
															</form>
														</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end main content -->
	<!-- footer -->
	<footer class="footer">
		<div class="container">
			<div class="footer__top-row">
				<div class="row">
					<div class="col-lg-4 col-md-6 footer__content">
						<div class="footer-logo">
							<img src="../images/MatDesignLogo.png" alt="">
						</div>
						<p></p>

					</div>
					<div class="col-lg-2 col-md-6 footer__content">
						<h5 class="footer-heading">????????????</h5>
						<ul class="footer-list">
							<li class="footer-list__item"><a href="index.html">????????????</a></li>
						</ul>
					</div>
					<div class="col-lg-3 col-md-6 footer__content">
						<h5 class="footer-heading">????????????</h5>
						<ul class="footer-list">
							<li class="footer-list__item"><a href="#">?????????</a></li>
							<li class="footer-list__item"><a href="#">????????????</a></li>
							<li class="footer-list__item"><a href="#">??????</a></li>
							<li class="footer-list__item"><a href="#">??????</a></li>
						</ul>
					</div>
					<div class="col-lg-3 col-md-6 footer__content">
						<h5 class="footer-heading">Keep in touch</h5>
						<ul class="footer-list footer-list-info">
							<li class="footer-list__item"><span><i
									class="fas fa-envelope"></i></span> <span>MatDesign@gmail.com</span></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="copyright">
				<p>&#169; copyright 2022. Designed by MatDesign</p>
			</div>
		</div>
	</footer>
	<!-- end footer -->
	<!-- scroll up btn -->
	<a id="back-to-top"></a>
	<!-- end scroll up btn -->


	<!-- All Jquery -->
	<script type="text/javascript" src="../js/jquery.min.js"></script>
	<script type="text/javascript" src="../js/popper.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
	<!-- owl carousel js -->
	<script type="text/javascript" src="../js/owl.carousel.min.js"></script>
	<!-- Jquery ui -->
	<script type="text/javascript" src="../js/jquery-ui.min.js"></script>
	<!-- light box js -->
	<script type="text/javascript" src="../js/lightbox.min.js"></script>
	<!-- typeahead js -->
	<script type="text/javascript" src="../js/typeahead.jquery.min.js"></script>
	<!-- master zoom image js -->
	<script type="text/javascript" src="../js/jquery.zoom.min.js"></script>
	<!-- countdown js -->
	<script type="text/javascript" src="../js/countdown.jquery.min.js"></script>
	<!-- nice select js -->
	<script type="text/javascript" src="../js/nice-select.min.js"></script>
	<!-- wow js -->
	<script type="text/javascript" src="../js/wow.min.js"></script>
	<!-- custom js -->
	<script type="text/javascript" src="../js/custom.js"></script>


</body>
</html>