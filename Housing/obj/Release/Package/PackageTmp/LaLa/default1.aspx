<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="default1.aspx.cs" Inherits="Housing.LaLa._default" %>

<%@ Register Src="~/TemplateChung/footerHeThong.ascx" TagPrefix="uc1" TagName="footerHeThong" %>
<%@ Register Src="~/LaLa/ThongTinLaLa.ascx" TagPrefix="uc1" TagName="ThongTinLaLa" %>
<%@ Register Src="~/LaLa/ThongTinLaLaEn.ascx" TagPrefix="uc2" TagName="ThongTinLaLaEn" %>




<html>
<head>
    <title>LALA HomeStay</title>
    <!-- for-mobile-apps -->
    <link href='image/lalala8-min.png' rel='shortcut icon' />
    <meta content='HOUZING' property='og:title' />
    <meta content='UNLOCKED THE FUTURE OF TRAVELLERS' property='og:description' />
    <meta content='http://nguyenphituan.com/icon/LogoHouzing.jpg' property='og:image' />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="description" content="La La House - vùng đất của những kẻ mộng mơ, nơi kết hợp tuyệt vời giữa một Sài Gòn rực rỡ, sôi động và một Sài Gòn mơ mộng, nhẹ nhàng chính xác là nơi dành cho bạn" />
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

<body >
    <div style="height: 5px"></div>


    <form id="form1" runat="server" style="background-color: rgb(245, 251, 253) !important;">

        <div class="booknow">
            <a href="https://www.facebook.com/lalahouse/" target="_blank">
                <img src="../icon/arrow-38-green.png" width="15" height="15" /><img src="../icon/Book-nowgreen.png" width="70" height="30" />
            </a>
        </div>
        <%--    <div class="booknowinta">
            <a href="https://www.instagram.com/safahouzing01" target="_blank">
                <img src="/icon/inta.png" />
            </a>
        </div>--%>
        <div>
            <video id="my_video_1" class="video-js vjs-sublime-skin"
                controls preload="none" poster='image/content-min.png'
                data-setup='{ "aspectRatio":"640:267", "playbackRates": [1, 1.5, 2] }'>
                <source src="http://nguyenphituan.com/Video/lalabanner.mp4" type='video/mp4' />
            </video>

            <script src="http://vjs.zencdn.net/6.6.3/video.js"></script>


            <div class="port-head">
                <div style="color: rgb(60, 189, 255); font-size: 30px; margin-top: 30px">
                    <%-- <img src="image/lalala8-min.png" width="100" height="100" />--%>
                    CHÀO MỪNG ĐẾN VỚI LALA HOUSE
                </div>
            </div>
            <ul class="nav nav-tabs simplefilter" role="tablist" style="margin-bottom: 25px">
                <li><a href="/LaLa/RoomLaLa.aspx?ID=10041" style="color: rgb(60, 189, 255)">PHÒNG DORM L1</a></li>
                <li><a href="/LaLa/RoomLaLa.aspx?ID=10043" style="color: rgb(60, 189, 255)">PHÒNG L2</a></li>
                <li><a href="/LaLa/RoomLaLa.aspx?ID=10044" style="color: rgb(60, 189, 255))">PHÒNG L3</a></li>
                <li><a href="/LaLa/RoomLaLa.aspx?ID=10045" style="color: rgb(60, 189, 255)">PHÒNG L4</a></li>
                <%--<li role="presentation"><a href="#Menu" aria-controls="Menu" role="tab" style="color: rgb(92, 219, 243)" data-toggle="tab">Thực đơn ở LaLa</a></li>--%>
                <li role="presentation"><a href="#FAQ" aria-controls="FAQ" role="tab" style="color: rgb(60, 189, 255)" data-toggle="tab">Câu hỏi thường gặp</a></li>
                <li role="presentation" class="active"><a href="#ThongTinSaFa" aria-controls="ThongTinSaFa" style="color: rgb(60, 189, 255)" role="tab" data-toggle="tab">Thông tin LaLa</a></li>
                <li role="presentation"><a href="#ThongTinSaFaEn" aria-controls="ThongTinSaFa" style="color: rgb(60, 189, 255)" role="tab" data-toggle="tab">Infomation of LaLa</a></li>
            </ul>


            <div class="tab-content">
                <div role="tabpanel" class="tab-pane " id="phongf1">

                    <div style="height: 70px"></div>
                </div>

                <div role="tabpanel" class="tab-pane" id="phongf2">

                    <div style="height: 70px"></div>
                </div>
                <div role="tabpanel" class="tab-pane" id="phongf3">

                    <div style="height: 70px"></div>
                </div>
                <div role="tabpanel" class="tab-pane" id="phongf4">


                    <div style="height: 70px"></div>
                </div>

                <div role="tabpanel" class="tab-pane" id="FAQ">
                </div>
                <%--       <div role="tabpanel" class="tab-pane" id="Menu">
                </div>--%>
                <div role="tabpanel" class="tab-pane active" id="ThongTinSaFa">
                    <uc1:ThongTinLaLa runat="server" ID="ThongTinLaLa" />
                </div>
                <div role="tabpanel" class="tab-pane" id="ThongTinSaFaEn">

                    <uc2:ThongTinLaLaEn runat="server" id="ThongTinLaLaEn" />
                </div>
            </div>
        </div>
        <div class="clearfix">
        </div>

        <div class="contact-main-agile-info" id="contact">
            <div class="container">
                <h3 class="tittle">LIÊN HỆ</h3>
                <div class="contact-top-agileits">

                    <div class="col-md-4 contact-grid">
                        <div class="contact-grid2 w3">
                            <i class="fa fa-volume-control-phone"></i>
                            <div class="con-w3l-info">
                                <h4>HotLine</h4>

                                <p>0122.7943890 (Ms.Nhi)</p>
                            </div>
                            <div class="con-w3l-info">


                                <p>0868 248 396 (Mr.Tuấn)</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <uc1:footerHeThong runat="server" ID="footerHeThong" />
                    <div class="clearfix"></div>

                </div>
                <div class="clearfix"></div>

            </div>

        </div>
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
                    description: "LaLa Houzing"
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


