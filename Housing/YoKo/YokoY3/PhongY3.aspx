<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PhongY3.aspx.cs" Inherits="Housing.YokoY3.PhongY3" %>

<%@ Register Src="../../TemplateChung/footer.ascx" TagName="footer" TagPrefix="uc1" %>



<!DOCTYPE html>

<head>
    <title>Houzing
    </title>
    <meta content='text/html; charset=utf-8' http-equiv='Content-Type' />
    <link href='icon/LogoHouzing.jpg' rel='shortcut icon' />
    <meta content='HOUZING' property='og:title' />
    <meta content='UNLOCKED THE FUTURE OF TRAVELLERS' property='og:description' />
    <meta content='http://nguyenphituan.com/icon/LogoHouzing.jpg' property='og:image' />
    <meta content='width=device-width, initial-scale=1' name='viewport' />
    <script src="/javascripts/jquery-1.4.2.js?1454891014" type="text/javascript"></script>
    <link href="/Sapa/css/style.css" rel="stylesheet" type="text/css" media="all" />
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

    <script type='text/javascript'>
        //<![CDATA[
        try {
            Typekit.load({
                loading: function () {
                    // Javascript to execute when fonts start loading
                },
                active: function () {
                    // Javascript to execute when fonts become active
                },
                inactive: function () {
                    // Javascript to execute when fonts become inactive
                    //console.log("Javascript to execute when fonts become inactive")
                }
            });
        } catch (e) { }
        //]]>
    </script>
</head>
<body id='photoseries' style="background-color: #F5FFF5">
    <div class='menu' style="text-align: center; background: #00AD8A">
        <a class='home-link' href='/'></a>
        <ul class='main-menu'>
            <li class='menu-section towns '>
                <a class='menu-icon' href="/YoKo/Index.aspx">
                    <span class='nav-title' style="color: white; width: 150px">Trang chủ
                    </span>
                </a>

            </li>


        </ul>
        <ul class='right-menu'>


            <%--       <li class='collapsed-menu'>
                <a class='menu-item' href='javascript:;'>Pages
                </a>
                <div class='sub-menu'>
                    <ul>
                        <li>
                            <a href='/Sapa/ThongTinSapa.aspx'>Hướng dẫn đến sapa
                            </a>
                        </li>
                         <li>
                            <a href='/Sapa/Cau_hoi_thuong_gap.aspx'>Câu hỏi thường gặp
                            </a>
                        </li>
                         <li>
                            <a href='/Sapa/Thuc_Don.aspx'>Thực đơn Sapa
                            </a>
                        </li>
                    </ul>
                </div>
            </li>--%>
        </ul>
        <a class='toggle-menu' href='javascript:;'>Toggle menu
        </a>
    </div>
    <div class='dock'>
        <a class='toggle-dock' href='javascript:;'></a>
        <div class='controls'></div>
        <div class='row heading'>
            <div class='col-sm-4'>
                <h3>ĐÀ LẠT, VIỆT NAM
                </h3>
            </div>
            <div class='col-sm-8'>
                <p>
                    Phòng Y3 Yoko
                </p>
            </div>
        </div>
        <div class='dock-content'>
            <a class='previous' href='javascript:;'>Previous
            </a>
            <a class='next' href='javascript:;'>Next
            </a>
            <ul class='thumbnails' style='width: 7800px'>



                <li>
                    <div class='thumbnail'>
                        <span class='hover-info'></span>
                        <a href='javascript:;' rel='1'>

                            <img src='/Yoko/YokoY3/image/y3.jpg' width="86" height="86" />
                        </a>
                    </div>

                </li>
                <li>
                    <div class='thumbnail'>
                        <span class='hover-info'></span>
                        <a href='javascript:;' rel='2'>

                            <img src='/Yoko/YokoY3/image/y33.jpg' width="86" height="86" />
                        </a>
                    </div>

                </li>

                <li>
                    <div class='thumbnail'>
                        <span class='hover-info'></span>
                        <a href='javascript:;' rel='3'>

                            <img src='/Yoko/YokoY3/image/5.jpg' width="86" height="86" />
                        </a>
                    </div>

                </li>

                <li>
                    <div class='thumbnail'>
                        <span class='hover-info'></span>
                        <a href='javascript:;' rel='4'>

                            <img src='/Yoko/YokoY3/image/6.jpg' width="86" height="86" />
                        </a>
                    </div>

                </li>
                <li>
                    <div class='thumbnail'>
                        <span class='hover-info'></span>
                        <a href='javascript:;' rel='5'>

                            <img src='/Yoko/CommonImage/phongbep.jpg' width="86" height="86" />
                        </a>
                    </div>

                </li>


                <li>
                    <div class='thumbnail'>
                        <span class='hover-info'></span>
                        <a href='javascript:;' rel='6'>

                            <img src='/Yoko/YokoY3/image/a.jpg' width="86" height="86" />
                        </a>
                    </div>

                </li>


                <li>
                    <div class='thumbnail'>
                        <span class='hover-info'></span>
                        <a href='javascript:;' rel='7'>

                            <img src='/Yoko/YokoY3/image/b.JPG' width="86" height="86" />
                        </a>
                    </div>

                </li>


                <li>
                    <div class='thumbnail'>
                        <span class='hover-info'></span>
                        <a href='javascript:;' rel='8'>

                            <img src='/Yoko/PhongVeSinh/y24.JPG' width="86" height="86" />
                        </a>
                    </div>

                </li>


                <li>
                    <div class='thumbnail'>
                        <span class='hover-info'></span>
                        <a href='javascript:;' rel='9'>

                            <img src='/Yoko/PhongVeSinh/y25.JPG' width="86" height="86" />
                        </a>
                    </div>

                </li>
                  <li>
                    <div class='thumbnail'>
                        <span class='hover-info'></span>
                        <a href='javascript:;' rel='10'>

                            <img src='/Yoko/PhongVeSinh/y26.JPG' width="86" height="86" />
                        </a>
                    </div>

                </li>
                <% for (int i = 1; i <= 54; i++)
                   { %>
                <li>
                    <div class='thumbnail'>
                        <span class='hover-info'></span>
                        <a href='javascript:;' rel='<%= i+10 %>'>

                            <img src='<%= "/Yoko/CommonImage/" + i + ".JPG" %>' width="86" height="86" />
                        </a>
                    </div>



                </li>

                <% } %>
            </ul>
        </div>
    </div>
    <div class='slider-holder'>
        <ul class='slideshow'>

            <li>

                <img src='/Yoko/YokoY3/image/y3.jpg' />
            </li>
            <li>
                <img src='/Yoko/YokoY3/image/y33.jpg' />
            </li>
            <li>
                <img src='/Yoko/YokoY3/image/5.jpg' />
            </li>
            <li>
                <img src='/Yoko/YokoY3/image/6.jpg' />
            </li>
            <li>
                <img src='/Yoko/CommonImage/phongbep.jpg' />
            </li>
            <li>
                <img src='/Yoko/YokoY3/image/a.jpg' />
            </li>
                   <li>
                <img src='/Yoko/YokoY3/image/b.jpg' />
            </li>
            <li>
                <img src='/Yoko/PhongVeSinh/y24.JPG' />
            </li>
            <li>
                <img src='/Yoko/PhongVeSinh/y25.JPG' />
            </li>
            <li>
                <img src='/Yoko/PhongVeSinh/y26.JPG' />
            </li>
            <% for (int i = 1; i <= 54; i++)
               { %>
            <li>
                <img src='<%= "/Yoko/CommonImage/" + i + ".JPG" %>' />


            </li>

            <% } %>
        </ul>
    </div>




</body>
