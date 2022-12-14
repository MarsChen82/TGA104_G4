<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.productpic.model.*"%>

<%
ProductPicVO productPicVO = (ProductPicVO) request.getAttribute("productPicVO"); //EmpServlet.java (Concroller) 存入req的empVO物件 (包括幫忙取出的empVO, 也包括輸入資料錯誤時的empVO物件)
%>

<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>商品圖片修改 - update_pic_input.jsp</title>

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
	width: 450px;
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

</head>
<body bgcolor='white'>

	<table id="table-1">
		<tr>
			<td>
				<h3>商品圖片修改 - update_pic_input.jsp</h3>
				<h4>
					<a href="/TGA104G4/back-end/product/selectProduct_page.jsp"><img
						src="/TGA104G4/back-end/product/images/back.png" width="100"
						height="32" border="0">回首頁</a>
				</h4>
			</td>
		</tr>
	</table>

	<h3>資料修改:</h3>

	<%-- 錯誤表列 --%>
	<c:if test="${not empty errorMsgs}">
		<font style="color: red">請修正以下錯誤:</font>
		<ul>
			<c:forEach var="message" items="${errorMsgs}">
				<li style="color: red">${message}</li>
			</c:forEach>
		</ul>
	</c:if>
	
		<form action="/TGA104G4/PicServlet" method=post enctype="multipart/form-data">
			<table>
                <tr>
					<td>商品圖片編號:<font color=red><b>*</b></font></td>
					<td><%=productPicVO.getProductPicNo()%></td>
				</tr>
				<tr>
					<td>商品編號:<font color=red><b>*</b></font></td>
					<td><input type="TEXT" name="productNo" size="45" value="<%=productPicVO.getProductNo()%>" /></td>
				</tr>
				<tr>
	    			<td>上傳圖片:</td>
					<td>
					<input type="file" name="pic" value="<%=productPicVO.getPic()%>" />
					</td>
			    </tr>
			</table>
			<input type="hidden" name="action" value="updatePic">
			<input type="hidden" name="productPicNo" value="<%=productPicVO.getProductPicNo()%>">
			<input type="submit" value="上傳" name="upload" />
		</form>
</body>


</html>