<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.* , java.sql.*, com.cart.model.*, com.productorder.model.*"%>
<%
User auth = (User)request.getSession().getAttribute("auth");
List<ProductOrderVO> orders = null;
if(auth!=null){
	request.setAttribute("auth", auth);
//     orders = new ProductOrderJDBCDAO().useOrders(auth.getUserNo());
	   orders = new ProductOrderJDBCDAO().userOrders(auth.getUserNo());
}else{
	response.sendRedirect("http://localhost:8080/TGA104_G4/front-end/cart/login.jsp");
}

%>

<%
ShopProduct shopProduct = (ShopProduct) request.getAttribute("shopProduct");

Cart cart = (Cart) request.getAttribute("cart");
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart_list"); 
List<Cart> cartProduct = null;
if(cart_list != null){
	ShopProductService shopProductService = new ShopProductService();
	cartProduct = shopProductService.getCartProducts(cart_list);
	request.setAttribute("cart_list", cart_list);
}
%>
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>order.jsp</title>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
 <style type="text/css">
 .table tbody td{
 	vartical-align: middle;
 }
 
 .btn-incre, .btn-decre{
 	box-shadow: none;
 	font-size: 18px;
 	color: #ff7c07;	
 }
 
 .btn-primary {
    color: #fff;
    background-color: #ff7c07;
    border-color: #ff7c07;
}
 </style>
</head>
<body bgcolor="#FFFFFF">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
<div class="container">
   <a class="navbar-brand" href="http://localhost:8080/TGA104_G4/front-end/cart/shopProduct.jsp">
  	<img src="/TGA104_G4/front-end/order/images/MatDesign.JPG" alt="" width="100%" height="45">
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item active"><a class="nav-link" href="http://localhost:8080/TGA104_G4/front-end/cart/shopProduct.jsp">首頁</a></li>
      <li class="nav-item"><a class="nav-link" href="http://localhost:8080/TGA104_G4/front-end/cart/cart.jsp">購物車<span class="badge badge-danger px-1">${cart_list.size()}</span></a></li>
       <% 
      if(auth != null){%>
      	<li class="nav-item"><a class="nav-link" href="http://localhost:8080/TGA104_G4/front-end/order/order.jsp">訂單</a></li>
        <li class="nav-item"><a class="nav-link" href="/TGA104G4/LogoutServlet">登出</a></li>
      <%}else{%>
      	<li class="nav-item"><a class="nav-link" href="http://localhost:8080/TGA104_G4/front-end/cart/login.jsp">登入</a></li>
      <%}
      %>
    </ul>
  </div>
  </div>
</nav>
<div class="container">
<div class="card-header my-3">所有訂單</div>
	<table class="table table-light">
		<thead> 
			<tr>
				<th scope="col">日期</th>
				<th scope="col">收件人</th>
				<th scope="col">收件人電話</th>
				<th scope="col">收件人地址</th>
<!-- 				<th scope="col">商品名稱</th> -->
				<th scope="col">總數量</th>
				<th scope="col">總價</th>
				<th scope="col">訂單狀態</th>
				<th scope="col">訂單明細</th>
				<th scope="col">取消訂單</th>
			</tr>
		</thead>
		<tbody>
		<%
		if(orders != null){
			for(ProductOrderVO o:orders){%>
			<tr>
				<td><%= o.getPaidDate()%></td>
				<td><%= o.getReceiverName()%></td>
				<td><%= o.getReceiverPhone()%></td>
				<td><%= o.getReceiverAddress()%></td>
<%-- 				<td><%= o.getProductName()%></td> --%>
<%-- 				<td><%= o.getQuantity()%></td> --%>
                <td><%= o.getTotalQTY()%></td>
<%-- 				<td><%= o.getPrice()%></td> --%>
                <td><%= o.getTotalAmount()%></td>
                <td><%= o.getOrderStatus()%></td>
                <td><a class="btn btn-sm btn-primary" href="/TGA104_G4/OrderDetailServlet?id=<%= o.getOrderNo() %>">查看</a></td>
				<td><a class="btn btn-sm btn-danger" href="/TGA104_G4/CancelOrderServlet?id=<%= o.getOrderNo() %>">取消</a></td>
			</tr>	
			<%}
		}
		%>
		</tbody>
	</table> 	
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"></script>	
</body>
</html>