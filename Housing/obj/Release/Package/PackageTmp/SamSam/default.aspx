<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Housing.SamSam._default" %>




<%@ Register Src="S1/S1.ascx" TagName="S1" TagPrefix="uc1" %>
<%@ Register Src="S2/S2.ascx" TagName="S2" TagPrefix="uc2" %>
<%@ Register Src="~/SamSam/ThongTinSamSam/ThongTinSamSam.ascx" TagPrefix="uc3" TagName="ThongTinSamSam" %>





<%@ Register src="CauHoiThuongGapSamSam.ascx" tagname="CauHoiThuongGapSamSam" tagprefix="uc4" %>
<%@ Register Src="~/TemplateChung/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/TemplateChung/MenuFix.ascx" TagPrefix="uc1" TagName="MenuFix" %>







<html>
<head>
    <title>SamSam Houzing</title>
    <!-- for-mobile-apps -->
    <link href='/icon/LogoHouzing.jpg' rel='shortcut icon' />
    <meta content='HOUZING' property='og:title' />
    <meta content='UNLOCKED THE FUTURE OF TRAVELLERS' property='og:description' />
    <meta content='http://nguyenphituan.com/icon/LogoHouzing.jpg' property='og:image' />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="description" content="SAMSAM-1 căn hộ nhỏ xinh đã ra đời vào Mùa hè năm ấy , lấy cảm hứng từ những chiếc ghe đánh cá ,từ Biển xanh, cát trắng, nắng vàng , toàn những hình ảnh thân thương nhất của thành phố Vũng Tàu." />
    <meta name="keywords" content="HomeStay,Home,Houzing" />


    <%--    <link href='//fonts.googleapis.com/css?family=Monda:400,700' rel='stylesheet' type='text/css'>--%>
    <!-- //for-mobile-apps -->
    <link rel='fluid-icon' href='http://nguyenphituan.com/icon/LogoHouzing.jpg' />
    <link rel='logo' href='http://nguyenphituan.com/icon/LogoHouzing.jpg' />
    <link rel='image_src' href='http://nguyenphituan.com/icon/LogoHouzing.jpg' />
    <script type="text/javascript" src="/Yoko/js/jquery-2.1.4.min.js"></script>
    <!--//fonts-->
    <!--fonts-->
    <link href="/BootTraps/bootstrap-theme.min.css" rel="stylesheet" />
    <script src="/BootTraps/bootstrap.js"></script>

    <script src="/javascripts/jquery-1.4.2.js?1454891014" type="text/javascript"></script>
    <script src="/javascripts/jquery-ui-1.8.4.custom.min.js?1454891014" type="text/javascript"></script>
    <script src="/javascripts/jquery.hoverIntent.minified.js?1454891014" type="text/javascript"></script>
    <script src="/javascripts/mm.full.js?1454891014" type="text/javascript"></script>
    <script src="/javascripts/jquery.anythingslider.js?1454891014" type="text/javascript"></script>
    <script src="/javascripts/pageless.js?1454891014" type="text/javascript"></script>
    <script src="/javascripts/share.js?1454891014" type="text/javascript"></script>
    <script src="/javascripts/jquery.scrollTo.js?1454891014" type="text/javascript"></script>
    <script src="/javascripts/jquery.cookie.js?1454891014" type="text/javascript"></script>
    <script src="/javascripts/bigstories.js?1454891014" type="text/javascript"></script>
    <link href="<%= ResolveUrl("~/stylesheets/public.css?1454891014") %>" media="screen" rel="stylesheet" type="text/css" />
    <link href="/stylesheets/bootstrap.min.css?1454891014" media="screen" rel="stylesheet" type="text/css" />
    <link href="/stylesheets/anythingslider.css?1454891014" media="screen" rel="stylesheet" type="text/css" />
    <link href="/stylesheets/bigstories.css?1454891014" media="screen" rel="stylesheet" type="text/css" />



    <link href="/Yoko/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="/Yoko/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="/Yoko/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" type="text/css" href="/Yoko/css/component.css" />
    <link rel="stylesheet" href="/Yoko/css/chocolat.css" type="text/css" />
    <link href="/Yoko/css/index.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="/Yoko/css/owl.carousel.css" type="text/css" media="all" />
    <link href="/Yoko/css/iconeffects.css" rel='stylesheet' type='text/css' />
    <!--fonts-->
    <link href="//fonts.googleapis.com/css?family=Dosis:300,400,500,600,700" rel="stylesheet" />
    <link href="//fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet" />
    <link href="//fonts.googleapis.com/css?family=Ewert" rel="stylesheet" />

    <link href="/stylesheets/cssweb.css" rel="stylesheet" />
    <script src="/javascripts/jssor.slider-25.2.0.min.js" type="text/javascript"></script>


    <style>
        .jssorb072 .i {
            position: absolute;
            color: #000;
            font-family: "Helvetica neue",Helvetica,Arial,sans-serif;
            text-align: center;
            cursor: pointer;
            z-index: 0;
        }

            .jssorb072 .i .b {
                fill: #fff;
                opacity: .3;
            }

            .jssorb072 .i:hover {
                opacity: .7;
            }

        .jssorb072 .iav {
            color: #fff;
        }

            .jssorb072 .iav .b {
                fill: #000;
                opacity: .5;
            }

        .jssorb072 .i.idn {
            opacity: .3;
        }
    </style>

    <style>
        .tf {
            background-image: url(CommonImage/AnhNenSafa.jpg);
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            background-size: cover;
            background-color: #999;
            height: auto;
        }
    </style>
</head>
<body style="background-image: url('CommonImage/pT5onAzgc.png'); background-repeat: repeat-x; background-color: #ffecf5">



    <form id="form1" runat="server">
        <uc1:MenuFix runat="server" ID="MenuFix" />
<%--        <div class="booknow">
            <a href="https://www.facebook.com/samsamhouzing/">
                <img src="../icon/arrow-samsam.png" width="15" height="15" /><img src="../icon/Book-now-samsam.png" width="70" height="30" />
            </a>
        </div>
                <div class="booknowinta">
            <a href="https://www.instagram.com/samsamhouzing" target="_blank" >
               <img src="/icon/inta.png"  />
            </a>
        </div>--%>
        <div>
            <div style="width: 99%; text-align: center; margin: auto; height: 100px">
                <%--   <img src="CommonImage/03_waterfall.gif" class="img-responsive" width="100%" height="85%" style="border: 2px solid green" />--%>
            </div>
            <div class="port-head">
                <div style="color: #ff60ab; font-size: 30px;">

                    <img src="../icon/samsam.png" width="100" height="100" />SamSam Houzing
                </div>
            </div>
             <div class="port-head" style ="margin-top :14px">
                <div style="color: #ff60ab; font-size: 30px;">
                    <iframe width="90%" height="80%" src="https://www.youtube.com/embed/Fkyy4pS63sU" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
              
                </div>
            </div>
            <ul class="nav nav-tabs simplefilter" role="tablist" style="margin-bottom: 25px">
                <li role="presentation"><a href="#phongf1" aria-controls="phongy1" style="color: #ff60ab" role="tab" data-toggle="tab">PHÒNG RIÊNG</a></li>
                <li role="presentation"><a href="#phongf2" aria-controls="phongf2" style="color: #ff60ab" role="tab" data-toggle="tab">PHÒNG DORM ĐÔI</a></li>
                             <li role="presentation"><a href="#FAQ" aria-controls="FAQ" style="color: #ff60ab" role="tab" data-toggle="tab">Câu hỏi thường gặp</a></li>
                
                <li role="presentation" class="active"><a href="#ThongTinSamsam" aria-controls="ThongTinSamsam" style="color: #ff60ab" role="tab" data-toggle="tab">Thông tin SAMSAM</a></li>
                <%--                <li role="presentation"><a href="#ThongTinSaFaEn" aria-controls="ThongTinSaFa" style="color: #6ad29a" role="tab" data-toggle="tab">Infomation of Safa</a></li>--%>
            </ul>


            <div class="tab-content" style="background-color: #ffecf5">
                <div role="tabpanel" class="tab-pane " id="phongf1">
                    <uc1:S1 ID="S11" runat="server" />
                    <div style="height: 70px"></div>
                </div>

                <div role="tabpanel" class="tab-pane" id="phongf2">
                    <uc2:S2 ID="S21" runat="server" />
                    <div style="height: 70px"></div>
                </div>

                   <div role="tabpanel" class="tab-pane" id="FAQ">
                    <uc4:CauHoiThuongGapSamSam ID="CauHoiThuongGapSamSam1" runat="server" />
                </div>
                <div role="tabpanel" class="tab-pane active" id="ThongTinSamsam">

                    <uc3:ThongTinSamSam runat="server" ID="ThongTinSamSam1" />

                </div>
             
            </div>
        </div>
        <div class="clearfix">
            
        </div>
        <uc1:footer runat="server" ID="footer" />
    </form>
</body>
<script type='text/javascript'>
    //<![CDATA[
    $(document).ready(function () {

        var config = {
            ui: {
                flyout: "bottom left",
                button_font: false
            },
            networks: {
                google_plus: {
                    enabled: false
                },
                facebook: {
                    load_sdk: false
                },
                pinterest: {
                    enabled: false
                },
                twitter: {
                    description: "SaFa Houzing"
                },
                email: {
                    title: "Đên houzing",
                    description: ""
                }
            }
        };

        var share_button = new Share(".share-button", config);

    });
    //]]>
</script>

</html>
