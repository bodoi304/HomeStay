<%@ Page Title="" Language="C#" MasterPageFile="~/Amigo/amigo.Master" AutoEventWireup="true" CodeBehind="ThongTinAmigo.aspx.cs" Inherits="Housing.Amigo.ThongTinAmigo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" type="text/css" href="/HoiDapYoKo/font-awesome/css/font-awesome.min.css" />
    <link href="/stylesheets/cssweb.css" rel="stylesheet" />
    <h2 class="tittle">AMIGO HOMESTAY</h2>

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

                <%--   <div class="w3-container" id="about">
                    <div class="w3-content" style="max-width: 100%">


                        <div class="w3-panel w3-leftbar w3-light-grey text-border-solid-blue" style="background-color: rgb(207, 239, 255) !important;">
                            <p style="font-size: 15px">

                                <br />
                                &nbsp&nbsp&nbsp&nbsp 🎋 Bạn đã bắt đầu chán những khách sạn đắt tiền, kiểu cách và đang tìm kiếm một nơi nho nhỏ, xinh xắn và ấm áp cùng những trải nghiệm văn hóa mới lạ?
                            <br />
                                <br />
                                &nbsp&nbsp&nbsp&nbsp 🎋 Bạn bắt đầu thèm những món ăn Việt Nam và mong muốn được học hỏi đôi chút kỹ thuật nấu bếp từ người bản địa?
                            <br />
                                <br />
                                &nbsp&nbsp&nbsp&nbsp 🎋 Đối với bạn, chỉ cần một buổi chiều nhẹ nhàng với một tách trà hoa thơm lừng, lắng nghe từng nốt nhạc nhẹ nhàng của The Beatles và lặng lẹ hòa mình vào màu xanh của hoa lá thiên nhiên dưới ánh nắng ban mai nhè nhẹ cũng đủ khiến bạn thấy hạnh phục?
                            <br />
                                <br />


                                &nbsp&nbsp&nbsp&nbsp 🎋  Hay đơn giản bạn chỉ muốn lười biếng nằm dài trên chiếc ghế sofa ấm áp và thưởng thức cuốn sách yêu thích mà ngày thường bạn chưa có thời gian chiêm nghiệm và tập sống chậm lại?

                            </p>

                        </div>

                    </div>
                </div>--%>


                <div class="w3-container" id="menu" style="margin-top: 20px; margin-left: 10px">
                    <div class="w3-content" style="max-width: 100%">
                        <h6 style="font-size: 16px"><b>🏠 ...Ăn chơi thả ga tại homestay “mới toành toanh” tại Vũng Tàu  </b></h6>
                        <div class="w3-panel w3-leftbar w3-light-grey" style="margin-left: 22px">

                            <p class="w3-text-grey">
                                🌵 Vũng Tàu chẳng hào nhoáng, nhộn nhịp như Sài Gòn; cũng chẳng mộng mơ, lãng mạn như Đà Lạt, Sa Pa; ấy vậy mà lại làm người ta nhớ thương nhiều đến như thế. Là bởi càng đi, càng khám phá mới càng nhận ra những nét đẹp dịu dàng, duyên dáng và bình dị mà Vũng Tàu mang lại. Du khách cứ mải mê trong những vẻ đẹp ấy mà quên mất con đường về nhà.

                            </p>
                            <br />

                            <p class="w3-text-grey">
                                🌵 Nếu như gia đình bạn có cuộc hẹn với Vũng Tàu trong dịp Tết Nguyên Đán Mậu Tuất 2018 thì đừng nên bỏ lỡ Amigo VungTau Homestay vừa mới xây dựng xong. Đến với Homestay đẹp Vũng Tàu này, du khách sẽ cảm nhận được hết nét đẹp chân chất mà nồng hậu của vùng đất biển xinh đẹp này.
                            </p>
                            <br />
                            <p class="w3-text-grey">🌵 Homestay nằm ở địa chỉ 22/18/1 Nam Kì Khởi Nghĩa ngay trung tâm nên vô cùng thuận tiện cho du khách ghé thăm các điểm lân cận. Đặc biệt bạn chỉ mất 5 phút đi xe máy là có thể ra tới biển; hoặc có thể tản bộ ngắm biển cũng là cách vô cùng thú vị.</p>
                            <br />

                            <p class="w3-text-grey">🌵 Ghé thăm Amigo VungTau Homestay vào những ngày như thế này, du khách sẽ bất giác cảm nhận được sự bình dị trong cách xây dựng, lựa chọn thiết bị nội thất, cách bài trí trong mỗi căn phòng. Không hề có sự phá cách, không rườm rà cũng không cầu kỳ; người ta ví Amigo VungTau giống như một cô gái quê vừa gặp đã thấy gần gũi biết bao.</p>
                            <br />
                            <p class="w3-text-grey">🌵 Gam màu vàng nhẹ của bức tường kết hợp với gam màu vàng nghệ của bộ bàn ghế, chiếc tủ trong nhà bếp dường như khiến cho căn phòng trở nên ấm cúng và gần gũi hơn bao giờ hết.</p>
                            <br />
                            <p class="w3-text-grey">🌵 Cách bài trí, sắp xếp trong không gian phòng bếp khá đơn giản và gọn nhẹ nhưng lại đầy đủ tiện nghi có thể giúp cho bạn chuẩn bị bữa cơm thật tươn tất cho các thành viên trong chuyến đi. Thực sự khi bước vào căn phòng này, nhiều người có cảm giác như đang trở về ngôi nhà của mình.</p>
                            <br />
                            <p class="w3-text-grey">🌵 Đến với homestay Amigo VungTau, bạn sẽ nhận ra sự bình dị và giản đơn trong mỗi căn phòng. Chủ nhân của ngôi nhà này đã thiết kế và bài trí theo phong cách tối giản nhất để vừa mang đến sự gần gũi vừa khiến cho du khách thấy thoải mái khi ở.</p>
                            <br />
                            <p class="w3-text-grey">🌵  Mỗi chiếc giường đều được đồng bộ về gam màu của gối và ga trải; gam màu xanh nước biển dịu nhẹ dường như tượng trưng cho mảnh đất biển xinh đẹp.</p>
                            <br />
                            <p class="w3-text-grey">🌵 Mỗi căn phòng đều có hướng nhìn ra ban công giúp bạn có thể thư giãn và hít thở sau nhiều ngày rong ruổi khám phá Vũng Tàu. </p>
                            <br />
                            <p class="w3-text-grey">
                                🌵 Thật tuyệt vời nếu như được nghỉ ngơi cùng với gia đình hay bạn bè tại Amigo VungTau Homestay như thế này. 
Nếu thực sự có cảm tình đối với homestay vũng tàu giá rẻ này, bạn có thể liên hệ theo địa chỉ dưới đây để đặt phòng để tận hưởng chuyến đi Vũng Tàu một cách trọn vẹn nhất.
                            </p>
                            <br />
                            <p class="w3-text-grey">🌵 Sức chứa của homestay từ 8- 10 người nên bạn có thể đi theo đoàn, đi theo gia đình hoặc đi theo các cặp đôi đều vô cùng phù hợp. Chủ nhân của homestay thiết kế căn bếp riêng để cho bạn có thể thoải sức sáng tạo tài nghệ nấu nướng của mình. </p>


                            <br />
                        </div>

                        <h6 style="font-size: 16px"><b>🎐 Đến đây có thể tự đi chợ mua Hải Sản về tự nướng: </b></h6>
                        <div class="w3-panel w3-leftbar w3-light-grey" style="margin-left: 22px">
                            <p>
                                🆓 Free wifi.
                        <br />
                                🆓
                           Free dụng cụ nướng hải sản. 
                        <br />
                                🆓
                            Free bản ủi & cầu ủi có sẵn trong Amigo.
                        <br />
                                🆓
                            Free dầu gội,dầu xả,xà bông, luôn đầy đủ trong phòng tắm.
                        <br />
                                🆓
                            Free máy lạnh, Free hot water.
                        <br />

                            </p>
                        </div>

                        <br />
                        <div class="w3-panel w3-leftbar w3-light-grey" style="margin-left: 22px">
                           <h6 style="font-size: 16px"><b>🎐 Giá thuê nguyên căn: </b></h6>
                            <div style ="padding-left  :25px">
                                <b>Ngày thường:</b> 800k/đêm (thứ 2 – thứ 5)
                                <br />
                                <b>Cuối tuần:</b> 1.000k/đêm (thứ 6 – chủ nhật)
                                <br />
                                🌟 <b>Giá Lễ/Tết</b> phụ thu thêm 200.000/đêm ạ
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
