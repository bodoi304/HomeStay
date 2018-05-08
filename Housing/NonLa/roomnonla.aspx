<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="roomnonla.aspx.cs" Inherits="Housing.NonLa.roomnonla" %>

<!DOCTYPE html>

<head>
    <title>Nón Lá Houzing
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
    <div class='menu' style="text-align: center; background: #d0861d">
        <a class='home-link' href='/'></a>
        <ul class='main-menu'>
            <li class='menu-section towns '>
                <a class='menu-icon' href="/NonLa/Index.aspx">
                    <span class='nav-title' style="color: white; width: 150px">Trang chủ
                    </span>
                </a>

            </li>


        </ul>
        <ul class='right-menu'>


          
        </ul>
        <a class='toggle-menu' href='javascript:;'>Toggle menu
        </a>
    </div>
    <div class='dock'>
        <a class='toggle-dock' href='javascript:;'></a>
        <div class='controls'></div>
        <div class='row heading'>
            <div class='col-sm-4'>
                <h3>SẢI GÒN, VIỆT NAM
                </h3>
            </div>
            <div class='col-sm-8'>
                <p>
                   Nón Lá House
                </p>
            </div>
        </div>
        <div class='dock-content'>
            <a class='previous' href='javascript:;'>Previous
            </a>
            <a class='next' href='javascript:;'>Next
            </a>
            <ul class='thumbnails' style='width: 7500px'>

                <% for (int i = 1; i <= 25; i++)
                   { %>
                <li>
                    <div class='thumbnail'>
                        <span class='hover-info'>Nón Lá</span>
                        <a href='javascript:;' rel='<%= i %>'>

                            <img src='<%= "/NonLa/AnhPhong/" + i + ".JPG" %>' width="86" height="86" />
                        </a>
                    </div>



                </li>

                <% } %>
            </ul>
        </div>
    </div>
    <div class='slider-holder'>
        <ul class='slideshow'>


            <% for (int i = 1; i <= 25; i++)
               { %>
            <li>
                <img src='<%= "/NonLa/AnhPhong/" + i + ".JPG" %>' />


            </li>

            <% } %>
        </ul>
    </div>




</body>

