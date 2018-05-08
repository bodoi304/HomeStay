<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ThongTinSamSam.ascx.cs" Inherits="Housing.SamSam.ThongTinSamSam.ThongTinSamSam" %>
<link rel="stylesheet" type="text/css" href="/HoiDapYoKo/font-awesome/css/font-awesome.min.css" />
<link href="/stylesheets/cssweb.css" rel="stylesheet" />


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

    <div class="container" style="width: 99%; line-height: 30px">

        <%--      <a href="#demoTV1" class="faqHeader" data-toggle="collapse" style="float: initial">
            <img src="../icon/arrow-38-green.png" width="20" height="20" style="margin-right: 5px; margin-bottom: 7px" />Tiếng Việt</a>--%>
        <%--     <div id="demoTV1" class="collapse">--%>
        <!-- About Container -->
        <div style="">

            <div class="w3-container" id="about">
                <div class="w3-content" style="max-width: 100%">


                    <div class="w3-panel w3-leftbar w3-light-grey text-border-solid-blue">
                        <p style="font-size: 15px">
                            <center> <b> SAMSAM HOUZING </b> SÓNG ĐÁNH “DẠT TRÔI” VỀ HOMESTAY ĐẬM CHẤT VŨNG TÀU </center>
                            <br />
                            &nbsp&nbsp&nbsp Căn hộ nhỏ xinh đã ra đời vào Mùa hè năm ấy , lấy cảm hứng từ những chiếc ghe đánh cá ,từ Biển xanh, cát trắng, nắng vàng , toàn những hình ảnh thân thương nhất của thành phố Vũng Tàu. Ngôi Nhà nằm trên đường Nguyễn Bỉnh Khiêm ngay sát bãi trước và bãi sau, các Bạn đi bộ là tới Biển,gần các địa điểm HOT  như đồi con heo, mũi nghinh phong,tượng chúa,quán bánh khọt gốc vú sữa, Núi Vi Ba , Ngọn Hải Đăng,..... Sáng ngủ nướng tại  đây ,trưa chiều ra tắm biển nhảy sóng, tối về  cùng lũ bạn lang thang kiếm món hải sản thêm 1 cái boong  Bia ngồi phê pha thì không còn gì bằng  ,... và bạn cũng chẳng thể nào ngờ giữa thành phố bạt ngàn Hotel lại tồn tại một Homestay chẳng khác gì Nhà Mình đến thế.
                        </p>

                    </div>

                </div>
            </div>

            <%--  <div style="text-align: center">
                     <img src="18516264_1347932368655162_160061118_n.png" />
            </div>--%>

            <div class="w3-container" id="menu">
                <div class="w3-content" style="max-width: 100%">
                    <div>
                        <h6><b>
                            <img src="../icon/arrow-38-green.png" width="12" height="12" style="margin-right: 5px; margin-bottom: 2px" />
                            ĐẾN VŨNG TÀU BẰNG CÁCH NÀO: </b></h6>

                        <p class="w3-text-grey"><b>&nbsp&nbsp Từ Sải Gòn - Vũng Tàu</b></p>

                        <p class="w3-text-grey">
                            &nbsp&nbsp  - Bắt xe LIMOUSINE của hãng xe Toàn Thắng, Địa chỉ: <b>21 Nguyễn Thái Bình, Quận 1,TP.Hồ Chí Minh, giá vé: 130k/1 người/1 chiều.</b> Phone: <a>0993700700</a>  hoặc <a>0994700700</a>

                            <br />
                            &nbsp&nbsp - Đến Vũng Tàu mọi người có thể tự Thuê Xe Máy nếu muốn có những trải nghiệm riêng  - liên hệ với SAMSAM để được giới thiệu chỗ thuê xe uy tín ạ.


                        </p>

                    </div>

                    <div>
                        <h6><b>
                            <img src="../icon/arrow-38-green.png" width="12" height="12" style="margin-right: 5px; margin-bottom: 2px" />
                            HÀNH TRÌNH KHÁM PHÁ VŨNG TÀU: </b></h6>

                        <p class="w3-text-grey">
                            &nbsp&nbsp  - Các bạn sẽ dừng chân nghỉ dưỡng tại một trong ít những ngôi nhà được thiết kế theo lối kiến trúc đậm chất miền  biển  mà khi vô ở bạn sẽ cảm thấy thoải mái như ở nhà của chính mình. Trước nhà có một mảnh sân khá rộng, chiếc bàn tre giúp bạn nhâm nhi tách trà, đọc cuốn sách hay, thả hồn nghe chim hót, ngắm nắng, hít thở không khí của biển,  

                        </p>
                        <p class="w3-text-grey">
                            &nbsp&nbsp    - Ở đây các bạn không phải lo lắng về vấn đề giặt ủi vì căn nhà đã có máy giặt miễn phí & sân phơi ngoài trời, nếu cần phao bơi các bạn có thể đem theo để sử dụng miễn  phí,nếu cần sân nướng hải sản mua ở chợ về cũng có  luôn-như kiểu bạn chính là một phần của VŨNG  khi bạn sống ở đây vậy.

                        </p>

                    </div>

                    <div>
                        <h6><b>
                            <img src="../icon/arrow-38-green.png" width="12" height="12" style="margin-right: 5px; margin-bottom: 2px" />
                            BÂY GIỜ SẼ LÀ LÚC MỌI NGƯỜI TỰ HỎI ĐẾN ĐÂY ĐI ĐÂU? LÀM GÌ? ĂN THẾ NÀO ? </b></h6>
                        <div style="text-align: center" class="a">
                            <%-- <img src="../ThongTinYoko/90.jpg" width="90%" />--%>
                        </div>

                        <p class="w3-text-grey">
                            &nbsp&nbsp - Câu trả lời của những vị khách khó tính nhất khi tưng đến đây lại rất đơn giản : Đến đây Chẳng cần đi đâu xa cả, nhà nằm ngay trung tâm thanh phố,thuê 1 chiếc xe máy vi vu khắp các tụ điểm ăn ngon,chộp  hình sống ảo cách nhà chẳng xa chút nào. Đi bộ ra tắm biển bãi trước bãi sau đều gần nhà. tối đến có thể ra khu vực sinh hoạt chung của nhà #SAMSAM để trò truyện với những nguời bạn mới ở cùng nhà hoặc đơn giản là đứng ngoài sân trò chuyện cùng với mấy người hàng xóm dễ mến,vui vẻ rồi về leo lên giường Ngủ 1 giấc tới sáng dậy sớm ra ngắm bình minh trên bãi biển đẹp Hút Hồn,rồi  lại tiếp tục hành trình đi khám phá vài nơi trên con xe chòng chành ,gió bay tóc rối như đang trở về những tháng  tuổi thơ bé lúc xưa. 

                        </p>
                        <br />
                        <p class="w3-text-grey">
                            <b>Bạn muốn sống dài ngày ở nơi này chứ?</b> Chỉ để mỗi sáng  đón bình minh và mỗi chiều thả bộ dọc trên bãi biển hoàng hôn buông xuống . Nghĩ mà thấy sướng gì đâu
                        </p>

                        <br />
                        <div class="w3-panel w3-leftbar w3-light-grey text-border-solid-blue">
                            <p style="font-size: 15px">
                                Một vài địa điểm ăn uống ưa thích của mọi người khi tới Vũng Tàu (phải mất ít nhất 2 đêm, 3 ngày ở SAMSAM thì mọi người mới khám phá hết được từng này chỗ), Nếu bạn muốn đi tới địa điểm nào nên hỏi quản gia của SAMSAM chỉ giùm.
                            </p>
                        </div>
                        <p class="w3-text-grey" style="font-size: 18px">
                            <b>
                                <img src="../icon/arrow-38-green.png" width="12" height="12" style="margin-right: 5px; margin-bottom: 2px" />Một vài địa điểm cho các bạn lê la ăn vặt và chém gió:</b>
                        </p>
                        <p>
                            <b><u><u><i>1.Nhà hàng Gành Hào </i></u></u></b>
                            <br />
                            ⁃    Chỗ này Hải Sản ngon nhất. 
Nhà hàng sát bờ biển có view đẹp, đô ăn ngon, phục vụ chuyên nghiệp.
Đây là 1 trong những nhà hàng hải sản có tiếng và được rất nhiều các du khách lựa chọn khi tới thành phố biển. Hải sản ở đây rất tươi ngon, chế biến ổn. Giá cả thì vừa phải không đắt cũng không rẻ, khung cảnh đẹp, vừa ăn vừa ngắm biển luôn. Nhất là ăn tầm chiều khi hoàng hôn xuống thì tuyệt vời. Phục vụ ở quán cũng thuộc loại chuyên nghiệp. Nói chung chả có gì để chê 
=> <b>Địa chỉ: 3 Trần Phú, Ward 5, Tp. Vũng Tàu, Bà Rịa - Vũng Tàu</b>
                            - <b>Điện thoại: 0254 3550 909</b>

                            <br />
                            <b><u><i>2.Vựa Hải Sản Thành Phát  </i></u></b>
                            <br />
                            ⁃  Quán nằm ở khu bán hải sản đông đúc và có 2 quán Thành Phát 1 và 2 chất lượng như nhau. Mình thì quán nào còn chỗ thi váo quán đó thôi. Đi sớm thì có bàn gần biển vừa ăn vừa ngắm biển luôn.Quán bình dân, rất đông khách. Quán có hai khu, nằm hai bên đường Trần Phú. Muốn được ăn nhanh, trước tiên bạn sang đường lựa hải sản, yêu cầu làm món. Sau đó, bạn qua đường ngồi bàn, sẽ có người mang đến cho bạn.
                            <br />
                            ⁃  Hải sản tươi, giá hợp lý. Có chỗ ngồi sát biển.
Giá cả thì tương đương SG không mắc hơn. Các món từ 100k – 300k tùy món. So với các quán chuyên chặt chém mà chất lượng không ra gì thì Thành Phát tốt hơn nhiều nha. Thay vì đưa đầu cho mấy quán tạp nham ở khu Hoàng Hoa Thám chém thì ra quán này ăn đáng hơn nhiều.
Các món nhà mình đã ăn và thấy ngon là mực trứng chiên nước mắm, thịt mực tươi, dai, ướp vừa miệng đặc biệt món ăn lên nhanh.
Cua rang me, thịt cua chắc ngon, mua thêm bánh mì ngoài đường bán rồi chấm sốt me là khỏi chê

                                 => <b>Địa chỉ: 334 Trần Phú, Phường 5, Tp. Vũng Tàu, Bà Rịa - Vũng Tàu
.Điện thoại: 0254 3550 595</b>

                            <br />
                            <b><u><i>3.Quán nướng Cô Nên</i></u></b>
                            <br />
                            ⁃ Nổi tiếng với du khách khi đến Vũng Tàu với món Bạch Tuột nướng.
Đặc biệt còn nhiều loại hải sản nướng khác và các món ăn phong phú
Không gian sạch sẽ dân dã, nằm ngay con đường biển đẹp của Vũng Tàu.
Quán ăn trưa hoặc ăn tối khá là ngon. Giá cả bình dân. Mình thích nhất mực sữa chiên nước mắm,ăn kèm cơm chiên tỏi ngon hết sẩy. Quán có món gỏi xoài ốc giác cũng ngon không kém. Quán rộng rãi,ngay cáp treo. Menu đa dạng và giá cả phải chăng.
=> <b>Tọa lạc tại số 20, Trần Phú, Phường 1, Tp. Vũng Tàu.</b>
                            <br />
                            <b><u><i>4.Chợ Đêm Vũng Tàu – Hải sản tươi sống bình dân </i></u></b>
                            <br />
                            ⁃    Khu chợ này là nơi tập hợp những quán hải sản và giá rất rẻ so với những nơi khác. Khi đến các bạn nên gửi xe rồi đi bộ cho tiện, có 1 chỗ gửi ngay cần cuối chợ, khúc bán đồ trang sức, lưu niệm, mình hay gửi xe bên công viên thỏ trắng rồi đi bộ. Giá gửi xe: 5k. Các quán hải sản nằm san sát nhau, giá cả không chênh lệch nhiều. Mình chọn quán Tấn tài, mình nghe nhiều bạn giới thiệu về quán cô Thy nhưng nghe nói nhân viên khá kì nên mình qua đây thử thì: tuyệt vời luôn các bạn

     <br />
                            ⁃    Lúc mình đi tầm 5h30 khá vắng =)) nhưng anh nhân viên rất nhiệt tình, nhanh nhẹn. Ở đây hơi nhiều muỗi nên mình kêu anh bật quạt, anh cũng đang dở tay chạy tới giúp.

     <br />
                            ⁃   Đồ ăn thì tuyệt vời, mình chỉ tiếc là ko phát hiện sớm hơn thôi.Mình gọi ơm chiên tỏi, hơi khô .
Càng cua sốt me: 100k/ dĩa, tầm khoảng 7, 8 càng cua. Ăn khá ngon, sốt me nên mút mút cũng chua chua ngọt ngọt nhưng thịt cua thì không được nhiêu.
Sò điệp nướng phô mai 60k/dĩa. Ngon lắm luôn. Sò mập hơn nhiều so với ở sg
Mình gọi 4 hào nướng phô mai, 20k/c, 4 hào nướng mỡ hành 15k/c. Hào ú nu ăn thịt ngon. Phô mai làm rất nhiều, ăn đáng đồng tiền lắm.
Sò lụa xào bơ cay. Rất ngon nha, không cay mà sốt bơ cay ăn ngọt ngọt sệt sệt thơm mùi bơ
Chem chép xào mỡ hành. Chem chép khá ngon, to tuy nhiên xào không ngon lắm
Ốc móng tay rang tỏi. Tuyệt vời, 1 dĩa tầm 70 80k , mà nhiều lắm nha mấy bạn
Cả nước ngọt nữa thì tổng thiệt hại của 2 đứa mình là 590k cho 2 đứa vì gọi tầm 7 8 món. Cuối cùng ăn không hết 2 món huhu.
À ăn xong qua công viên thỏ trắng chơi, lên đu quay nhìn xuống vũng tàu rất đẹp nha mọi người => <b>Chợ đêm này nằm sau lưng khách sạn Imperial.</b>


                            <br />

                            <b><u><i>5.Bánh Khọt,Quán Cây tre:</i></u></b>
                            <br />
                            ⁃    Bánh khọt ở đây rắc tôm chấy nhiều, và được chiên liên tục nên rất thơm ngon. Bột bánh giòn nhưng vẫn giữ vị thơm.
 
     <br />
                            ⁃    Chỗ ngồi rộng rãi, mùi bánh nướng & tôm chấy bay lất phất được nấu bằng củi nên vừa ăn vừa có cảm giác rất thơm ngon từ khi ngồi. Rau tươi & nhiều. Đánh giá chất lượng ở đây ngon hơn gốc vú sữa và cây bàng nhiều. Chỉ có điều đường vào hơi nhỏ, hơi khó tìm
                                => <b>8B Lương Văn Can, P.2, Tp. Vũng Tàu.</b>

                            <br />

                            <b><u><i>6.Quán Ốc Tự Nhiên:</i></u></b>
                            <br />
                            ⁃   Vũng Tàu có rất nhiều quán ốc nổi tiếng, trong đó có nhiều quán giá khá rẻ nhưng ăn rất ngon và thu hút được nhiều khách. Hôm nay nhỏ bạn rủ mình ăn tại quán Ốc Tự Nhiên 2, nó kêu quán này rẻ nhưng chế biến ngon và có view biển siêu đẹp nữa, nghe ăn ốc là mình quyết định đi liền.

 
     <br />
                            ⁃   Quán này bán từ trưa đến tối, quán có 2 chi nhánh và hôm nay mình đi ăn ở <b>chi nhánh 2 trên đường Trần Phú.</b>

                            <br />

                            <b><u><i>7.Quán Su Bin - Bò Lá Lốt, bò nhúng giấm:</i></u></b>
                            <br />
                            ⁃   Cô chủ vui tính nhiệt tình, quán thì thoáng mát sạch sẽ. Nên đi tầm 3-4h chiều cho thoải mái . Mình có gọi 2 phần bò lá lốt ăn thì thấy rất ngon cô cho nhiều rau sạch ăn phê chết dư cho 2 ng ăn chỉ hêt 90k :))) có dịp lần sau tụi mình nhất định ghe nữa. Món bò nhúng giấm thì nước giấm ngọt ngọt có thơm, xã, giấm, nước dừa rất vừa miệng, bò cắt mỏng, nhúng giấm cuốn bánh tráng và rau, nước chấm vừa ăn. Nói chung quán này vừa bình dân vừa ngon. 

                                => <b>27 Nguyễn Bỉnh Khiêm, P.Thắng Tam, Vũng Tàu.</b>
                            <br />

                            <b><u><i>8.Bánh bèo Tuyết Mai:</i></u></b>
                            <br />
                            ⁃   Đến với quán Bánh bèo Tuyết Mai, du khách sẽ được thưởng thức các món bánh mang đậm hương vị quê hương như: vị thơm của bột hoà quyện với vị tôm trong món bánh bèo tôm giá 4.000 đồng/dĩa, bánh bèo bì tôm giá 8.000 đồng/dĩa; hay vị ngọt của mía thấm sâu vào thịt tôm trong món chạo tôm giá 35.000 đồng/dĩa; hoặc thưởng thức món bánh hỏi giá 4.000 đồng/dĩa với một trong ba loại thức ăn như thịt nướng, nem nướng, chả giò giá 35.000 đồng/dĩa. (giá trên có thể thay đổi theo thời giá). Với sức chứa khoảng 600 khách, quán có thể đáp ứng được nhu cầu đa dạng của khách như: gia đình, khách đoàn… Quán mở cửa từ 8 giờ sáng đến 9 giờ tối mỗi ngày. Khởi nguồn là gánh hàng rong do song thân của chủ quán hiện tại, ngày nay, nơi đây trở thành một thương hiệu nổi tiếng và quen thuộc đối với thực khách sành ăn. Ngoài món bánh bèo truyền thống, hiện nay quán cũng phục vụ thêm nhiều món ăn đa dạng khác như: chạo tôm, chả giò, nem nướng, bì cuốn...


                                => <b>9 Phan Chu Trinh, Phường 2, Tp. Vũng Tàu, Phường 2 - Điện thoại: 064 3850 365.</b>
                            <br />

                            <b><u><i>9.Lẩu Cá Đuối:</i></u></b>
                            <br />
                            ⁃   Đường Trương Công Định là điểm đến quen thuộc của du khách muốn một bữa tối no kềnh càng khi ghé thăm Vũng Tàu. Tại con phố nho nhỏ này, “chủ nhân” của nó chính là món lẩu cá đuối đầy hấp dẫn. Vị ngọt thanh của nước lẩu, vị chua của măng, vị đậm đà của chén nước mắm, thêm chút tê tê của vài lát ớt cùng thịt cá đuối dai dai và sần sật của sụn cá khiến bạn phải ngạc nhiên đến không ngờ đấy. Ngoài ra, quán cũng có một số món khác cũng rất thú vị để thưởng thức như: Gỏi cá trích, cá mai, các món nhắm , mực, hải sản,….
Sẽ có rất nhiều điểm cộng dành cho dãy quán lẩu cá đuối đường Trương Công Định với giá cả phải chăng, hương vị hấp dẫn, quán sạch sẽ, nước lẩu, trông xe miễn phí… Tuy nhiên điểm trừ to tướng nhất chính là thái độ phục vụ của nhân viên, khá chậm chạp và hay lơ là trong thời gian làm việc. Nhưng cũng đừng vì thế mà không ghé chân đến đây để thưởng thức và tận hưởng lẩu cá đuối ngon nức tiếng của Vũng Tàu nhé.



                                => <b>40 Trương Công Định, Phường 3, Tp. Vũng Tàu, Bà Rịa - Vũng Tàu.</b>

                            <br />

                            <b><u><i>10.Kem Alibaba:</i></u></b>
                            <br />
                            ⁃ Quán nằm ngay khu vực cáp treo hồ mây chỉ bán vào chiều tối.
Điều đặc biệt của quán là có 2 chàng Thổ Nhĩ Kỳ khá đẹp trai và vui tính nên đa số vào quán là nữ. Vị kem chưa đậm đà lắm, nhưng cũng ngon hơn nhiều quán kem khác.




                                => <b>Trước Cổng Cáp Treo Hồ Mây, Trần Phú, P. 1, Tp. Vũng Tàu, Vũng Tàu. Giá bình quân đầu người 15.000đ - 33.000đ.</b>
                            <br />

                            <b><u><i>11.Quán Kem Sài Gòn:</i></u></b>
                            <br />
                            ⁃ Từ lúc nhiều quán kem tuổi teen và trà sữa, ăn vặt các loại mở ra thì ít ai còn nhớ đến quán này. Kể cả mình cũng thế, lâu lâu đi ngang nhìn rồi lại quên ngay. Lâu ko ăn lại ăn rồi thấy chất lượng khác hẳn các quán kia luôn. Ngoài kem quán còn có cooktail rất thơm và bánh bông lan, bánh su ăn kèm. Giá hơi cao nhưng so với chất lượng là hợp lý.





                                => <b>22 Lý Thường Kiệt, Phường 1, Tp. Vũng Tàu, Bà Rịa - Vũng Tàu.</b>
                            <br />

                            <b><u><i>12.Chè Hiệp:</i></u></b>
                            <br />
                            ⁃ Quán chè khá lâu đời ở Vũng Tàu, menu chè phong phú, từ các loại chè Việt truyền thống đến các món chè lạnh, trà sữa, món ăn vặt. Buổi tối ko biết đi đâu ghé quán thì tha hồ lựa chọn. Giá cả phải chăng, nhân viên nhanh nhẹn, quán lúc nào cũng đông. 





                                => <b>167 Ba Cu, P. 3,  Tp. Vũng Tàu, Vũng Tàu - Giờ mở cửa:  14:00 - 22:00.</b>
                            <br />

                            <b><u><i>13.Quán bánh mì không tên -  xếp hàng mới mua được ở Vũng Tàu:</i></u></b>
                            <br />
                            ⁃ Có dịp ghé thăm Vũng Tàu, chắc chắn bạn nên tới một nơi là tiệm "bánh mì không tên". Ăn xong chiếc bánh, uống cốc rau má đậu mát lành, nóng nực của mùa hè ngay lập tức tan biến.
“Bánh mì không tên” nằm khiêm tốn ở một góc <b>ngã tư Đồ Chiểu</b>. Đúng như cái cách mà người ta thường gọi, tiệm bánh mì này không có tên. Nhưng nếu bạn hỏi người dân ở đây, ai cũng có thể chỉ cho bạn cách tới đích.
.Mỗi ổ bánh mì chỉ có giá 15.000 đồng, nhưng bạn cũng phải bỏ ra ít nhất 15 phút để xếp hàng. Không phải tự nhiên mà “bánh mì không tên” lại được người dân Vũng Tàu yêu mến đến thế trong hàng chục năm qua. Lý do nằm ở hương vị riêng, thơm ngon với nước sốt đậm đà, thịt xá xíu hấp dẫn và cách kết hợp gia vị ở một chừng mực rất chuẩn, hài hòa.
    <br />

                            <b><u><i>14.Mì thảy Nghiệp Ký:</i></u></b>
                            <br />
                            => <b>Địa chỉ: 127 Ba Cu, Phường 1, Tp. Vũng Tàu, Bà Rịa - Vũng Tàu.</b>

                            <br />

                            <b><u><i>15.Quán Lẩu Bò 69 Lê Lai:</i></u></b>
                            <br />
                            ⁃ Nhân viên phụ vụ quán cực kỳ dễ thương, nói chuyện nhẹ nhàng và niềm nở với khách. món ăn vừa miệng nhưng nếu nêm nếm hơi đậm đà chút nữa thì sẽ ngon hơn. Thịt bò mềm vừa ăn giá cả tốt. ĐI 2 ngừoi chỉ cần kêu 1 cái lẩu 120k 1 dĩa phở 2 gói mì 1 dĩa rau và 1 ca trà đá chỉ có 150k là đã no. 





                                => <b>93 Lê Lai, Phường 1, Tp. Vũng Tàu, Bà Rịa - Vũng Tàu - 064 3510 583</b>
                            <br />
                            <p class="w3-text-grey" style="font-size: 18px">
                                <b>
                                    <img src="../icon/arrow-38-green.png" width="12" height="12" style="margin-right: 5px; margin-bottom: 2px" />Một vài địa điểm chơi,tham quan  ưa thích của mọi người khi tới VŨNG TÀU nếu bạn muốn đi tới địa điểm nào nên hỏi quản lý nhà SAMSAM chỉ giùm:</b>
                            </p>
                        <p>
                            <b><u><i>1.Mũi Nghinh Phong: </i></u></b>
                            <br />
                            => <b>Địa chỉ: số 1 đường Hạ Long - TP. Vũng Tàu</b>

                            <br />
                          
                            <b><u><i>2.Đồi Con heo:</i></u></b>
                            <br />
                            ⁃ Đồi con Heo nằm ngay bãi Sau, Thùy Vân - Điểm phượt khá mới được giới trẻ chú ý đến trong thời gian gần đây ở Vũng Tàu. Bạn sẽ chẳng thấy một con heo nào như cái tên gọi của nó mà nơi này chỉ khiến bạn trầm trồ không vẻ đẹp hoang vu ngày nắng và mơn mởn hương cỏ cây ngày mưa và cái view quá đã để khám phá thành phố biển từ trên cao.


                                => <b>Phan Chu Trinh, P.2, TP. Vũng Tàu, Bà Rịa – Vũng Tàu.</b>
                              <br />
                                            <b><u><i>3.Tượng chúa dang tay:</i></u></b>
                            <br />
                            ⁃ Đến với Vũng Tàu, ngoài biển, tham quan nhiều ngôi đền chùa nổi tiếng thì Tượng Chúa dang tay cũng là một điểm tham quan tôn giáo không thể bỏ qua khi ghé thăm thành phố xinh đẹp này. Tượng Chúa Kitô Vua (thường được gọi là Tượng Chúa dang tay) là một bức tượng Chúa Giêsu cao 32m, 2 tay dang rộng 18,4m với sức chứa khoảng 100 người trong lòng tượng. Và đây cũng chính là Tượng chúa Kito lớn nhất châu Á.


                                => <b>Phường 2, TP.Vũng Tàu, Bà Rịa - Vũng Tàu.</b>
                              <br />

                                            <b><u><i>4.Công Viên thỏ trắng:</i></u></b>
                            <br />

                                => <b>Địa chỉ: Số 9 Thùy Vân, Vũng Tàu.</b>
                              <br />
                                    <b><u><i>5.Ngọn Hải đăng Vũng Tàu:</i></u></b>
                            <br />
                            ⁃ Đây cũng là vị trí tuyệt vời để ngắm nhìn thành phố biển, tận hưởng không gian yên bình và đón những làn gió biển mát lạnh đã nhất tại Vũng Tàu.


                                => <b>Đường Viba, Núi Nhỏ, P.2, TP. Vũng Tàu.</b>
                              <br />
                             <b><u><i>6.Hồ Cốc:</i></u></b>
                            <br />

                                => <b>Địa chỉ: xã Bưng Biền, huyện Xuyên Mộc, tỉnh Bà Rịa - Vũng Tàu.</b>
                            <br />
                             <b><u><i>6.Hồ Đá Xanh - Thích Ca Phật Đài - Hồ Tràm - Niết Bàn Tịnh Xá:</i></u></b>
                            <br />
 
                                => <b>Địa chỉ: Hạ Long, Phường 02, Thành phố Vũng Tàu.</b>
                            <br />
                            <h6><b style ="font-size :18px">
                                <img src="../icon/arrow-38-green.png" width="12" height="12" style="margin-right: 5px; margin-bottom: 2px" />
                                SAMSAM đặc biệt hoạt động theo hình thức ”cooking & culture" căn nhà có đầy đủ dụng cụ bếp nướng dành cho các bạn: </b></h6>
                            <div class="w3-panel w3-leftbar w3-light-grey">
                                <p>
                                    <img src="dot.png" />
                                    Đến đây có thể tự đi chợ mua Hải Sản về tự  nướng.
                        <br />
                                    <img src="dot.png" />
                                    free wifi.
                        <br />
                                    <img src="dot.png" />
                                    free dụng cụ nướng.
                        <br />
                                    <img src="dot.png" />
                                    free trà.
                        <br />
                                    <img src="dot.png" />
                                    free thư viện sách.
                        <br />
                                    <img src="dot.png" />
                                    free giặt ủi.
                        <br />
                                    <img src="dot.png" />
                                    free dầu gội,dầu xả,xà bông, luôn đầy đủ trong phòng tắm vòi sen đứng.. 
                        <br />
                                    <img src="dot.png" />
                                    free Phao Bơi mang ra biển. 
                                 <br />
                                    <img src="dot.png" />
                                    free máy lạnh. 
                                <br />
                                </p>
                            </div>

                            <br />

                            <p class="w3-text-grey">

                                <br />
                                ⁃ Các bạn inbox để được tư vấn ạ: <a href="https://www.facebook.com/samsamhouzing/"><span style="color: blue">SamSam Houzing</span></a>

                                <br />
                                ⁃ Liên hệ Anh (Tuấn) quản lý
                <img src="/ThongTinYoko/1f4f2.png" />
                                <span style="color: blue">086.824.8396</span><br />
                                ⁃ Mail: <a href="mailto:samsamvungtau@gmail.com"><span style="color: blue">samsamvungtau@gmail.com</span></a>
                            </p>
                    </div>
                    <div style="text-align: center">
                        <%-- <img src="18516336_1347936205321445_1677069061_n.jpg" width="98%" height="98%" />--%>
                    </div>
                </div>
            </div>
            <%--        </div>--%>
            <br />



        </div>

    </div>
