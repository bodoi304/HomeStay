﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="F1.ascx.cs" Inherits="Housing.Safa.F1.F1" %>



<%--<% for (int i = 1; i <= 18; i++)
   { %>
<div class=" filtr-item" data-category="3" data-sort="Industrial site">
    <a href='<%= "F1/image/" + i + ".JPG" %>' rel="title" class="b-link-stripe b-animate-go  thickbox" target="_blank">

        <figure>

            <img src='<%= "F1/image/" + i + ".JPG" %>' class="img-responsive" alt=" ">
        </figure>
    </a>

</div>
<% } %>

<% for (int i = 1; i <= 8; i++)
   { %>
<div class=" filtr-item" data-category="3" data-sort="Industrial site">
    <a href='<%= "/Safa/CommonImage/" + i + ".JPG" %>' rel="title" class="b-link-stripe b-animate-go  thickbox" target="_blank">

        <figure>

            <img src='<%= "/Safa/CommonImage/" + i + ".JPG" %>' class="img-responsive" alt=" ">
        </figure>
    </a>

</div>
<% } %>--%>
<script type="text/javascript">
    jssor_1_slider_init = function () {

        var jssor_1_SlideshowTransitions = [
          { $Duration: 1400, x: 0.25, $Zoom: 1.5, $Easing: { $Left: $Jease$.$InWave, $Zoom: $Jease$.$InSine }, $Opacity: 2, $ZIndex: -10, $Brother: { $Duration: 1400, x: -0.25, $Zoom: 1.5, $Easing: { $Left: $Jease$.$InWave, $Zoom: $Jease$.$InSine }, $Opacity: 2, $ZIndex: -10 } },
          { $Duration: 1500, x: 0.5, $Cols: 2, $ChessMode: { $Column: 3 }, $Easing: { $Left: $Jease$.$InOutCubic }, $Opacity: 2, $Brother: { $Duration: 1500, $Opacity: 2 } },
          { $Duration: 1500, x: 0.3, $During: { $Left: [0.6, 0.4] }, $Easing: { $Left: $Jease$.$InQuad, $Opacity: $Jease$.$Linear }, $Opacity: 2, $Outside: true, $Brother: { $Duration: 1000, x: -0.3, $Easing: { $Left: $Jease$.$InQuad, $Opacity: $Jease$.$Linear }, $Opacity: 2 } },
          { $Duration: 1200, x: 0.25, y: 0.5, $Rotate: -0.1, $Easing: { $Left: $Jease$.$InQuad, $Top: $Jease$.$InQuad, $Opacity: $Jease$.$Linear, $Rotate: $Jease$.$InQuad }, $Opacity: 2, $Brother: { $Duration: 1200, x: -0.1, y: -0.7, $Rotate: 0.1, $Easing: { $Left: $Jease$.$InQuad, $Top: $Jease$.$InQuad, $Opacity: $Jease$.$Linear, $Rotate: $Jease$.$InQuad }, $Opacity: 2 } },
          { $Duration: 1600, x: 1, $Rows: 2, $ChessMode: { $Row: 3 }, $Easing: { $Left: $Jease$.$InOutQuart, $Opacity: $Jease$.$Linear }, $Opacity: 2, $Brother: { $Duration: 1600, x: -1, $Rows: 2, $ChessMode: { $Row: 3 }, $Easing: { $Left: $Jease$.$InOutQuart, $Opacity: $Jease$.$Linear }, $Opacity: 2 } },
          { $Duration: 1600, y: -1, $Cols: 2, $ChessMode: { $Column: 12 }, $Easing: { $Top: $Jease$.$InOutQuart, $Opacity: $Jease$.$Linear }, $Opacity: 2, $Brother: { $Duration: 1600, y: 1, $Cols: 2, $ChessMode: { $Column: 12 }, $Easing: { $Top: $Jease$.$InOutQuart, $Opacity: $Jease$.$Linear }, $Opacity: 2 } },
          { $Duration: 1200, y: 1, $Easing: { $Top: $Jease$.$InOutQuart, $Opacity: $Jease$.$Linear }, $Opacity: 2, $Brother: { $Duration: 1200, y: -1, $Easing: { $Top: $Jease$.$InOutQuart, $Opacity: $Jease$.$Linear }, $Opacity: 2 } },
          { $Duration: 1500, x: -0.1, y: -0.7, $Rotate: 0.1, $During: { $Left: [0.6, 0.4], $Top: [0.6, 0.4], $Rotate: [0.6, 0.4] }, $Easing: { $Left: $Jease$.$InQuad, $Top: $Jease$.$InQuad, $Opacity: $Jease$.$Linear, $Rotate: $Jease$.$InQuad }, $Opacity: 2, $Brother: { $Duration: 1000, x: 0.2, y: 0.5, $Rotate: -0.1, $Easing: { $Left: $Jease$.$InQuad, $Top: $Jease$.$InQuad, $Opacity: $Jease$.$Linear, $Rotate: $Jease$.$InQuad }, $Opacity: 2 } },
          { $Duration: 1600, x: -0.2, $Delay: 40, $Cols: 12, $During: { $Left: [0.4, 0.6] }, $SlideOut: true, $Formation: $JssorSlideshowFormations$.$FormationStraight, $Assembly: 260, $Easing: { $Left: $Jease$.$InOutExpo, $Opacity: $Jease$.$InOutQuad }, $Opacity: 2, $Outside: true, $Round: { $Top: 0.5 }, $Brother: { $Duration: 1000, x: 0.2, $Delay: 40, $Cols: 12, $Formation: $JssorSlideshowFormations$.$FormationStraight, $Assembly: 1028, $Easing: { $Left: $Jease$.$InOutExpo, $Opacity: $Jease$.$InOutQuad }, $Opacity: 2, $Round: { $Top: 0.5 } } },
          { $Duration: 700, $Opacity: 2, $Brother: { $Duration: 1000, $Opacity: 2 } },
          { $Duration: 1200, x: 1, $Easing: { $Left: $Jease$.$InOutQuart, $Opacity: $Jease$.$Linear }, $Opacity: 2, $Brother: { $Duration: 1200, x: -1, $Easing: { $Left: $Jease$.$InOutQuart, $Opacity: $Jease$.$Linear }, $Opacity: 2 } }
        ];

        var jssor_1_options = {
            $AutoPlay: 0,
            $FillMode: 5,
            $SlideshowOptions: {
                $Class: $JssorSlideshowRunner$,
                $Transitions: jssor_1_SlideshowTransitions,
                $TransitionsOrder: 1
            },
            $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$
            }
        };

        var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

        /*#region responsive code begin*/
        /*remove responsive code if you don't want the slider scales while window resizing*/
        function ScaleSlider() {
            var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
            if (refSize) {
                refSize = Math.min(refSize, 900);
                jssor_1_slider.$ScaleWidth(refSize);
            }
            else {
                window.setTimeout(ScaleSlider, 30);
            }
        }
        ScaleSlider();
        $Jssor$.$AddEvent(window, "load", ScaleSlider);
        $Jssor$.$AddEvent(window, "resize", ScaleSlider);
        $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
        /*#endregion responsive code end*/
    };
    </script>
 <div id="jssor_1" style="position:relative;margin:0 auto;top:0px;left:0px;width:900px;height:900px;overflow:hidden;visibility:hidden;">
        <!-- Loading Screen -->
        <div data-u="loading" style="position:absolute;top:0px;left:0px;background:url('img/loading.gif') no-repeat 50% 50%;background-color:rgba(0, 0, 0, 0.7);"></div>
        <div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:900px;height:900px;overflow:hidden;">

<% for (int i = 1; i <= 18; i++)
               { %>
            <div>
                 
                <img data-u="image" src='<%= "F1/image/" + i + ".JPG" %>' />

            </div>
              <% } %>
      <% for (int i = 1; i <= 8; i++)
                   { %>
            <div>
                    <img data-u="image" src='<%= "/Safa/CommonImage/" + i + ".JPG" %>' />
        
            </div>
              
             <% } %>

        </div>
    <!-- Bullet Navigator -->
        <div data-u="navigator" class="jssorb072" style="position:absolute;bottom:12px;right:12px;" data-autocenter="1" data-scale="0.5" data-scale-bottom="0.75">
            <div data-u="prototype" class="i" style="width:24px;height:24px;font-size:12px;line-height:24px;">
                <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;z-index:-1;">
                    <circle class="b" cx="8000" cy="8000" r="6666.7"></circle>
                </svg>
                <div data-u="numbertemplate" class="n"></div>
            </div>
        </div>
    </div>
    <script type="text/javascript">jssor_1_slider_init();</script>


<%--  <% for (int i = 1; i <= 18; i++)
               { %>
            <div>
                
                <img data-u="image" src='<%= "F1/image/" + i + ".JPG" %>' />
            </div>
              <% } %>
      <% for (int i = 1; i <= 8; i++)
                   { %>
            <div>
                
                <img data-u="image" src='<%= "/Safa/CommonImage/" + i + ".JPG" %>' />
            </div>
              
             <% } %>--%>

<%--<div>
    <div class='dock'>
        <a class='toggle-dock' href='javascript:;'></a>
        <div class='controls'></div>
        <div class='row heading'>
            <div class='col-sm-4'>
                <h3>TẢ VAN, SAPA, LÀO CAI
                </h3>
            </div>
            <div class='col-sm-8'>
                <p>
                    Phòng Safa
                </p>
            </div>
        </div>
        <div class='dock-content'>
            <a class='previous' href='javascript:;'>Previous
            </a>
            <a class='next' href='javascript:;'>Next
            </a>
            <ul class='thumbnails' style='width: 6500px'>
                <% for (int i = 1; i <= 18; i++)
                   { %>


                <li>
                    <div class='thumbnail'>

                        <a href='javascript:;' rel='<%= (i-1) + 1 %>'>

                            <img src='<%= "F1/image/" + i + ".JPG" %>' width="86" height="86" />
                        </a>
                    </div>

                </li>

                <% } %>
                <% for (int i = 1; i <= 8; i++)
                   { %>


                <li>
                    <div class='thumbnail'>

                        <a href='javascript:;' rel='<%= 18+i %>'>

                            <img src='<%= "/Safa/CommonImage/" + i + ".JPG" %>' width="86" height="86" />
                        </a>
                    </div>

                </li>

                <% } %>
            </ul>
        </div>
    </div>
    <div class='slider-holder'>
        <ul class='slideshow'>

            <% for (int i = 1; i <= 18; i++)
               { %>
            <li>

                <img src='<%= "F1/image/" + i + ".JPG" %>'>
            </li>
            <% } %>

            <% for (int i = 1; i <= 8; i++)
               { %>
            <img src='<%= "/Safa/CommonImage/" + i + ".JPG" %>'>
            <% } %>
        </ul>
    </div>
</div>--%>
