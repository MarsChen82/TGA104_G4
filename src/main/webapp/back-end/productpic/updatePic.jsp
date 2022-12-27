<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.tibame.productpic.model.*"%>

<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>�ӫ~�Ϥ��ק� - update_pic_input.jsp</title>

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
				<h3>�ӫ~�Ϥ��ק� - update_pic_input.jsp</h3>
				<h4>
					<a href="/TGA104_G4/back-end/product/selectProduct_page.jsp"><img
						src="/TGA104_G4/back-end/product/images/back.png" width="100"
						height="32" border="0">�^����</a>
				</h4>
			</td>
		</tr>
	</table>

	<h3>��ƭק�:</h3>

	<%-- ���~��C --%>
	<c:if test="${not empty errorMsgs}">
		<font style="color: red">�Эץ��H�U���~:</font>
		<ul>
			<c:forEach var="message" items="${errorMsgs}">
				<li style="color: red">${message}</li>
			</c:forEach>
		</ul>
	</c:if>
	
		<form action="/TGA104_G4/PicServlet" method=post enctype="multipart/form-data">
			<table>
                <tr>
					<td>�ӫ~�Ϥ��s��:<font color=red><b>*</b></font></td>
					<td><input type="hidden" name="productPicNo" value ="${productPicVO.productPicNo}" size="45" readonly="readonly"/>
		${productPicVO.productPicNo}
					</td>
				</tr>
				<tr>
					<td>�ӫ~�s��:<font color=red><b>*</b></font></td>
					<td><input type="TEXT" name="productNo" size="45" value="${productPicVO.productNo}" /></td>
				</tr>
				<tr>
	    			<td>�W�ǹϤ�:</td>
					<td>
					<input type="file" name="pic" value="${productPicVO.pic}" />
					</td>
			    </tr>
			</table>
			<input type="hidden" name="action" value="updatePic">
			<input type="hidden" name="productPicNo" value="${productPicVO.productPicNo}">
			<input type="submit" value="�W��" name="upload" />
		</form>
</body>


</html>