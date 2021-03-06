<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css">
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
	<center>
		<form action="orders_result.jsp">
		<div class="col-md-4 col-md-offset-4">
			<table class="table table-bordered  table-hover">
				<tr>
					<td>收件人姓名：</td>
					<td>
					<input class="form-control" type="text" name="orders_rname"></td>
				</tr>
				<tr>
					<td>收件人手机：</td>
					<td><input class="form-control" type="text" name="orders_rphone"></td>
				</tr>
				<tr>
					<td>收件人地址：</td>
					<td><input class="form-control" type="text" name="orders_raddress"></td>
				</tr>
				<tr>
					<td>寄件人姓名：</td>
					<td><input class="form-control" type="text" name="orders_sname"></td>
				</tr>
				<tr>
					<td>寄件人手机：</td>
					<td><input class="form-control" type="text" name="orders_sphone"></td>
				</tr>
				<tr>
					<td>寄件人地址：</td>
					<td><input class="form-control" type="text" name="orders_saddress"></td>
				</tr>
				<tr>
					<td>车辆编号：</td>
					<td><select class="form-control">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
					</select></td>
				</tr>
			</table>
			<br>
			<input class="btn btn-primary" type="submit" value="提交">
			&nbsp;&nbsp;&nbsp;&nbsp;
			<input class="btn btn-default" type="reset" value="重置">
			</div>
		</form>
	</center>
	<script src="css/jquery-3.2.1.js"></script>
	<script src="css/bootstrap.js"></script>
</body>
</html>