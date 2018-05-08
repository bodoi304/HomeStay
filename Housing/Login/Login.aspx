<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Housing.Admin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Houzing</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!-- for-mobile-apps -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Trip Login Form Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- //for-mobile-apps -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!--Google Fonts-->
<link href="//fonts.googleapis.com/css?family=Josefin+Sans:100,100i,300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
    <div class="wthree-dot">
	<h1>Houzing Đăng Nhập   </h1>
	<div class="profile">
		<div class="wrap">
			<div class="content-main">
				<div class="w3ls-subscribe w3ls-subscribe1">
	<%--				<h2>You have an account?</h2>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nec quam</p>--%>
					<form action="#" method="post">
						<input type="email" name="Search" placeholder="Email" required="">
						<input type="password" name="Password" placeholder="Password" required="">
						<input type="submit" value="Login">
					</form>
				</div>
			</div>
			<div class="wthree_footer_copy">
				<p>© 2017 Houzing </p>
			</div>
		</div>
	</div>
</div>
    </form>
</body>
</html>
