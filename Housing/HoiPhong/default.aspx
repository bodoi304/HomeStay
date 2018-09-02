<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Housing.HoiPhong._default" %>

<!DOCTYPE html>

<html>
<head>
    <title>Kiểm tra phòng</title>
    <!-- custom-theme -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Houzing,HomeStay" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //custom-theme -->
    <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="//fonts.googleapis.com/css?family=Amaranth:400,400i,700,700i" rel="stylesheet">
</head>
<body class="bg agileinfo">

    <h1 class="agile-head text-center">KIỂM TRA PHÒNG TRỐNG </h1>
    <div class="container">
        <div class="form_w3layouts">

            <form id="form1" class="agile_form" runat="server">

                <div class="agileits-location ">

                    <div>
                        <center><span style="font-size: 1em; color: #fff; text-align: left;display: inline-block; font-weight: 500; margin: 0px 0px 10px 12px;letter-spacing: 1px;">Điểm Đến </span> 
                        <br />
                        <asp:RadioButtonList ID="rddiemden" runat="server" RepeatDirection="Horizontal" CellPadding="5" CellSpacing="5" TextAlign="Left"></asp:RadioButtonList></center>

                    </div>
                </div>
                <div class="checkin agileits-left">
                    <label>Check in</label>
                    <asp:TextBox ID="txtCheckin" data-mask="00/00/0000" data-mask-selectonfocus="true" runat="server" placeholder="dd/mm/yyyy" CssClass="date datepicker" required=""></asp:TextBox>
                    <%-- <input name="checkin" class="date" id="datepicker" type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" required="" />--%>
                </div>
                <div class="checkin agileits-right">
                    <label>Check out</label>
                    <asp:TextBox ID="txtCheckout" data-mask="00/00/0000" data-mask-selectonfocus="true" runat="server" placeholder="dd/mm/yyyy" CssClass="date datepicker1" required=""></asp:TextBox>
                    <%-- <input placeholder="dd/mm/yyyy" name="checkout" class="date" id="datepicker1" type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" required="" />--%>
                </div>
                <div class="clear"></div>
                <div class="agileits-location">
                    <label>
                        <asp:Label ID="lblKetQua" runat="server" Text="Kết Quả"></asp:Label>
                    </label>


                    <asp:TextBox ID="txtKetQua" runat="server" ReadOnly="True"></asp:TextBox>


                </div>
                <div class="clear"></div>



                <div class="clear"></div>
                <div class="submit">
                    <asp:Button ID="btnsubmit" runat="server" Text="Kiểm Tra Phòng" OnClick="btnsubmit_Click1" />

                </div>
                <div class="clear"></div>
                <div class="agileits-location" style="margin-top: 10px">
                    <asp:Panel ID="pnThongKe" runat="server" Visible="false">
                        <label style="float: none">
                        </label>

                        <span style="margin-top: 10px">

                            <label>

                                <asp:Label ID="lblThongKe" runat="server" Text="Thống Kê"></asp:Label>
                            </label>
                        </span>

                    </asp:Panel>
                </div>
                <div class="clear"></div>
            </form>

        </div>
    </div>
    <div class="agileits-w3layouts-copyright text-center">
        <h2>© 2015 Phần mềm quản lý khách hàng & phân tích đầu tư thị trường du lịch Việt Nam. Bản quyền hệ thống HOUZING | Thiết kế & phát triển bởi Hoang Quang Huy và Nguyễn Phi Tuấn<br />HOUZING là 1 chuỗi Apartment, Homestay, Officetel Uy Tín tại Việt Nam đã xuất hiện tại Tam Đảo 2, SAPA, VŨNG TÀU, PHƯỚC HẢI, HẢI PHÒNG, ĐÀ LẠT,HỒ CHÍ MINH</h2>
    </div>
    <!--start-date-piker-->
    <link rel="stylesheet" href="css/jquery-ui.css" />
    <script src="js/jquery-ui.js"></script>
     <script src="/javascripts/datepiker.js"></script>
   
    <script type="text/javascript" src="/Admin/js/jquery.mask.js"></script>
    <!-- /End-date-piker -->
</body>
</html>
