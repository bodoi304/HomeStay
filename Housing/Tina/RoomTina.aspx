<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RoomTina.aspx.cs" Inherits="Housing.Tina.RoomTina" %>

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
    <div class='menu' style="text-align :center; background :#ff72db ">
        <a class='home-link' href='/'></a>
        <ul class='main-menu' >
            <li class='menu-section towns ' >
                <a class='menu-icon' href="/Tina">
                    <span class='nav-title' style ="color :white ;width :150px">Trang chủ
                    </span>
                </a>
       
            </li>
         

        </ul>
        <ul class='right-menu'>
          
          
            <li class='collapsed-menu'>
                <a class='menu-item' href='javascript:;'>Pages
                </a>
                <div class='sub-menu'>
                    <ul>
                        <li>
                            <a href='/Tina/ThongTinTina.aspx'>Hướng dẫn đến Tina
                            </a>
                        </li>
                      
                    </ul>
                </div>
            </li>
        </ul>
        <a class='toggle-menu' href='javascript:;'>Toggle menu
        </a>
    </div>
    <div class='dock'>
        <a class='toggle-dock' href='javascript:;'></a>
        <div class='controls'></div>
        <div class='row heading'>
            <div class='col-sm-4'>
                <h3><% if (lstAnh.Count > 0)
                       { %>
                    <%= lstAnh[0].VITRI_IMAGE  %>
                    <% } %>
                </h3>
            </div>
            <div class='col-sm-8'>
                <p>
                    <% if (lstAnh.Count > 0)
                       { %>
                    <%=  lstAnh[0].TITLE_IMAGE %>
                    <% } %>
                </p>
            </div>
        </div>
        <div class='dock-content'>
            <a class='previous' href='javascript:;'>Previous
            </a>
            <a class='next' href='javascript:;'>Next
            </a>
            <ul class='thumbnails' style='width: 9000px'>
                <% for (int i = 0; i < lstAnh.Count; i++)
                   { %>


                <li>
                    <div class='thumbnail'>
                        <span class='hover-info'><%= lstAnh[i].IMAGE_HOVER %>
                        </span>
                        <a href='javascript:;' rel='<%= i+1 %>'>

                            <img src='<%= lstAnh[i].IMAGE_THUMB_URL %>' width="86" height="86" />
                        </a>
                    </div>

                </li>

                <% } %>
            </ul>
        </div>
    </div>
    <div class='slider-holder'>
        <ul class='slideshow'>
            <% for (int i = 0; i < lstAnh.Count; i++)
               { %>
            <li>

                <img src='<%= lstAnh[i].IMAGE_URL %>' />
            </li>
            <% } %>
        </ul>
    </div>

</body>
