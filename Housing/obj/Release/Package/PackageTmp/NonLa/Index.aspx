<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Housing.NonLa.Index" %>


<%@ Register Src="../TemplateChung/footer.ascx" TagName="footer" TagPrefix="uc1" %>
<%@ Register Src="~/NonLa/ThongTinNonLa.ascx" TagPrefix="uc1" TagName="ThongTinNonLa" %>
<%@ Register Src="~/NonLa/ThongTinNonLaEn.ascx" TagPrefix="uc2" TagName="ThongTinNonLaEn" %>




<html>
<head>
    <title>Nón Lá House</title>
    <!-- for-mobile-apps -->
    <link href='/icon/LogoHouzing.jpg' rel='shortcut icon' />
    <meta content='HOUZING' property='og:title' />
    <meta content='UNLOCKED THE FUTURE OF TRAVELLERS' property='og:description' />
    <meta content='http://nguyenphituan.com/icon/LogoHouzing.jpg' property='og:image' />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="description" content="NÓN LÁ house - SÀI GÒN có 1 căn hộ HOMESTAY yên bình & không khói bụi với đầy đủ tiện ích mang đến cho bạn phong cách sống HIỆN ĐẠI GIỮA LÒNG THÀNH PHỐ ." />
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
<body style="background-image: url('Image/non-la1.png'); background-repeat: repeat-x; background-color: #fffbf6;">
    <div style="height: 39px"></div>


    <form id="form1" runat="server">

        <div class="booknow">
            <a href="https://www.facebook.com/nonlahouse">
                <img src="../icon/arrow-38-orange.png" width="15" height="15" /><img src="../icon/Book-now-nonla.png" width="70" height="30" />
            </a>
        </div>

        <div>
            <div style="width: 99%; text-align: center; margin: auto;">
                <img src="Image/1.jpg" class="img-responsive" width="100%" style="border: 1px solid Orange" />
            </div>
            <%-- <div class="port-head">
                <div style="color: #6ad29a; font-size: 30px;">

                    <img src="../icon/icon-safa.png" width="100" height="100" />SAFA Houzing
                </div>
            </div>--%>
            <ul class="nav nav-tabs simplefilter" role="tablist" style="margin-bottom: 25px">
                <li><a href="roomnonla.aspx" style="color: #d0810b">Ảnh Căn Hộ</a></li>
                <li role="presentation"><a href="#FAQ" aria-controls="FAQ" role="tab" style="color: #d0810b" data-toggle="tab">Câu hỏi thường gặp</a></li>
                <li role="presentation" class="active"><a href="#ThongTinNonLa" aria-controls="ThongTinNonLa" style="color: #d0810b" role="tab" data-toggle="tab">Thông tin Nón Lá House</a></li>
                          <li role="presentation"><a href="#ThongTinNonLaEn" aria-controls="ThongTinNonLaEn" role="tab" style="color: #d0810b" data-toggle="tab">Infomation of Safa</a></li>
            </ul>


            <div class="tab-content">
                <div role="tabpanel" class="tab-pane " id="phongf1">

                    <div style="height: 70px"></div>
                </div>


                <div role="tabpanel" class="tab-pane" id="FAQ">
                    <div class="container">
                            <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">LỢI ÍCH KHI Ở CHUỖI HOMESTAY HOUZING</a>
                </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in">
                <div class="panel-body">
                  Nếu như bạn đã từng ở 1 lần tại  homestay trong chuỗi HOUZING ở ĐÀ LẠT hay VŨNG TÀU , HỒ CHÍ MINH ,HẢI PHÒNG thì bạn sẽ được giảm 10 % khi book phòng ở lần 2 tại các căn hộ tiếp theo cùng chuỗi nha:
<br />
- 2 homestay tại SAPA: 2 căn hộ với sức chứa hơn 30 người ,tất cả là phòng riêng tư view núi, mây & suối :
<p > 
- Để book phòng tại SAPA:
Căn nhà gỗ nhỏ xinh: <a href="https://www.facebook.com/safahouzing"> https://www.facebook.com/safahouzing</a>
<br /><span style="margin-left :170px">Căn nhà gỗ view đẹp nhất SAPA:</span> <a href="https://www.facebook.com/anansapa">https://www.facebook.com/anansapa </a>
</p>
                    <p > 
- Để book phòng tại ĐÀ LẠT: 
Căn hộ nhỏ xinh: <a href="https://www.facebook.com/yokohouse01"> https://www.facebook.com/yokohouse01</a>  
    </p>

                    <p > 
- Để book phòng tại HẢI PHÒNG: <a href="https://www.facebook.com/happihouzing"> https://www.facebook.com/happihouzing </a>
</p>
                        <p > 
- Để book phòng tại VŨNG TÀU : <a href="https://www.facebook.com/samsamhouzing">https://www.facebook.com/samsamhouzing </a>
</p>
                            <p > 
- Để book phòng tại Hồ Chí Minh: <a href="https://www.facebook.com/nonlahouse"> https://www.facebook.com/nonlahouse  </a>
</p>

CHÚC CÁC BẠN CÓ CHUYẾN ĐI VUI VẺ VÀ ĐẦY Ý NGHĨA TẠI chuỗi HOUZING

                </div>
            </div>
        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                    <h4 class="panel-title">1. Nón là có đầy đủ dịch vụ không?
                                    </h4>
                                </a>
                            </div>
                            <div id="collapseOne" class="panel-collapse collapse in">
                                <div class="panel-body">
                                    <img src="xungquang.png" class="img-responsive" />
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#2">
                                    <h4 class="panel-title">2. Ở Nón Lá có những gì?
                                    </h4>
                                </a>
                            </div>
                            <div id="2" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <img src="free.png" class="img-responsive" />
                                </div>
                            </div>
                        </div>


                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#3">
                                <h4 class="panel-title">
                                    3. Giờ nhận, trả phòng
                                <br />
                                        (check in,check out)?
                                </h4>
                                    </a>
                            </div>
                            <div id="3" class="panel-collapse collapse">
                                <div class="panel-body">
                                    khách check out lúc 10h sáng & check in từ 11h đến 12h
trưa. Các bạn có thể check out muộn ,check in sớm so với quy định trừ khi trước đó hoặc sau phòng bạn ở không
có khách đến ở ạ (Ví dụ: “Chị A đến giờ check out mà hỏi nhân viên Nón Lá phòng chị A đang ở ngày hôm nay
không ai đến thuê thì Nón Lá sẽ tạo điều kiện cho chị A ở đến chiều muộn mà không phải đóng thêm bất kỳ một
khoản phí nào, Và ngược lại nếu có khách đến check in thì chị A vui lòng check out muộn nhất là 10h sáng ạ” )

                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                 <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#4">
                                <h4 class="panel-title">
                                   4. Nếu có bất cứ vấn đề gì,hay có phàn
                                        <br />
                                        nàn về phòng thì liên lạc với ai?
                                </h4>
                                </a>
                            </div>
                            <div id="4" class="panel-collapse collapse">
                                <div class="panel-body">
                                    Các bạn liên hệ trực
tiếp với hotline: <a>0868248396</a> hoặc inbox Fanpage:
                            <br />
                                    <a href="https://www.facebook.com/nonlahouse/">https://www.facebook.com/nonlahouse/</a>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                 <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#5">
                                <h4 class="panel-title">
                                   5. Chính sách huỷ đặt phòng
                                        <br />
                                        của Nón Lá:

                                   
                                </h4>
                                      </a>
                            </div>
                            <div id="5" class="panel-collapse collapse">
                                <div class="panel-body">
                                   Nếu bạn huỷ book phòng trước 7 ngày check in ,Nón Lá sẽ hoàn trả lại 50% tổng số tiền của tổng số ngày bạn đăng kí ở, Nếu bạn huỷ book phòng sau 7 ngày bạn vui lòng chịu chi trả toàn bộ số tiền cho Nón Lá ( vì Nón Lá đã phải từ chối rất nhiều khách để giữ phòng cho bạn).

*NHƯNG* Hệ thống bên Mình là hệ thống đầu tiên áp dụng chính sách đặc biệt cho các bạn không bị thiệt hại về số tiền bỏ ra, Bạn không ở tại AN AN thì  cũng có thể đổi ngày đến mà không bị tính phí, hoặc chuyển đổi tổng số ngày bạn ở AN AN thành tổng số ngày ngày đi khác trong hệ thống của bên mình mà không mất thêm phí đâu ạ :) HOUZING mong các bạn happy với chính sách này của bên Mình ạ.

HOUZING là 1 chuỗi Homestay,Apartment,Hostel đã xuất hiện  tại SAPA, VŨNG TÀU, HẢI PHÒNG, ĐÀ LẠT bạn có thể book phòng sớm tại các căn hộ Homestay trong hệ thống của chúng Mình:
<p > 
- Để book phòng tại ĐÀ LẠT: 
Căn hộ nhỏ xinh: <a href="https://www.facebook.com/yokohouse01"> https://www.facebook.com/yokohouse01</a>  
    </p>
<p > 
- Để book phòng tại SAPA:
Căn nhà gỗ nhỏ xinh: <a href="https://www.facebook.com/safahouzing"> https://www.facebook.com/safahouzing</a>
<br /><span style="margin-left :170px">Căn nhà gỗ view đẹp nhất SAPA:</span> <a href="https://www.facebook.com/anansapa">https://www.facebook.com/anansapa </a>
</p>
                    <p > 
- Để book phòng tại HẢI PHÒNG: <a href="https://www.facebook.com/happihouzing"> https://www.facebook.com/happihouzing </a>
</p>
                        <p > 
- Để book phòng tại VŨNG TÀU : <a href="https://www.facebook.com/samsamhouzing">https://www.facebook.com/samsamhouzing </a>
</p>
                            <p > 
- Để book phòng tại Hồ Chí Minh: <a href="https://www.facebook.com/nonlahouse"> https://www.facebook.com/nonlahouse  </a>
</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div role="tabpanel" class="tab-pane active" id="ThongTinNonLa">
                    <uc1:ThongTinNonLa runat="server" id="ThongTinNonLa1" />
                </div>
                <div role="tabpanel" class="tab-pane" id="ThongTinNonLaEn">
                      <uc2:ThongTinNonLaEn runat="server" ID="ThongTinNonLaEn1" />
                </div>
               
            </div>
        </div>
        <div class="clearfix">
        </div>
        <uc1:footer ID="footer1" runat="server" />
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
