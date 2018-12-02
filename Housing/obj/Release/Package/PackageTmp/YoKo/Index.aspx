<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Housing.YoKo.Index" %>

<%@ Register Src="../TemplateChung/footer.ascx" TagName="footer" TagPrefix="uc1" %>

<%@ Register Src="YokoY3/PhongY3.ascx" TagName="PhongY3" TagPrefix="uc2" %>

<%@ Register Src="YoKoY2/PhongY2.ascx" TagName="PhongY2" TagPrefix="uc3" %>

<%@ Register Src="YoKoY1/PhongY1.ascx" TagName="PhongY1" TagPrefix="uc4" %>

<%@ Register Src="~/HoiDapYoKo/HoiDapYoKo.ascx" TagPrefix="uc1" TagName="HoiDapYoKo" %>
<%@ Register Src="~/ThongTinYoko/ThongTinYoKo.ascx" TagPrefix="uc10" TagName="ThongTinYoKo" %>
<%@ Register Src="~/TemplateChung/MenuFix.ascx" TagPrefix="uc1" TagName="MenuFix" %>


<html>
<head>
    <title>YOKO Houzing</title>
    <!-- for-mobile-apps -->
 
     <link href='/icon/LogoHouzing.jpg' rel='shortcut icon' />
        <meta content='HOUZING' property='og:title' />
    <meta content='UNLOCKED THE FUTURE OF TRAVELLERS' property='og:description' />
    <meta content='http://nguyenphituan.com/icon/LogoHouzing.jpg' property='og:image' />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="HomeStay,Home,Houzing" />
    <meta name="description" content="Căn hộ trong khu phố Trần Phú nhỏ xinh nằm giữa trung tâm thành phố ngàn hoa Đà Lạt , toạ lạc ngay trong khu xóm người Đà Lạt." />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link rel='fluid-icon' href='http://nguyenphituan.com/icon/iconyoko.jpg' />
    <link rel='logo' href='http://nguyenphituan.com/icon/iconyoko.jpg' />
    <link rel='image_src' href='http://nguyenphituan.com/icon/iconyoko.jpg' />
    <!-- //for-mobile-apps -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
    <link rel="stylesheet" type="text/css" href="css/component.css" />
    <link rel="stylesheet" href="css/chocolat.css" type="text/css">
    <link href="css/index.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="css/owl.carousel.css" type="text/css" media="all">
    <link href="css/iconeffects.css" rel='stylesheet' type='text/css' />
    <!--fonts-->
    <link href="//fonts.googleapis.com/css?family=Dosis:300,400,500,600,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Ewert" rel="stylesheet">
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <!--//fonts-->
    <!--fonts-->
    <link href="../BootTraps/bootstrap-theme.min.css" rel="stylesheet" />
    <script src="../BootTraps/bootstrap.js"></script>
    <link href="../BootTraps/bootstrap.min.css" rel="stylesheet" />
        <link href="../stylesheets/cssweb.css" rel="stylesheet" />
</head>
       <script src="/javascripts/jssor.slider-25.2.0.min.js" type="text/javascript"></script>


    <style>
        .jssorb072 .i {position:absolute;color:#000;font-family:"Helvetica neue",Helvetica,Arial,sans-serif;text-align:center;cursor:pointer;z-index:0;}
        .jssorb072 .i .b {fill:#fff;opacity:.3;}
        .jssorb072 .i:hover {opacity:.7;}
        .jssorb072 .iav {color:#fff;}
        .jssorb072 .iav .b {fill:#000;opacity:.5;}
        .jssorb072 .i.idn {opacity:.3;}
    </style>
<body style="background-color :#F5F3FF;background-image: url('/Safa/CommonImage/iconCayThong.png'); background-repeat:  repeat-x ;">



    <form id="form1" runat="server">



        <!-- Portfolio -->

        <%-- <div class="portfolio" id="port">
            <div class="port-head">
                <h3 class="tittle">YOKO HOUSE</h3>
            </div>
        <ul class="nav nav-tabs simplefilter" role="tablist">
            <li role="presentation" class="active"><a href="#phongy1" aria-controls="phongy1" role="tab" data-toggle="tab">PHÒNG Y1</a></li>
            <li role="presentation"><a href="#phongy2" aria-controls="phongy2" role="tab" data-toggle="tab">PHÒNG Y2</a></li>
            <li role="presentation"><a href="#phongy3" aria-controls="phongy3" role="tab" data-toggle="tab">PHÒNG Y3</a></li>

        </ul>
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane active" id="phongy1">
                phongy1
            </div>
            <div role="tabpanel" class="tab-pane active" id="phongy2">
                phongy2
            </div>
            <div role="tabpanel" class="tab-pane active" id="phongy3">

                <uc2:PhongY3 ID="PhongY31" runat="server" />

            </div>
        </div>
            </div>--%>

        <!-- //Portfolio -->
<%--                <div class="booknow">
           <a href="https://www.facebook.com/yokohouse01">
               <img src="../icon/arrow-38-xxl.png" width="15" height="15" /><img src="../icon/Book-now_blue.png" width="70" height="30"/> </a> 
        </div>
         <div class="booknowinta">
            <a href="https://www.instagram.com/yokohousedalat" target="_blank" >
               <img src="/icon/inta.png"  />
            </a>
        </div>--%><uc1:MenuFix runat="server" ID="MenuFix" />
        <div class="portfolio" id="port">
            <div class="port-head">
                <div class="tittle" style="color: #33BBFB;font-size:30px">
                 <img src="../icon/icon-yoko.png"  width="100" height="100"/>YOKO House</div>
            </div>
            <ul class="nav nav-tabs simplefilter" role="tablist">
                <li role="presentation" ><a href="YoKoY1/PhongY1.aspx" >PHÒNG Y1</a></li>
                <li role="presentation"><a href="YoKoY2/PhongY2.aspx" >PHÒNG Y2</a></li>
                <li role="presentation"><a href="YoKoY3/PhongY3.aspx" >PHÒNG Y3</a></li>
                <li role="presentation" class="active"><a href="#ThongTinYoko" aria-controls="ThongTinYoko" role="tab" data-toggle="tab">Thông tin YOKO</a></li>
                <li role="presentation"><a href="#FAQ" aria-controls="FAQ" role="tab" data-toggle="tab">Câu hỏi thường gặp</a></li>
            </ul>


            <div class="tab-content">
                <div role="tabpanel" class="tab-pane " id="phongy1">
                    <uc4:PhongY1 ID="PhongY11" runat="server" />
                </div>

                <div role="tabpanel" class="tab-pane" id="phongy2">
                    <uc3:PhongY2 ID="PhongY21" runat="server" />
                </div>
                <div role="tabpanel" class="tab-pane" id="phongy3">
                    <uc2:PhongY3 ID="PhongY31" runat="server" />
                </div>
                <div role="tabpanel" class="tab-pane active" id="ThongTinYoko">
                    <uc10:ThongTinYoKo runat="server" ID="ThongTinYoKo1" />
                </div>
                <div role="tabpanel" class="tab-pane" id="FAQ">
                    <uc1:HoiDapYoKo runat="server" id="HoiDapYoKo" />
                </div>
            </div>
        </div>
        <div class="clearfix">
        </div>
        <uc1:footer ID="footer1" runat="server" />




        




    </form>
</body>
</html>
