<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Housing.Admin.QuanLyPhong.Login" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Houzing Login</title>
    <!-- //custom-theme -->

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%--<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>--%>
    <meta name="keywords" content="Black Login Form Responsive Templates, Iphone Widget Template, Smartphone login forms,Login form, Widget Template, Responsive Templates, a Ipad 404 Templates, Flat Responsive Templates" />
    <link href="Login/css/style.css" rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Fjord+One' rel='stylesheet' type='text/css'>
           <script src="/Admin/js/jquery-1.11.1.min.js"></script>
    <script src="/Admin/js/pnotify.js"></script>
    <link href="/Admin/css/pnotify.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <h1>QUẢN LÝ PHÒNG</h1>
        <div class="login-form">
            <div class="avtar">
                <img src="Login/images/admin.png" />
            </div>
            <div class="form-top">

                <asp:TextBox ID="txtEmail" runat="server" placeholder="Tên Đăng Nhập"></asp:TextBox>
                <asp:TextBox ID="txtPassword" runat="server" placeholder="Mật Khẩu" TextMode="Password"></asp:TextBox>
                <br /> <asp:CheckBox ID="chkGiuDN" runat="server" value="None" name="check" /><span style="color :white "> Giữ đăng nhập</span>
                <asp:Button ID="btnSign" runat="server" Text="ĐĂNG NHẬP" OnClick="btnSign_Click" />


              <%--  <div class="check">
                    <div class="check-box">
                        <asp:CheckBox ID="chkGiuDN" runat="server" value="None" name="check" />

                        <label for="roundedTwo"></label>
                    </div>
                    <div class="remember">
                        <p>Giữ đăng nhập</p>
                    </div>
                </div>--%>
                <div class="clear"></div>

            </div>
        </div>
        <!--/SIGN UP-->
        <div class="copyrights">
            <p>Design by Hoàng Quang Huy</a></p>
        </div>



    </form>
</body>
</html>
