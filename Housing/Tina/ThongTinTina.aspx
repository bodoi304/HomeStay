<%@ Page Title="" Language="C#" MasterPageFile="~/Tina/Tina.Master" AutoEventWireup="true" CodeBehind="ThongTinTina.aspx.cs" Inherits="Housing.Tina.ThongTinTina" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link rel="stylesheet" type="text/css" href="/HoiDapYoKo/font-awesome/css/font-awesome.min.css" />
    <link href="/stylesheets/cssweb.css" rel="stylesheet" />
    <h2 class="tittle">TINA HOUSE</h2>

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
                        <h6 style="font-size: 16px"><b>🏠 Tina House - dành cho cặp đôi 2 người đến nhóm bạn 20 người tới để tận hưởng sự an nhiên, yên bình của người dân xứ biển Phước Hải - Vũng Tàu  </b></h6>
                        <div class="w3-panel w3-leftbar w3-light-grey" style="margin-left: 22px">

                            <p class="w3-text-grey">
                                🌵 TINA house là Homestay được thiết kế theo phong cách “SỐNG CHẬM” - ngôi nhà bé xinh nằm ngay MẶT BIỂN Phước Hải -Vũng Tàu, nằm trong khu dân cư làng chài tấp nập KHÔNG giống như mấy Resort ở cách xa khu dân cư đâu nha các bạn. Từ Tina House các bạn có thể đi bộ ra chợ lớn đông vui, chạy ào ra biển, ra các quán bán đồ hải sản tươi ngon ăn tại chỗ, có tiệm tạp hoá đầy đủ, Nếu bạn nào thích có thể vào nhà dân mua cá đuối khô hay nước mắm Phước Hải ăn ngon tới giọt cuối cùng!.

                            </p>
                            <br />

                            <p class="w3-text-grey">
                                🌵 Chỉ Cách SÀI GÒN 100km chạy xe, nhưng đến đây mới tận mắt thấy Mọi thứ diễn ra 1 cách yên bình, dường như không có khái niệm tấp nập, ồn ã . Giống như Một thiên đường nổi trên bờ BIỂN thực sự vậy - quanh Tina House không thiếu thứ gì, sáng có món Hủ Tiếu sườn, hủ tiếu gà, ngon bá cháy, Tối đến đi bộ vài bước là gặp dãy hàng quán bán đồ Hải Sản chế biến tại chỗ tươi ngon, mướn xe đạp ở TINA đi xa 1 xíu có nơi bán Lẩu đuôi bò 150k/1 nồi cho 4 người thưởng thức no nê, mọi thứ quá rẻ và sạch sẽ! ĐẶC BIỆT con đường NGÔ QUYỀN phía sau nhà TINA tập hợp vô vàn đồ ăn vặt ngon mà rẻ nữa (Ly nước cam vắt size L to bự chà bá mà có 10k/1 ly à). Người dân quanh đây hiền lành & thật thà lắm tiếp xúc đủ lâu là muốn dắt tay nhau rời thành phố về đây ở tới già luôn.
                            </p>
                            <br />
                            <p class="w3-text-grey">🌵 LÀNG CHÀI PHƯỚC HẢI - mộc mạc như cái tên vậy, đây cũng đang là một cái phễu hun hút cuốn con người lại gần với thiên nhiên, gội rửa sạch ồn ào của phố thị bằng cái vẫy tay táo bạo của sóng biển, của cung đường đèo nước ngọt đẹp đến nao lòng.</p>
                            <br />

                           
                        </div>
                                          <h6 style="font-size: 16px"><b>🎐 Cách thức đi lại từ SÀI GÒN: </b></h6>
                        <div class="w3-panel w3-leftbar w3-light-grey" style="margin-left: 22px">
                            <p>
                                🍀 Các bạn có thể đi xe PHÚC VINH - bến xe miền đông, số điện thoại: <b>0908.649.488</b> xe sẽ đưa bạn tới Phước Hải, và có cả chiều về lại Sài Gòn nha.
                        <br />
                               🍀 Các bạn có thể tự đi xe máy, hoặc đi xe ô tô riêng thẳng tới TINA HOUSE ạ.
                        <br />
                                🍀 Thuê xe riêng Grab = <b>1 triệu/1 chiều</b>, bạn nào có xe riêng thì chạy thẳng tới Long Hải hỏi đường tới bờ kè Phước Hải tầm 8km là thấy Tina House .
                        <br />
                                🍀 Xe: Phương Trang, Hotline: <b>19006067</b> - Sài Gòn ra bến xe Bà Rịa: <b>90K</b> - gọi taxi Bà Rịa: <b>064.3.82.74.74</b> đến bờ kè Phước Hải -Tina House giá: <b>180K</b>.
                        <br />
                            🍀 Xe: Toàn thắng, Hotline: <b>0283.914.4051</b> , địa chỉ: 21 Nguyễn Tài Bình, Q1- Sài Gòn ra bến xe Bà Rịa: <b>90K - taxi đến bờ kè Phước Hải -Tina House giá: <b>180K</b>.
                                <br />     <br />
                               <span style="color :red ;font-weight :bold ">(Lưu ý: vừa xuống bến xe là bắt luôn taxi đi thẳng đến Tina House nha, mọi người đừng để Phương Trang trung chuyển vì chỉ đưa đến nửa đoạn đường và phải bắt xe ôm thì mệt lắm ạ )</span> 
                            </p>
                        </div>

                        <br />

                        <h6 style="font-size: 16px"><b>🎐 Mọi thứ ở Tina House đều hoặt động theo hình thức "sống chậm",bạn có thể đi chợ tự về nấu nướng, ở Tina bạn được FREE: </b></h6>
                        <div class="w3-panel w3-leftbar w3-light-grey" style="margin-left: 22px">
                            <p>
                                🍀 Free tủ lạnh.
                        <br />
                               🍀
                           Free Wifi siêu khoẻ.
                        <br />
                                🍀
                            Free gạo cho các bạn muốn trốn vài ngày.
                        <br />
                                🍀
                            Free cà phê sạch.
                        <br />
                            🍀 Free dầu gội,dầu xả,xà bông, luôn đầy đủ trong phòng tắm.
                        <br />
                                🍀  Free khu bếp đầy đủ dụng cụ, BBQ cho các bạn.
                                  <br />
                                🍀  Xung quanh Tina có đầy đủ quán ăn uống đêm, sáng, đầu đường có quán cà phê view biển đẹp lắm.
                            </p>
                        </div>

                        <br />

                        <div class="w3-panel w3-leftbar w3-light-grey" style="margin-left: 22px">
                           <h6 style="font-size: 16px"><b>🎐 Tina có nguyên căn nhà nhỏ độc lập ở 2 đến 7 người (Có phòng khách, phòng bếp, Phòng ngủ 2 giường đôi, 3 toilet) </b></h6>
                     
                             <h6 style="font-size: 16px"><b>🎐 Tina có 1 căn nhà lớn có giường dorm đơn, dorm đôi nằm trong căn nhà lớn có sức chứa tới 10 người </b></h6>
                        </div>
                        <br />
                        <div style="background-color: gray; height: 2px"></div>
                        <div style="margin: auto; text-align: center">
                            <p class="w3-text-grey">

                                ♥️&nbsp Inbox Fanpage: <a href="https://www.facebook.com/tinahomestay/" target ="_blank" ><span style="color: blue">Tina House</span></a>

                                <br />
                                ♥️&nbsp HotLine:
                                 <b>0868.248.396 (Mr.Tuấn)</b>


                                <br />


                             
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
