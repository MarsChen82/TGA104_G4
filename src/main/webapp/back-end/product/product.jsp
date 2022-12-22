<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.product.model.*"%>
<%@ page import="com.productpic.model.*"%>


<%
ProductPicService productPicService = new ProductPicService();
    
    List<Map<String, Object>> list = productPicService.listAllProduct();
    pageContext.setAttribute("list",list);
%>
<%
  ProductPicVO productPicVO = (ProductPicVO) request.getAttribute("productPicVO"); //EmpServlet.java (Concroller) �s�Jreq��empVO���� (�]�A�������X��empVO, �]�]�A��J��ƿ��~�ɪ�empVO����)
%>


<html>
<head>
<title>�Ҧ��ӫ~��� - product.jsp</title>


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
<h3>�Ҧ��ӫ~��� - product.jsp</h3>
<a href='http://localhost:8080/TGA104_G4/back-end/producttype/listAllProductType.jsp'>��ܩҦ��ӫ~���O</a><br>
<a href='http://localhost:8080/TGA104_G4/back-end/product/listAllProduct.jsp'>��ܩҦ��ӫ~</a><br>
<a href='http://localhost:8080/TGA104_G4/back-end/productpic/listAllPic.jsp'>��ܩҦ��ӫ~�Ϥ�</a>

<table>
	<tr>
		<th>�ӫ~�s��</th>
		<th>�ӫ~���O�W��</th>
		<th>�ӫ~�W��</th>
		<th>�ӫ~�w�s�q</th>
		<th>�ӫ~���</th>
		<th>�ӫ~�y�z</th>
		<th>�ӫ~���A</th>
		<th>�ӫ~�Ϥ�</th>
		<th>�޲z���s��</th>
		
	</tr>
	<c:forEach var="productPicVO" items="${list}">
		<tr>
			<td>${productPicVO.productNo}</td>
			<td>${productPicVO.productTypeName}</td>
			<td>${productPicVO.productName}</td>
			<td>${productPicVO.stock}</td>
			<td>${productPicVO.price}</td>
			<td>${productPicVO.productDescription}</td> 
			<td>${productPicVO.productStatus}</td>
			<td>
				<img src="<%=request.getContextPath()%>/PicReadServlet?productNo=${productPicVO.productNo}"
     			     alt="image" style="width: 100px; height: 100px;">
     		</td>
			<td>${productPicVO.adminNo}</td>
		</tr>
	</c:forEach>
</table>

</body>
</html>