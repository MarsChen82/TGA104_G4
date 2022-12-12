<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.designer.model.*"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<title>設計師註冊頁 -addDesigner.jsp</title>


<meta charset="utf-8" />
<title>MatDesign</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="Free HTML Templates" name="keywords" />
<meta content="Free HTML Templates" name="description" />

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon" />

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap"
	rel="stylesheet" />

<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet" />

<!-- Libraries Stylesheet -->
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet" />

<!-- Customized Bootstrap Stylesheet -->
<link href="css/style.css" rel="stylesheet" />
<link href="css/MatDesign.css" rel="stylesheet" />

  <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
      crossorigin="anonymous"
    ></script>


<style>
table#table-1 {
	background-color: #CCCCFF;
	border: 2px solid black;
	text-align: center;
}

table#table-1 h4 {
	color: red;
	display: block;
	margin-bottom: 1px;
}

h4 {
	color: blue;
	display: inline;
}
</style>

<style>
table {
	width: 800px;
	background-color: white;
	margin-top: 1px;
	margin-bottom: 1px;
}

table, th, td {
	border: 0px solid #CCCCFF;
}

th, td {
	padding: 1px;
}
</style>


<style>
#preview {
	border: 1px solid lightgray;
	display: inline-block;
	width: 150px;
	min-height: 200px;
	position: relative;
	

	
}

#preview span.text {
	position: absolute;
	display: inline-block;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
	z-index: -1;
	color: lightgray;
}

#preview img.preview_img {
	width: 100%;
}


.wrap{
    margin: auto;
    margin-left: 500px;
}
.wrap1{
    margin: auto;
    margin-left: 300px;
}


#block1{
margin-left: 200px;
}
#block2{
margin-left: 500px;
}

img{
    max-width:100%; /*不使用width:100% 是因避免圖片解析度不好，隨父元素被放大時會糊掉*/
    height:auto;
}

.intro{
margin-left: 200px;

}
/*
.h2regisiter{
margin-left: 200px;
}
*/


</style>

</head>
<body bgcolor='white'>
	
	<!-- Topbar Start -->
	<div class="container-fluid d-none d-lg-block">
		<div class="row align-items-center py-4 px-xl-5">
			<div class="modal fade" id="loginModal">
				<div class="modal-dialog">
					<div class="modal-content">
						<!-- Registration Start -->
						<div class="container-fluid bg-registration py-5"
							style="margin: 30px 0">
							<div class="col-lg-5">
								<div id="cardborder" class="card border-0">
									<!-- tab標籤開始 -->
									

									<!-- tab標籤結束 -->
									<div class="card-body rounded-bottom bg-primary p-5"><!-- 動這行會影響到左上角LOGO -->
							
										<!-- Footer -->
										<div class="modal-footer"><!-- 動這行會影響到左上角LOGO -->
											<div class="signup"><!-- 動這行會影響到左上角LOGO -->
												
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Registration End -->
					</div>
				</div>
			</div>

			<div class="col-lg-0">
				<a href="index.jsp" class="text-decoration-none">
					<h1 class="m-0">
						<span class="text-primary">M</span>atDesign
					</h1>
				</a>
			</div>

		</div>
	</div>
	<!-- Topbar End -->

	<!-- Navbar Start -->
	<div class="container-fluid">
		<div class="row border-top px-xl-5">

			<div class="col-lg-9">
				<nav
					class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
					<a href="" class="text-decoration-none d-block d-lg-none">
						<h1 class="m-0">
							<span class="text-primary">M</span>atDesign
						</h1>
					</a>
					<button type="button" class="navbar-toggler" data-toggle="collapse"
						data-target="#navbarCollapse">
						<span class="navbar-toggler-icon"></span>
					</button>
				</nav>
			</div>
		</div>
	</div>
	<!-- Navbar End -->

	<%-- 錯誤表列 --%>
	<c:if test="${not empty errorMsgs}">
		<font style="color: red">請修正以下錯誤:</font>
		<ul>
			<c:forEach var="message" items="${errorMsgs}">
				<li style="color: red">${message}</li>
			</c:forEach>
		</ul>
	</c:if>
	
		


<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/front-end/designer/designer.do"  enctype="multipart/form-data">
<div id="container">
     <!-- <div class="h2regisiter"><h2 >設計師註冊</h2></div> -->
     <div style="text-align: center;"><h2 >設計師註冊</h2></div>  
   <div class="wrap">
  
        <div id="preview">
			<span class="text">預覽圖</span>
		</div> 
   </div>
   <br>
<div id="block1">
<table>
	<tr>
		<td>帳號:</td>
		<td><input type="email" name="designerAccount" size="45" 
			 value="${param.designerAccount}"/></td>
	</tr>
	<tr>
		<td>密碼:</td>
		<td><input type="password" name="designerPassword" size="45"
			 value="${param.designerPassword}"/></td>
	</tr>

	<tr>
		<td>姓名:</td>
		<td><input type="TEXT" name="designerName" size="45"
			 value="${param.designerName}"/></td>
	</tr>
	<tr>
		<td>公司:</td>
		<td><input type="TEXT" name="designerCompany" size="45"
			 value="${param.designerCompany}"/></td>
	</tr>
	
	<tr>
		<td>手機號碼:</td>
		<td><input type="TEXT" name="phone" size="45"
			 value="${param.phone}"/></td>
	</tr>
	
	<tr>
		<td>設計師照片上傳</td>
		<td><input type="file" name="designerPic" id="p_file">
	</tr>
	
	</table>
  <br>
  </div>
  
  <table class=intro>
    <tr>
      <td>簡介</td>
    </tr>
  </table>
  <div class="wrap1">
	 <textarea rows="10" cols="60" placeholder="關於我!" name="designerDetail"></textarea>
  </div>

	
		    
		

<div id="block2">
<input type="hidden" name="action" value="insertdesigner">
<input type="submit" value="送出註冊資料">
</div>
</div>

</FORM>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script src="js/MatDesign.js"></script>


</body>
</html>