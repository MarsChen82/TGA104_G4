<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.productpic.model.*"%>
<%@ page import="com.product.model.*"%>
<%-- �����m�߱ĥ� EL ���g�k���� --%>

<html>
<head>
<title>�Ҧ��ӫ~�Ϥ���� - listAllProduct.jsp</title>

<style>
  table {
	width: 800px;
	background-color: white;
	margin-top: 5px;
	margin-bottom: 5px;
  }
  table, th, td {
    border: 1px solid #CCCCFF;
  }
  th, td {
    padding: 5px;
    text-align: center;
  }
</style>

</head>
<body bgcolor='white'>

<%-- ���~��C --%>
	<c:if test="${not empty errorMsgs}">
		<font style="color: red">�Эץ��H�U���~:</font>
		<ul>
			<c:forEach var="message" items="${errorMsgs}">
				<li style="color: red">${message}</li>
			</c:forEach>
		</ul>
	</c:if>


<h3>�Ҧ��ӫ~�Ϥ� - listAllPic.jsp</h3>


<jsp:useBean id="productPicSrc" scope="page" class="com.productpic.model.ProductPicService" />
<a href='http://localhost:8080/TGA104_G4/back-end/productpic/addPic.jsp'>�s�W�Ϥ�</a>

<table>
	<tr>
		<th>�ӫ~�Ϥ��s��</th>
		<th>�ӫ~�s��</th>
		<th>�ӫ~�Ϥ�</th>
		<th>�ק�</th>
	</tr>

	<c:forEach var="productPicVO" items="${list}">
			<td>${productPicVO.productPicNo}</td>
			<td>${productPicVO.productNo}</td>
			<td>
			<img src="<%=request.getContextPath()%>/PicAllReadServlet?productPicNo=${productPicVO.productPicNo}"
     			 alt="image" style="width: 100px; height: 100px;">
     		</td>
     		<td>
			  <FORM METHOD="post" ACTION="http://localhost:8080/TGA104_G4/PicServlet" style="margin-bottom: 0px;">
			     <input type="submit" value="�ק�">
			     <input type="hidden" name="productPicNo"  value="${productPicVO.productPicNo}">
			     <input type="hidden" name="action"	value="getProductPic_For_Update">
			  </FORM>
			</td>
            <tr></tr>
	</c:forEach>

</table>
<a href="http://localhost:8081/TGA104G4/back-end/product/product.jsp">�^����</a>
</body>
</html>