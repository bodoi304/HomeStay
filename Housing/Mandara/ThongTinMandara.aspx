<%@ Page Title="" Language="C#" MasterPageFile="~/Mandara/Mandaramaster.Master" AutoEventWireup="true" CodeBehind="ThongTinMandara.aspx.cs" Inherits="Housing.Mandara.ThongTinMandara" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" type="text/css" href="/HoiDapYoKo/font-awesome/css/font-awesome.min.css" />
    <link href="/stylesheets/cssweb.css" rel="stylesheet" />
    <div class="container">
        <h2 class="tittle">NGÔI NHÀ ĐẸP NHƯ MƠ Ở TỈNH VĨNH PHÚC </h2>
        <style>
            body {
                line-height: 29px;
                background-color: #ebfaf2;
            }

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


        <div class="w3-sand w3-grayscale w3-large" style="font-size: 16px">

            <div class="container" style="width: 99%">
                <br />
                <br />

                <div style="">

                    <div class="w3-container" id="about">
                        <div class="w3-content" style="max-width: 100%">


                            <div class="w3-panel w3-leftbar w3-light-grey text-border-solid-blue">
                                <p style="font-size: 16px">

                                    <br />
                                    &nbsp&nbsp&nbsp&nbsp Đến để tận hưởng vẻ đẹp các khu vực lận cận như Thị trấn núi tam đảo, danh lam thắng cảnh Tây thiên - Thiền viện An Tâm (chùa ni) nơi có tượng Phật nằm dài 19m , Thiền viện Trúc Lâm nơi chiêm bái pho tượng bằng đá sapphire quý hiếm nặng 31 tấn - hình Đức Phật Tổ Như Lai đang ngồi kiết già thuở xưa Ngài nhập định 49 ngày dưới cây bồ-đề. (chùa tăng ), Hồ Đại Lải và thành phố Vĩnh Yên xinh đẹp.
             
                                </p>

                            </div>

                        </div>
                    </div>

                    <%--              <div style="text-align: center">
                        <img src="/Safa/18516264_1347932368655162_160061118_n.png" />
                    </div>--%>

                    <div class="w3-container" id="menu">
                        <div class="w3-content" style="max-width: 100%">
                            <div>
                                <h6><b>
                                    <img src="../icon/arrow-38-green.png" width="12" height="12" style="margin-right: 5px; margin-bottom: 2px" />
                                    ĐẾN MANDARA BẰNG CÁCH NÀO  </b></h6>
                                <p class="w3-text-grey">Mandara nằm ở thôn sơn đình ,xã đại đình. Huyện Tam Đảo tỉnh Vĩnh Phúc.</p>
                                <p class="w3-text-grey">
                                    - Bạn có thể chạy xe máy hoặc ô tô tự lái từ HN sử dụng google map sẽ chỉ dẫn đến tận cửa MANDARA
                                </p>
                                <p class="w3-text-grey">
                                    - Có thể bắt taxi đi từ sân bay về Mandara chi phí 400k , grab bike = 200k.
                                </p>
                                <p class="w3-text-grey">
                                    - Bạn có thể đi tàu hỏa từ Hà Nội về Vĩnh Yên - bắt xe bus từ Vĩnh Yên về homestay Mandara.
                                </p>
                            </div>

                            <br />
                        </div>
                    </div>

                    <br />
                        <div class="w3-container" id="menu">
                        <div class="w3-content" style="max-width: 100%">
                            <div>
                                <h6><b>
                                    <img src="../icon/arrow-38-green.png" width="12" height="12" style="margin-right: 5px; margin-bottom: 2px" />
                                    MANDARA NHƯ THẾ NÀO </b></h6>
                                <p class="w3-text-grey">
                                   🍀  MANDARA được thiết kế lợi thế phía trước mặt là Núi & Suối - “Không gian mở đón không khí trong lành nơi Núi Rừng tràn vào mọi ngóc nghách trong căn Nhà gồm 8 phòng ngủ -b 1 phòng làm việc chia sẻ- 1 phòng khách - 1 phòng bếp đầy đủ dụng cụ nấu, 1 sân vườn khu BBQ riêng, 1 sân bóng rổ, bóng bàn , cầu lông , khu để giặt , Sân thượng View mây núi 180 độ , khu tập Yoga . Nhà nằm trong khu dân cư đông đúc , cách chợ Đại Đình 3km , đi bộ vài bước chân tới tiệm tạp hóa và hiệu thuốc Tây .
                                </p>
                                <p class="w3-text-grey">
                                   🍀  Chỉ Cách Hà Nội hơn 60km chạy xe ,nhưng phải đến đây mới tách biệt khỏi thành phố ồn ào tận hưởng không khí trong lành cũng làm cơ thể được thư giãn tuyệt đối .
                                </p>
                                <p class="w3-text-grey">
                                   🍀  Mọi thứ ở MANDARA đều hoặt động theo hình thức “ Chia Sẻ” ,bạn có thể được quản gia phục vụ ăn uống nếu đặt trước , hoặc bạn muốn chủ động có thể sử dụng các vât dụng trong Mandara theo cách chúng ta cùng giữ gìn, bảo quản như Guitar, đàn piano, BBQ sân vườn, kính thiên văn xem ban đêm, thảm yoga , bóng rổ, cầu lông , bóng bàn - TẠI MANDARA bạn được FREE
                                </p>
                              
                            </div>

                            <br />
                        </div>
                    </div>

                    <div class="w3-container" id="menu">
                        <div class="w3-content" style="max-width: 100%">
                            <div>
                                <h6><b>
                                    <img src="../icon/arrow-38-green.png" width="12" height="12" style="margin-right: 5px; margin-bottom: 2px" />
                                     Mandara Tây Thiên Mountain Air ] cách bao xa các khu du lịch nổi tiếng:  </b></h6>
                                <p class="w3-text-grey">Mandara nằm ở thôn sơn đình ,xã đại đình. Huyện Tam Đảo tỉnh Vĩnh Phúc.</p>
                                <p class="w3-text-grey">
                                   - Khu danh thắng T Y THIÊN : 5 phút đi bộ
                                <p class="w3-text-grey">
                                   - Đại bảo tháp Mandala : 5 phút đi bộ
                                </p>
                                <p class="w3-text-grey">
                                   - Trung tâm thị trấn đỉnh núi Tam Đảo: 19km ( 40 phút đường núi dốc)
                                </p>
                                       <p class="w3-text-grey">
                                   - Thiền Viện Trúc Lâm, Thiền Viện An Tâm : 2.5km ( 4 phút )
                                </p>
                                       <p class="w3-text-grey">
                                   - Hồ Đại Lải: 25km (30 phút )
                                </p>
                                  <p class="w3-text-grey">
                                  - Thành phố Vĩnh Yên cảnh quan yên bình như ĐÀ LẠT thu nhỏ: 18km (25 phút )
                                </p>
                            </div>

                            <br />
                        </div>
                    </div>
                                 <h6><b>
                                <img src="../icon/arrow-38-green.png" width="12" height="12" style="margin-right: 5px; margin-bottom: 2px" />
                                MANDARA có gì</b></h6>
                            <div class="w3-panel w3-leftbar w3-light-grey">
                                <p>
                               
                                   🍀 Free kính thiên văn ngắm trăng và các hành tinh
                        <br />
                           
                                   🍀 Free thảm yoga
                                    <br />
                               
                                   🍀 Free tủ lạnh
                        <br />
                                 
                                   🍀 free máy ép hoa quả
                        <br />
                               
                                   🍀 free máy luộc trứng tự động
                        <br />
                               
                                   🍀 Free Wifi siêu khoẻ
                        <br />
                                  
                                   🍀 Free nước lọc .
                        <br />
                                
                                   🍀 Free dầu gội,dầu xả,xà bông, kem đánh răng luôn đầy đủ trong phòng tắm 
                        <br />
                  
                                   🍀 Free khu bếp đầy đủ dụng cụ, BBQ ngoài vườn đầy đủ dụng cụ nướng + Than hoa .
                                <br />
                                   🍀 Xung quanh Mandara có quán tạp hóa, hiệu thuốc Tây, Phở bò.
                                <br />
                                   🍀 Free mượn đàn Piano
<br />
                                   🍀 Free mượn Guitar
                                    <br />
                                   🍀 Free các hoạt động thể thao đầy đủ dụng cụ hỗ trợ .
                                </p>
                            </div>

                            <br />
                                <div style="background-color: gray; height: 2px"></div>
                        <div style="margin: auto; text-align: center">
                            <p class="w3-text-grey">

                                ♥️&nbsp Inbox Fanpage: <a href="https://www.facebook.com/mandarataythien" target ="_blank" ><span style="color: blue">Mandara</span></a>

                                <br />
                                ♥️&nbsp HotLine:
                                 <b>0868.248.396 (Mr.Tuấn)</b>


                                <br />
                                Lưu ý: Nếu như bạn đã từng ở homestay trong chuỗi HOUZING ở ĐÀ LẠT hay VŨNG TÀU , HỒ CHÍ MINH ,HẢI PHÒNG thì bạn sẽ được giảm 10 % khi book phòng tại MANDARA nha.

                             
                            </p>
                        </div>
                        <div style="background-color: gray; height: 2px; margin-top: 10px"></div>
                    </div>
                    <div style="text-align: center">
                    </div>
                </div>

            </div>

        </div>
    </div>
</asp:Content>
