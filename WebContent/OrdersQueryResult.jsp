<%@page import="com.lld.model.carTable"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-inverse nav-stacked" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<a href="main.jsp" class="navbar-brand">LEMS快递物流管理系统</a>
		</div>
		<div id="navbar" class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">订单管理<span class="caret">
							<ul class="dropdown-menu" role="menu">
								<li><a href="orders_add.jsp">增加订单</a></li>
								<li><a href="orders_modify.jsp">修改订单</a></li>
							</ul>
					</span>
				</a></li>
				<li><a href="orders_query.jsp">订单查询</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">车辆管理<span class="caret">
							<ul class="dropdown-menu" role="menu">
								<li><a href="car_add.jsp">增加车辆</a></li>
								<li><a href="car_modify.jsp">修改车辆</a></li>
							</ul>
					</span>
				</a></li>
				<li><a href="car_query.jsp">车辆查询</a></li>
				<li><a href="#"></a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right row">
				<li><a href="register.jsp">注册</a></li>
				<li><a href="password.jsp">忘记密码</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<jsp:useBean id="orders" class="com.lld.model.ordersTable"></jsp:useBean>
	<jsp:useBean id="ordersservice" class="com.lld.service.ordersService"></jsp:useBean>
	<jsp:setProperty property="*" name="orders" />
	<%
		int id = orders.getOrders_id();
		orders = ordersservice.queryOrdersByOrders_Id(id);
		out.print("订单编号为" + orders.getOrders_id() + "的信息如下：");
	%>
	<center>
		<table class="table table-striped table-bordered  table-hover ">
			<tr>
				<td>订单编号</td>
				<td>发件人姓名</td>
				<td>发件人手机</td>
				<td>发件人地址</td>
				<td>收件人姓名</td>
				<td>收件人手机</td>
				<td>收件人地址</td>
				<td>订单状态</td>
				<td>管理员编号</td>
				<td>车辆编号</td>
			</tr>
			<tr>
				<td><%=orders.getOrders_id()%></td>
				<td><%=orders.getOrders_sname()%></td>
				<td><%=orders.getOrders_sphone()%></td>
				<td><%=orders.getOrders_saddress()%></td>
				<td><%=orders.getOrders_rname()%></td>
				<td><%=orders.getOrders_rphone()%></td>
				<td><%=orders.getOrders_raddress()%></td>

				<td>
					<%
						if (orders.isOrders_completed()) {
							out.print("完成");
						} else {
							out.print("未完成");
						}
					%>
				</td>
				<td><%=orders.getAdmin_id()%></td>
				<td><%=orders.getCar_id()%></td>
			</tr>
		</table>
	</center>
	<script src="css/jquery-3.2.1.js"></script>
	<script src="css/bootstrap.js"></script>
</body>
</html>