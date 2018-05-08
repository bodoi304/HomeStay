<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index1.aspx.cs" Inherits="Housing.index" %>


<!DOCTYPE html>
<head>
    <title>Big Stories
    </title>
    <meta content='text/html; charset=utf-8' http-equiv='Content-Type' />
    <link href='/images/favicon.png' rel='shortcut icon' />
    <meta content='Big Stories' property='og:title' />
    <meta content='http://bigstories.com.au/images/big_stories_for_fb.gif' property='og:image' />
    <meta content='Big Stories Small Towns' property='og:description' />
    <meta content='width=device-width, initial-scale=1' name='viewport' />
    <script class='jwPlayer' src='/swf/player.swf' type='application/swf'></script>
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
    <link href="/stylesheets/public.css?1454891014" media="screen" rel="stylesheet" type="text/css" />
    <link href="/stylesheets/bootstrap.min.css?1454891014" media="screen" rel="stylesheet" type="text/css" />
    <link href="/stylesheets/anythingslider.css?1454891014" media="screen" rel="stylesheet" type="text/css" />
    <link href="/stylesheets/bigstories.css?1454891014" media="screen" rel="stylesheet" type="text/css" />
    <script src='http://use.typekit.com/gwm5ody.js' type='text/javascript'></script>
    <!-- /<script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script> -->
    <script type='text/javascript'>
        //<![CDATA[
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-311157-21', 'auto');
        ga('send', 'pageview');
        //]]>
    </script>
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
<body id='index' ontouchmove='BlockMove(event);'>
    <div class='menu'>
        <a class='home-link' href='/'>Home
        </a>
        <ul class='main-menu'>
            <li class='menu-section towns'>
                <a class='menu-icon' href='javascript:;'>
                    <span class='nav-title'>Towns
                    </span>
                </a>
                <div class='sub-menu'>
                    <div class='sub-menu-label'>
                        <span>Towns
                        </span>
                        <span class='x-menu'></span>
                    </div>
                    <ul>
                        <li>
                            <a href='/towns/banlung'>Banlung
                                <span class='menu-quote'>Ratanakiri, Cambodia
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href='/towns/beaudesert'>Beaudesert
                                <span class='menu-quote'>Queensland, Australia
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href='/towns/coober-pedy'>Coober Pedy
                                <span class='menu-quote'>South Australia
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href='/towns/cowra'>Cowra
                                <span class='menu-quote'>New South Wales, Australia
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href='/towns/murray-bridge'>Murray Bridge
                                <span class='menu-quote'>South Australia
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href='/towns/port-augusta'>Port Augusta
                                <span class='menu-quote'>South Australia
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href='/towns/raja-ampat'>Raja Ampat
                                <span class='menu-quote'>West Papua, Indonesia
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href='/towns/raukkan'>Raukkan
                                <span class='menu-quote'>South Australia
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href='/towns/strathewen'>Strathewen
                                <span class='menu-quote'>Victoria, Australia
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href='/towns/bonkgud-namaus'>Bongkud-Namaus
                                <span class='menu-quote'>Sabah, Malaysia
                                </span>
                            </a>
                        </li>
                    </ul>
                    <div class='clear'></div>
                </div>
            </li>
            <li class='menu-section threads'>
                <a class='menu-icon' href='javascript:;'>
                    <span class='nav-title'>Collections
                    </span>
                </a>
                <div class='sub-menu'>
                    <div class='sub-menu-label'>
                        <span>Collections
                        </span>
                        <span class='x-menu'></span>
                    </div>
                    <ul>
                        <li>
                            <a href='/story/old-folks-home-1'>Wami Kata, Port Augusta
                                <span class='menu-quote'>Indigenous Old Folks Home
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href='/story/mens-shed'>The Men's Shed, Port Augusta
                                <span class='menu-quote'>Men In Sheds, Building Community
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href='/story/elders'>The Oldies, Murray Bridge
                                <span class='menu-quote'>Memories from long term residents
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href='/story/longriders'>Longriders, Murray Bridge
                                <span class='menu-quote'>Christian motorcycle club
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href='/story/young-fathers'>Young Fathers, Port Augusta
                                <span class='menu-quote'>Culture, Tradition And Fatherhood
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href='/story/two-villages'>Two Villages, Banlung
                                <span class='menu-quote'>The Story Of Lunn And Phnom Villages
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href='/story/recovery'>Recovery, Strathewen
                                <span class='menu-quote'>A Community Renews After Black Saturday Fires
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href='/story/blackbirded-beaudesert'>Blackbirded, Beaudesert
                                <span class='menu-quote'>150 Years of Vanuatu and South Sea Islander History
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href='/story/young-mens-group'>Young Men's Group, Beaudesert
                                <span class='menu-quote'>Indigenous Mentoring Program
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href='/story/a-history-lesson-beaudesert'>A History Lesson, Beaudesert
                                <span class='menu-quote'>Kids face to face with living history
                                </span>
                            </a>
                        </li>
                    </ul>
                    <div class='clear'></div>
                </div>
            </li>
            <li class='menu-section media'>
                <a class='menu-icon' href='javascript:;'>
                    <span class='nav-title'>Media
                    </span>
                </a>
                <div class='sub-menu'>
                    <div class='sub-menu-label'>
                        <span>Media
                        </span>
                        <span class='x-menu'></span>
                    </div>
                    <ul>
                        <li class='media_0'>
                            <a href='/media/filmmaker_films'>
                                <span class='icon'></span>
                                <span class='text'>Filmmaker films
                                </span>
                            </a>
                        </li>
                        <li class='media_1'>
                            <a href='/media/community_made'>
                                <span class='icon'></span>
                                <span class='text'>Community made
                                </span>
                            </a>
                        </li>
                        <li class='media_2'>
                            <a href='/media/archival_films'>
                                <span class='icon'></span>
                                <span class='text'>Archival films
                                </span>
                            </a>
                        </li>
                        <li class='media_3'>
                            <a href='/media/photo_galleries'>
                                <span class='icon'></span>
                                <span class='text'>Photo galleries
                                </span>
                            </a>
                        </li>
                    </ul>
                    <div class='clear'></div>
                </div>
            </li>
            <li class='menu-section themes'>
                <a class='menu-icon' href='javascript:;'>
                    <span class='nav-title'>Themes
                    </span>
                </a>
                <div class='sub-menu'>
                    <div class='sub-menu-label'>
                        <span>Themes
                        </span>
                        <span class='x-menu'></span>
                    </div>
                    <ul>
                        <li>
                            <a href='/theme/Love'>Love
                            </a>
                        </li>
                        <li>
                            <a href='/theme/Work'>Work
                            </a>
                        </li>
                        <li>
                            <a href='/theme/Family'>Family
                            </a>
                        </li>
                        <li>
                            <a href='/theme/Dreams'>Dreams
                            </a>
                        </li>
                        <li>
                            <a href='/theme/History'>History
                            </a>
                        </li>
                        <li>
                            <a href='/theme/Community'>Community
                            </a>
                        </li>
                    </ul>
                    <div class='clear'></div>
                </div>
            </li>
        </ul>
        <ul class='right-menu'>
            <li>
                <a class='share-button' href='javascript:;'>Share
                </a>
            </li>
            <li class='collapsed-menu'>
                <a class='menu-item' href='javascript:;'>Pages
                </a>
                <div class='sub-menu'>
                    <ul>
                        <li>
                            <a href='/page/about-us'>About Us
                            </a>
                        </li>
                    </ul>
                </div>
            </li>
        </ul>
        <a class='toggle-menu' href='javascript:;'>Toggle menu
        </a>
    </div>
    <div class="row" id="infinite">
        <div class='col-lg-2 col-md-3 col-sm-4 col-xs-6 grid-item bs-square'>
            <a href='/'>
                <span class='placeholder'></span>
                <div class='img-holder'>
                    <img alt='Big Stories' height='320' src='/images/bs-logo.png' width='320' />
                </div>
            </a>
        </div>
        <div class='col-lg-2 col-md-3 col-sm-4 col-xs-6 grid-item'>
            <a href='/film/film.aspx'>
                <span class='placeholder'></span>

                <div class='img-holder'>
                    <img alt='The View From Here - a film about Big Stories, Small Towns' height='127' src='thumb/images.jpg' width='188' />
                </div>
                <div class='rollover'>
                    <span class='quote'>Every community has a living memory
                    </span>
                    <span class='name true'>The View From Here - a film about Big Stories, Small Towns
                    </span>
                    <span class='filmmaker_films icon'></span>
                </div>
            </a>
        </div>

        <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6 grid-item">
            <a href="Gallary/Galary.aspx">
                <span class="placeholder"></span>
                <div class="img-holder">

                    <img alt="Images by Adithio Noviello, North Waigeo, Raja Ampat" height="127" src="thumb/grid_thumb.jpg" width="188">
                </div>
                <div class="rollover">
                    <span class="quote">Traditional Papuan band Sanggar Sarak from Village Yenbekaki
                    </span>
                    <span class="name">Images by Adithio Noviello, North Waigeo, Raja Ampat
                    </span>
                    <span class="icon photo_galleries"></span>
                    <span class="duration" title="duration">02:00
                    </span>
                </div>
            </a>
        </div>

    </div>
    <script type="text/javascript">
        //<![CDATA[
        $('#infinite').pageless({ "totalPages": 10, "loaderMsg": "Loading more results", "url": "/infinite" });
        //]]>
    </script>

    <div id='warning'>
        Big Stories wishes to advise Aboriginal and Torres Strait Islander visitors that this website may contain images or names of deceased people.
        <span></span>
    </div>
    <iframe src="https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fyokohouse01%2Fposts%2F1277109205743588&width=500" width="500" height="771" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>
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
                    description: "YOKO Houzing"
                },
                email: {
                    title: "Come visit Big Stories Small Towns",
                    description: "Big Stories Small Towns \n http://bigstories.com.au/"
                }
            }
        };

        var share_button = new Share(".share-button", config);

    });
    //]]>
</script>

