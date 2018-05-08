<%@ Page Title="" Language="C#" MasterPageFile="~/Amigo/amigo.Master" AutoEventWireup="true" CodeBehind="ThongTinAmigoEn.aspx.cs" Inherits="Housing.Amigo.ThongTinAmigoEn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <link rel="stylesheet" type="text/css" href="/HoiDapYoKo/font-awesome/css/font-awesome.min.css" />
    <link href="/stylesheets/cssweb.css" rel="stylesheet" />
    <h2 class="tittle">AMIGO HOUSE</h2>

    <style>
        .a img {
            width: 100%;
            height: auto;
        }

        .bgimg {
            background-position: center;
            background-repeat: no-repeat;
            background-image: url("anhnen.png");
            background-size: 100%;
        }

        h6 {
            font-size: 45px;
            font-weight: 900;
        }

        h6 {
            font-size: 16px;
        }

        .w3-serif {
            font-family: serif;
        }

        h1, h2, h3, h4, h6, h6 {
            font-weight: 400;
            margin: 10px 0;
        }

        .w3-wide {
            letter-spacing: 4px;
        }

        .menu {
            display: none;
        }

        @font-face {
            font-family: Znikomit;
            src: url(../Happi/VNF-Znikomit.ttf);
        }
    </style>


    <div class="w3-sand w3-grayscale w3-large">

        <div class="container" style="width: 99%">
            <div style="">
                <div class="w3-container" id="menu" style="margin-top: 20px; margin-left: 10px">
                    <div class="w3-content" style="max-width: 100%">
                        <h6 style="font-size: 16px"><b>🏠 Amigos Vung Tau Homestay  </b></h6>
                        <div class="w3-panel w3-leftbar w3-light-grey" style="margin-left: 22px">

                            <p class="w3-text-grey">
                                ✨ Located in the city center - only 5 minutes away from the beach –An affordable vacation home when coming to Vung Tau.

                            </p>
                            <br />

                            <p class="w3-text-grey">
                                ✨ Near the coach station, restaurants and entertainment area. Local markets and supermarket are only within walking distance, very quiet area.
                            </p>
                            <br />
                            <p class="w3-text-grey">✨ Newly built , cozy and nicely decorated homestay.</p>
                            <br />

                            <p class="w3-text-grey">✨ Fully furnished with all furniture and amenities (TV, refrigerator, air conditioner, wifi, cable, solar water heater ...) so you feel welcomed and comfortable like home..</p>
                            <br />
                            <p class="w3-text-grey">✨ Capacity of 8-10 persons.</p>
                            <br />
                            <p class="w3-text-grey">💕 2 bedrooms (1 dorm room with 4 bunk beds x 1m2 and 1 dorm room with 2 bunk beds x 1m4).</p>
                            <br />
                            <p class="w3-text-grey">💕 Dining room.</p>
                            <br />
                            <p class="w3-text-grey">💕 2 toilet.</p>
                            <br />
                            <p class="w3-text-grey">💕 And the kitchen is well equipped with kitchen appliances suitable for family or group. </p>
                            <br />

                        </div>

                        <h6 style="font-size: 16px"><b>🎐 Here you can go to the market to buy seafood and ingredients to held BBQ by yourself: </b></h6>
                        <div class="w3-panel w3-leftbar w3-light-grey" style="margin-left: 22px">
                            <p>
                                🆓 Free wifi.
                        <br />
                                🆓
                           Free oven and BBQ tools. 
                        <br />
                                🆓
                           Free shampoo, conditioner, soap, always full in standing shower bathroom.
                        <br />
                                🆓
                            Free air-conditioner.
                        <br />
                           </p>
                        </div>

                        <br />
                        <div class="w3-panel w3-leftbar w3-light-grey" style="margin-left: 22px">
                           <h6 style="font-size: 16px"><b>🎐 Daily rent: </b></h6>
                            <div style ="padding-left  :25px">
                                <b>Weekday:</b> 800.000 vnd/night (Sunday to Thursday)
                                <br />
                                <b>Weekend:</b> 1.000.000 vnd/night (Friday to Saturday)
                                <br />
                                🌟 <b>On the occasion of Tet</b> Amigos Homestay will charge an extra 200.000 vnd per night.
                            </div>
                        </div>
                        <br />
                        <div style="background-color: gray; height: 2px"></div>
                        <div style="margin: auto; text-align: center">
                            <p class="w3-text-grey">

                                <br />
                                ♥️&nbsp Inbox Fanpage: <a href="https://www.facebook.com/amigohomestay"><span style="color: blue">Amigo House</span></a>

                                <br />
                                ♥️&nbsp HotLine:
                                 <b>0868.248.396 (Mr.Tuấn)</b> - <b>0914.162.244 (Ms.Phụng)</b>


                                <br />
                                <%--  <span style="color: blue">0122.794.3890 (Ms.Nhi)</span><br />
                            <span style="color: blue">0868.248.396 (Mr. Tuấn)</span><br />--%>
                        ♥️&nbsp Email: <a href="amigohomestay@gmail.com"><span style="color: blue">amigohomestay@gmail.com</span></a><br />
                                <%-- 💒 Địa chỉ La La House: <a href="https://www.google.com/maps/place/539%2F11+%C4%90%C6%B0%E1%BB%9Dng+Tr%E1%BA%A7n+H%C6%B0ng+%C4%90%E1%BA%A1o,+C%E1%BA%A7u+Kho,+Qu%E1%BA%ADn+1,+H%E1%BB%93+Ch%C3%AD+Minh,+Vietnam/@10.756971,106.6843923,17z/data=!3m1!4b1!4m5!3m4!1s0x31752f0535f33fe5:0x770c8edcf0b99dae!8m2!3d10.7569657!4d106.686581"><span style="color: blue">539/11 Trần Hưng Đạo, Phường Cầu Kho, Quận 1, HCM.</span></a><br />--%>
                            </p>
                        </div>
                        <div style="background-color: gray; height: 2px; margin-top: 10px"></div>
                    </div>
                    <div style="text-align: center">
                    </div>
                </div>
            </div>

            <br />



        </div>
    </div>
</asp:Content>
