<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Housing.Safa.Default" %>


<%@ Register Src="F1/F1.ascx" TagName="F1" TagPrefix="uc1" %>
<%@ Register Src="F2/F2.ascx" TagName="F2" TagPrefix="uc2" %>
<%@ Register Src="F3/F3.ascx" TagName="F3" TagPrefix="uc3" %>
<%@ Register Src="F4/F4.ascx" TagName="F4" TagPrefix="uc4" %>
<%@ Register Src="~/Safa/ThongTinSaFa/ThongTinSaFa.ascx" TagPrefix="uc5" TagName="ThongTinSaFa" %>
<%@ Register Src="~/Safa/CauHoiTGSafa.ascx" TagPrefix="uc6" TagName="CauHoiTGSafa" %>



<%@ Register Src="Menu/MenuSafa.ascx" TagName="MenuSafa" TagPrefix="uc7" %>



<%@ Register Src="ThongTinSaFa/ThongTinSaFaEn.ascx" TagName="ThongTinSaFaEn" TagPrefix="uc8" %>
<%@ Register Src="~/TemplateChung/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/TemplateChung/MenuFix.ascx" TagPrefix="uc1" TagName="MenuFix" %>





<html>
<head>
    <title>SAFA Houzing</title>
    <!-- for-mobile-apps -->
    <link href='/icon/LogoHouzing.jpg' rel='shortcut icon' />
    <meta content='HOUZING' property='og:title' />
    <meta content='UNLOCKED THE FUTURE OF TRAVELLERS' property='og:description' />
    <meta content='http://nguyenphituan.com/icon/LogoHouzing.jpg' property='og:image' />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="description" content="NGÔI NHÀ ĐẸP NHƯ MƠ GIỮA THUNG LŨNG NGÀN MÂY TẢ VAN , SAPA.Đến SAPA có 1 nơi được gọi là THIÊN ĐƯỜNG chẳng cần đi đâu xa,các bạn cứ tới thẳng thung lũng mường hoa, bản Tả Van." />
    <meta name="keywords" content="HomeStay,Home,Houzing" />
    <link href="/Safa/Menu/css/style.css" rel="stylesheet" type="text/css" media="all" />

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
    <link href="http://vjs.zencdn.net/6.6.3/video-js.css" rel="stylesheet">

    <!-- If you'd like to support IE8 -->
    <script src="http://vjs.zencdn.net/ie8/1.1.2/videojs-ie8.min.js"></script>

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
<body style="background-image: url('CommonImage/iconbckground.png'); background-repeat: repeat-x; background-color: #F5FFF5;">



    <form id="form1" runat="server">
        <uc1:MenuFix runat="server" ID="MenuFix" />
        <div style="height: 39px"></div>
        <%--        <div class="booknow">
            <a href="https://www.facebook.com/SAFAHOUZING/">
                <img src="../icon/arrow-38-green.png" width="15" height="15" /><img src="../icon/Book-nowgreen.png" width="70" height="30" />
            </a>
        </div>
        <div class="booknowinta">
            <a href="https://www.instagram.com/safahouzing01" target="_blank">
                <img src="/icon/inta.png" />
            </a>
        </div>--%>
        <div>
            <video id="my_video_1" class="video-js vjs-sublime-skin"
                controls preload="none" poster='CommonImage/anhnen.jpg'
                data-setup='{ "aspectRatio":"640:267", "playbackRates": [1, 1.5, 2] }'>
                <source src="http://nguyenphituan.com/Video/VideoSapa.mp4" type='video/mp4' />
            </video>

            <script src="http://vjs.zencdn.net/6.6.3/video.js"></script>


            <div class="port-head">
                <div style="color: #6ad29a; font-size: 30px;">
                    <img src="../icon/icon-safa.png" width="100" height="100" />SAFA Houzing
                </div>
            </div>
            <ul class="nav nav-tabs simplefilter" role="tablist" style="margin-bottom: 25px">
                <li><a href="room.aspx?ID=14" style="color: #6ad29a">PHÒNG F1</a></li>
                <li><a href="room.aspx?ID=15" style="color: #6ad29a">PHÒNG F2</a></li>
                <li><a href="room.aspx?ID=16" style="color: #6ad29a">PHÒNG F3</a></li>
                <li><a href="room.aspx?ID=17" style="color: #6ad29a">PHÒNG F4</a></li>
                <li role="presentation"><a href="#Menu" aria-controls="Menu" role="tab" style="color: #6ad29a" data-toggle="tab">Thực đơn ở Safa</a></li>
                <li role="presentation"><a href="#FAQ" aria-controls="FAQ" role="tab" style="color: #6ad29a" data-toggle="tab">Câu hỏi thường gặp</a></li>
                <li role="presentation" class="active"><a href="#ThongTinSaFa" aria-controls="ThongTinSaFa" style="color: #6ad29a" role="tab" data-toggle="tab">Thông tin Safa</a></li>
                <li role="presentation"><a href="#ThongTinSaFaEn" aria-controls="ThongTinSaFa" style="color: #6ad29a" role="tab" data-toggle="tab">Infomation of Safa</a></li>
            </ul>


            <div class="tab-content">
                <div role="tabpanel" class="tab-pane " id="phongf1">
                    <uc1:F1 ID="F11" runat="server" />
                    <div style="height: 70px"></div>
                </div>

                <div role="tabpanel" class="tab-pane" id="phongf2">
                    <uc2:F2 ID="F21" runat="server" />
                    <div style="height: 70px"></div>
                </div>
                <div role="tabpanel" class="tab-pane" id="phongf3">
                    <uc3:F3 ID="F31" runat="server" />
                    <div style="height: 70px"></div>
                </div>
                <div role="tabpanel" class="tab-pane" id="phongf4">

                    <uc4:F4 ID="F41" runat="server" />
                    <div style="height: 70px"></div>
                </div>

                <div role="tabpanel" class="tab-pane" id="FAQ">
                    <uc6:CauHoiTGSafa runat="server" ID="CauHoiTGSafa" />
                </div>
                <div role="tabpanel" class="tab-pane" id="Menu">
                    <uc7:MenuSafa ID="MenuSafa1" runat="server" />
                </div>
                <div role="tabpanel" class="tab-pane active" id="ThongTinSaFa">


                    <uc5:ThongTinSaFa ID="ThongTinSaFa1" runat="server" />
                </div>
                <div role="tabpanel" class="tab-pane" id="ThongTinSaFaEn">
                    <uc8:ThongTinSaFaEn ID="ThongTinSaFaEn1" runat="server" />
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
