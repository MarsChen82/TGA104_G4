<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
</head>

<body>
	<!-- main header navbar -->
	<nav class="navbar navbar-expand-lg navbar-light custom-navbar"
		id="mainMenu">
		<div class="container">
			<a class="navbar-brand" href="../index.html"> <img
				src="../images/MatDesignLogo.png" alt="">
			</a>
			<!--  navbar actions -->
			<div class="main-navbar-action">
				<div id="mainNavbarDropdown">
					<!-- navbar user account dropdown -->
					<div class="dropdown-wrapper" id="usermenu" data-collapse="false">
						<div class="account-wrapper">
							<!-- login form wrapper -->

							<div class="account-wrapper__content">
								<form class="custom-form">
									<div class="custom-form__btn">
										<a href="">
											<button type="submit" class="btn submit-btn">Login</button>
									</div>
									<div class="form-group custom-form__input"></div>
									<div class="custom-form__btn">
										<a href=""></a>
										<button type="submit" class="btn submit-btn">Login</button>
									</div>
								</form>
							</div>
							<!-- account links when user is logged in-->
							<!--                    <a class="dropdown-item" href="account.html#v-pills-profile-tab"><span><i-->
							<!--                            class="icon-user-profile"></i></span>Profile</a>-->
							<!--                    <a class="dropdown-item" href="account.html#v-pills-order-tab"><span><i-->
							<!--                            class="icon-shopping-basket"></i></span>Orders</a>-->
							<!--                    <a class="dropdown-item" href="account.html#v-pills-address-tab"><span><i-->
							<!--                            class="icon-sign"></i></span>Addresses</a>-->
							<!--                    <a class="dropdown-item" href="account.html#v-pills-wishlist-tab"><span><i-->
							<!--                            class="icon-wish-list"></i></span>wishlist</a>-->
							<!--                    <a class="dropdown-item" href="#"><span><i class="icon-log-out"></i></span>Log out</a>-->

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
					<a class="dropdown-link" data-target="cartmenu"> <span
						class="cart-badge">2</span> <i class="icon-shopping-bag"></i>
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
						class="nav-link " href="../designer_protfolio/listAll.html">?????????</a>
					</li>
					<li class="nav-item main-navbar__item dropdown"><a
						class="nav-link " href="#">????????????</a></li>
					<li class="nav-item main-navbar__item dropdown"><a
						class="nav-link " href="#">??????</a></li>
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
				<div class="col-lg-6 col-md-8 col-12 mx-auto">
					<div class="custom-form custom-form--box">
						<h3 class="custom-form__title">????????????</h3>

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

						<form method="post" action="MemberSignup">
							<div class="form-group custom-form__input">
								<label for="memberAccount">????????????(??????)</label> <input type="email"
									required="required" class="form-control" id="memberAccount"
									placeholder="" name="memberAccount">
							</div>
							<div class="form-group custom-form__input">
								<label for="memberPassword">??????</label>
								<div class="input-box password-box">
									<input type="password" class="form-control ltr"
										required="required" id="memberPassword" placeholder=""
										name="memberPassword">
									<div class="input-box__icon">
										<span class="showhidepassword"><i
											class="far fa-eye-slash"></i></span>
									</div>
								</div>
							</div>
							<div class="form-group custom-form__input">
								<label for="confirmedPassword">????????????</label>
								<div class="input-box password-box">
									<input type="password" class="form-control ltr"
										required="required" id="confirmedPassword" placeholder=""
										name="confirmedPassword">
									<div class="input-box__icon">
										<span class="showhidepassword"><i
											class="far fa-eye-slash"></i></span>
									</div>
								</div>
							</div>
							<div class="form-group custom-form__input">
								<label for="memberName">????????????</label> <input type=text
									required="required" class="form-control ltr" id="memberName"
									placeholder="" name="memberName">
							</div>
							<div class="form-group custom-form__input">
								<label for="nickName">????????????</label> <input type=text
									required="required" class="form-control ltr" id="nickName"
									placeholder="" name="nickName">
							</div>
							<div class="form-group custom-form__input">
								<label>????????????</label>
								<div class="row">
									<div class="col-md">
										<div class="form-check form-check-inline mt-3">
											<input class="form-check-input" type="radio" name="gender"
												id="inlineRadio1" value="??????" /> <label
												class="form-check-label" for="inlineRadio1"
												style="font-size: 15px;">??????</label>
										</div>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="gender"
												id="inlineRadio2" value="??????" /> <label
												class="form-check-label" for="inlineRadio2"
												style="font-size: 15px;">??????</label>
										</div>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="radio" name="gender"
												id="inlineRadio3" value="??????" /> <label
												class="form-check-label" for="inlineRadio3"
												style="font-size: 15px;">????????????</label>
										</div>
									</div>
								</div>
							</div>
							<div class="form-group custom-form__input">
								<label for="nickName">????????????</label>
								<div class="">
									<input class="form-control" type="date" value=""
										id="html5-date-input" name="birthDate" />
								</div>
							</div>
							<div class="form-group custom-form__input">
								<label for="valistr">?????????</label>
								<div >
									<input type="text" name="valistr" id="valistr"
									onblur="checkNull('valistr','????????????????????????')"> 
									<img
									id="yzm_img"
									src="${pageContext.request.contextPath}/ValiImgServlet"
									style="cursor: pointer" onclick="changeYZM(this)" /> 
									<span id="valistr_msg"></span>
									<input type="hidden" name="valistrin" value="${valistr}">
								</div> 
							</div>
							<div class="forgot-pass">
								<a href=""> </a>
							</div>
							<div class="custom-form__btn">
								<button type="submit" class="btn submit-btn">??????</button>
								<input type="hidden" name="action" value="memberSignup">
							</div>
							<div class="custom-form__footer">
								<!-- login/sign up with social media -->

								<!-- form footer -->
								<div class="custom-form__footer--link">
									<h6>???????????????</h6>
									<a href="login.jsp" class="btn">??????</a>
								</div>
							</div>
						</form>
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

	<!-- ????????? -->
	<script>
	    <!-- ???????????????????????? -->
	    function checkNull(name,msg){
	        setMsg(name,"")
	        var v = document.getElementsByName(name)[0].value;
	        if(v == ""){
	            setMsg(name,msg)
	            return false;
	        }
	        return true;
	    }     
	    <!-- ?????????????????????????????? -->
	    function setMsg(name,msg){
	        var span = document.getElementById(name+"_msg");
	        span.innerHTML="<font color='red'>"+msg+"</font>";
	    }
	    <!-- ????????????????????? --> 
	    function changeYZM(imgObj){
	        imgObj.src = "${pageContext.request.contextPath}/ValiImgServlet?time="+"${java.util.Date.getTime()}";
	    }
	</script>
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