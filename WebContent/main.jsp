<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link rel="stylesheet" type="text/css" href="css/style.css">
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
	<h1>欢迎来到LEMS快递物流管理系统</h1>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<div class="carousel slide" id="carousel-247586">
					<ol class="carousel-indicators">
						<li data-slide-to="0" data-target="#carousel-247586"></li>
						<li data-slide-to="1" data-target="#carousel-247586"
							class="active"></li>
						<li data-slide-to="2" data-target="#carousel-247586"></li>
					</ol>
					<div class="carousel-inner">
						<div class="item">
							<img alt="" src="img/1.jpg" />
							<div class="carousel-caption">
								<h4></h4>
								<p></p>
							</div>
						</div>
						<div class="item active">
							<img alt="" src="img/2.jpg" />
							<div class="carousel-caption">
								<h4></h4>
								<p></p>
							</div>
						</div>
						<div class="item">
							<img alt="" src="img/3.jpg" />
							<div class="carousel-caption">
								<h4></h4>
								<p></p>
							</div>
						</div>
					</div>
					<a data-slide="prev" href="#carousel-247586"
						class="left carousel-control">‹</a> <a data-slide="next"
						href="#carousel-247586" class="right carousel-control">›</a>
				</div>
			</div>
		</div>
	</div>
	<script src="css/jquery-3.2.1.js"></script>
	<script src="css/bootstrap.js"></script>
</body>
</html>