<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ThongTinYoKo.ascx.cs" Inherits="Housing.ThongTinYoko.ThongTinYoKo" %>
<%@ Register Src="en/ThongTinEn.ascx" TagName="ThongTinEn" TagPrefix="uc1" %>



<link rel="stylesheet" type="text/css" href="../HoiDapYoKo/font-awesome/css/font-awesome.min.css" />
<link href="../stylesheets/cssweb.css" rel="stylesheet" />


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
        <a href="#demoTV1" class="faqHeader" data-toggle="collapse" style="float: initial">
            <img src="../icon/arrow-38-xxl.png" width="20" height="20" style="margin-right: 5px; margin-bottom: 7px" />Tiếng Việt</a>
        <div id="demoTV1" class="collapse">
            <!-- About Container -->
            <div style="font-family: Znikomit!important;">

                <div class="w3-container" id="about">
                    <div class="w3-content" style="max-width: 100%">


                        <div class="w3-panel w3-leftbar w3-light-grey text-border-solid-blue">
                            <p style="font-size: 15px">
                                <b>YOKO Houzing</b> căn hộ trong khu phố Trần Phú nhỏ xinh nằm giữa trung tâm thành phố ngàn hoa Đà Lạt , toạ lạc ngay trong khu
         xóm người Đà Lạt, Người Đà Lạt thì dễ thương ,thân thiện nếu bạn được ở vài ngày ở đây sẽ thấy điều đó 
        .Với mảnh vườn hoa hồng bao quanh phía trước nhà , xung quanh nhà có lò bánh mì lâu đời 
        đặc biệt làm thủ công nên rất ngon, mỗi sáng thức giấc mùi bánh mì thơm phức len lỏi vào 
        phòng ngủ thật tuyệt,vì nhà trong trung tâm thành phố nên các bạn  đi bộ là tới nhà thờ con 
        gà,ra hồ xuân hương, tối đến dắt tay nhau ra chợ  m Phủ tấp nập  mua sắm đủ món đặc sản ĐÀ LẠT :). 
        Ngõ vào thật dễ có thể đậu ô tô trước cửa, và bạn sẽ chẳng thể nào ngờ rằng giữ phố núi hiu quạnh 
        và lạnh lẽo này lại có một nơi chốn ấm áp,yên bình và dễ thương đến thế, nơi mà buổi sáng thức giấc, 
        bạn sẽ đón những ánh nắng ban mai dịu nhẹ cùng mùi hương bánh mì rất riêng của  Đà Lạt , 
        những đốm hoa hồng đủ màu sắc trước thềm nhà . thử hỏi trong cuộc đời, ta đếm được bao ngày như thế!
                            </p>

                        </div>

                    </div>
                </div>


                <div class="w3-container" id="menu">
                    <div class="w3-content" style="max-width: 100%">
                        <div>
                            <h6><b>
                                <img src="../icon/arrow-38-xxl.png" width="12" height="12" style="margin-right: 5px; margin-bottom: 2px" />
                                ĐẾN ĐÀ LẠT BẰNG CÁCH NÀO </b></h6>
                             <div style="text-align: center" class="a">
                                <img src="../ThongTinYoko/HoatHinhXe.jpg" />
                            </div>
                            <p class="w3-text-grey" style="margin-top :5px">
                                <b>1.Đi máy bay từ SẢI GÒN đến ĐÀ LẠT:</b> Các bạn book 
                        vé vietjetair chỉ tầm 600k/1 chiều, đến sân bay Liên Khương,tp ĐÀ LẠT 
                        các bạn cứ  bắt hãng xe taxi đỗ quanh khu vực sân bay , mặc cả giá 200k 
                        vào trung tâm  thành phố là họ đi ngay- địa chỉ YOKO Houzing-số  21bis Trần Phú,phường 3, tp Đà Lạt (các bạn cứ nói là  tới đằng sau kho bạc) .
                            </p>
                            <p class="w3-text-grey"><b>2.Từ SÀI GÒN gọi số điện thoại đặt vé ô tô khách đi ĐÀ LẠT:</b></p>
                            <p class="w3-text-grey">
                                Xe Thành Bưởi: 266 - 268 Lê Hồng Phong, Phường 4, Quận 5, Tp. HCM<br />
                                ĐT Sài Gòn :  0838 339 242<br />
                                ĐT Đà Lạt: (0633) 540 540<br />
                                Xe Phương Trang:<br />
                                Tổng đài toàn quốc: 19006067
                        <br />
                                Giá vé 200K đến 250k Nếu đi ban ngày thì sau 7 tiếng,ban đêm mất 5 tiếng lên đến ĐÀ LẠT . Nếu đi ban đêm xe sẽ xuất phát lúc 10pm. Lên đến Đà Lạt trời còn tối, xe sẽ đậu tại số 5 Lữ Gia, Phường 9,tp ĐÀ LẠT . Sau đó các bạn đi taxi , số đt taxi Mai Linh tại ĐÀ LẠT :063.38.38.38.38 giá 1 chuyến đến YOKO Houzing-số  21bis Trần Phú,phường 3, tp Đà Lạt (các bạn cứ nói là  tới đằng sau kho bạc) là  vào khoảng 50k/1 chuyến. Khi đến nơi sẽ có “ tổng quản siêu mộc mạc" - chính nguời dân bản xứ Đà Lạt  thân thiện ra đón khách vào check in nhận phòng.
                            </p>

                            <p class="w3-text-grey"><b>3.Đi từ HÀ NỘI đến ĐÀ LẠT:</b></p>
                            <p class="w3-text-grey">
                                Mọi người book vé máy bay giá rẻ của Vietjetair không cần book xa ngày đi mà giá thì rẻ lắm, chỉ tầm 1,6tr vé khứ hồi , đến sân bay Liên Khương,tp ĐÀ LẠT các bạn cứ  bắt hãng xe taxi đỗ quanh khu vực sân bay , mặc cả giá  200k vào trung tâm  thành phố là họ đi ngay,Mất khoảng 40 phút đi từ sân bay về YOKO Houzing  
                        - địa chỉ :số  21bis Trần Phú,phường 3, tp Đà Lạt (các bạn cứ nói là  tới đằng sau kho bạc) .
                            </p>

                            <p class="w3-text-grey"><b>4.Đi từ HẢI PHÒNG:</b></p>
                            <p class="w3-text-grey">Các bạn cũng có thể book vé may bay từ Sân Bay Cát Bi đến sân bay Liên Khương,tp Đà Lạt( đường bay thẳng vừa mới mở).</p>

                            <div class="w3-panel w3-leftbar w3-light-grey">
                                <p>
                                    Đến ĐÀ LẠT mọi người có thể tự Thuê Xe Máy nếu muốn có những trải nghiệm riêng - liên hệ với YOKOHouzing để được giới thiệu chỗ thuê xe uy tín ạ.
                                </p>
                            </div>



                        </div>

                        <div>
                            <h6><b>
                                <img src="../icon/arrow-38-xxl.png" width="12" height="12" style="margin-right: 5px; margin-bottom: 2px" />
                                ĐI ĐÂU LÀM GÌ VÀ ĂN THẾ NÀO </b></h6>
                            <div style="text-align: center" class="a">
                                <img src="../ThongTinYoko/90.jpg" width="90%" />
                            </div>
                            <br />
                            <p class="w3-text-grey">
                                Câu trả lời của những vị khách khó tính nhất khi tưng đến đây lại rất đơn giản: 
                        Đến đây Chẳng cần đi đâu xa cả, nhà nằm ngay trung tâm thanh phố,trong phố đi đâu cũng gặp cảnh đẹp, 
                        nhà thờ con gà với kiến trúc châu âu  đi mấy bước chân là tới-nơi mà ai cũng muốn đến chiêm ngưỡng khi tới Đà Lạt, 
                        vườn cây hoa hồng truớc nhà um tùm, 
                        cuốc bộ đi dạo vòng hồ xuân hương, ra quảng trường Lâm Viên có biểu tượng hình Atiso 
                        & hoa dã quỳ đẹp cạn lời,tối đến có thể ra khu vực sinh hoạt chung của nhà YOKO để 
                        trò truyện với những nguời bạn mới ở cùng nhà hoặc đơn giản là đứng ngoài sân trò chuyện 
                        cùng với mấy người hàng xóm dễ mến. Ngủ 1 giấc tới sáng rồi kêu vài ổ bánh mỳ 
                        kế bên nhà chấm với mứt dâu của Yoko , rồi tiếp tục hành trình đi khám phá vài nơi, 
                        tung tăng trên những đồng cỏ Hồng huyền thoại như đang trở về tuổi thơ bé xíu.
                            </p>

                            <p class="w3-text-grey">
                                <b>Bạn muốn sống dài ngày ở nơi này chứ?</b> Chỉ để đọc sách, nấu cơm hay ra ngay chợ Đà Lạt  
                        mua vài món có thể tự làm, mua vài bông hoa về phòng tự cắm, rồi ăn thật ngon trong cái tiết trời ĐÀ LẠT mát lạnh :))
                            </p>


                            <div class="w3-panel w3-leftbar w3-light-grey text-border-solid-blue">
                                <p style="font-size: 15px">
                                    Một vài địa điểm ăn uống ưa thích của mọi người khi ở tại ĐÀ LẠT (phải mất ít nhất 3 đêm, 4 ngày ở YOKO 
                            Houzing thì mọi người mới khám phá hết được từng này chỗ), Nếu bạn muốn đi tới địa điểm nào nên hỏi quản lý nhà Yoko chỉ giùm.
                                </p>
                            </div>
                            <p class="w3-text-grey">
                                - Chợ Đà Lạt mở từ sáng đến 6-7h chiều , rau tươi ngon / thịt / cá / hải sản đủ cả. 
                          <br />
                                - Big C Đà Lạt thì mở đến tận 10h:30 Rau củ quả gia vị gì gì cũng có hết :") 
  <p class="w3-text-grey"><b> <img src="../icon/arrow-38-xxl.png" width="12" height="12" style="margin-right: 5px; margin-bottom: 2px" />Một vài địa điểm cho các bạn lê la ăn vặt và chém gió:</b></p>
                            <p>
                                <b><i>1.   Quán Ốc - 33 Hai Bà Trưng ( Quán Gốc ) </i></b>
                                <br />
                                ⁃    Đặc sản của quán là Ốc nhồi thịt siêu ngon, ốc to giòn , thịt đầy đặn 
     <br />
                                ⁃    Ngoài ra có cơm rang / lẩu 
     <br />
                                <b><i>2.   Quán nem nướng bà Nghĩa - 4 Bùi Thị Xuân </i></b>
                                <br />
                                ⁃    Bánh xèo đầy đặn , tôm tươi , nhiều giá và nấm giòn . Rau xà lách tươi , mướt và to thật to 
     <br />
                                <b><i>3.   Quán chay Hoa Sen - 62 Phan Đình Phùng </i></b>
                                <br />
                                ⁃    Đa dạng món , giá hợp lí phải chăng . Và đúng là mảnh đất của rau củ :"> Ăn tươi thật tươi luôn hihi . Mình thích nhất là ăn canh rau tần ô ở đây . 
     <br />
                                <b><i>4.   Bún bò móng giò (Ăn đêm ở Đà Lạt) </i></b>
                                <br />
                                ⁃    Đầu hẻm 195 Phan Đình Phùng
     <br />
                                ⁃    Đầu hẻm này còn có hàng bán sữa đậu nành , mè đen , đậu phụng .. tên Cô Lan , uống ấm bụng ấm lòng đêm Đà Lạt dã man :"> 
     <br />
                                <b><i>5.   Tiệm mỳ tàu cao - 217 Phan Đình Phùng </i></b>
                                <br />
                                ⁃    Mỳ hoành thánh + Bánh bao 
     <br />
                                <b><i>6.   Cháo gà và bánh ướt lòng gà </i></b>
                                <br />
                                ⁃    Từ Khu Hoà Bình rẽ vào hẻm Trương Công Định 
     <br />
                                <b><i>7.   Kem bơ Thanh Thảo - 76 Nguyễn Văn Trỗi </i></b>
                                <br />
                                ⁃    Đặc sản kem bơ siêu ngon , kem hoa quả ăn cũng thơm lòng mát dạ 
     <br />
                                <b><i>8.   Cafe : </i></b>
                                <br />
                                ⁃    Cafe Tùng - 1 Khu Hoà Bình - Quán cafe siêu lâu đời . Cafe thơm , sữa chua homemade thì quá tuyệt vời . Hương vị nhà làm vẫn là tuyệt nhất ha 
     <br />
                                ⁃    Cafe Bicycle Up : 82 Trương Công Định
     <br />
                                ⁃    Cafe An : Đồ uống thanh , và nhạc thì siêu hợp với Đà Lạt - nằm trên đường 3/2 
      <br />
                                ⁃    Cafe Là Việt : 200 Nguyễn Công Trứ
     <br />
                                <b><i>9.   Pub : Saigon Nite - 11 Hai Bà Trưng.</i></b>

                                <br />
                                <b><i>10. Quán bar, vũ trường: </i></b>
                                <br />
                                -    RAIN số 01 Lê Hồng Phong.
    <br />
                                -    V Club số 2 Lê Đại Hành.
                            </p>
                            <div style="text-align: center" class="a">
                                <img src="../ThongTinYoko/92.jpg" />
                            </div>
                            <br />
                            <p class="w3-text-grey"><b> <img src="../icon/arrow-38-xxl.png" width="12" height="12" style="margin-right: 5px; margin-bottom: 2px" />Một vài địa điểm chơi,tham quan ưa thích của mọi người khi ở tại Đà Lạt</b></p>
                            <p>
                                <b><i>1.Vườn bách thú Zoodoo</i></b>
                                <br />
                                ⁃ vô ngắm mấy chú ngựa lùn Pony, cừu, kangaroo và lạc đà không bướu, bạn thú nào cũng thân thiện và ham ăn cute lắm (địa chỉ: Tiểu khu 94A, xã Đạ Nhim, Lạc Dương, Lâm Đồng).
 
                    <br />
                                <b><i>2.Con đường hoa Mai Anh Đào nở rộ</i></b>
                                <br />
                                ⁃ Đường Lê Đại Hành ngay trung tâm thành phố, ven hồ Xuân Hương và Thiền Viện Trúc Lâm cũng là nơi được mọi người tìm tới.
 
 <br />
                                <b><i>3.Những cung đường thật đẹp </i></b>
                                <br />
                                ⁃ Đường từ Trung Tâm đi Làng Cù Lần : đường đi thì rất đẹp . Đoạn có hồ nước xanh mát mắt . Đoạn có cả 1 rừng thông ngút tầm mắt xanh rì 2 bên đường , chỉ có mình bạn và con đường nhựa màu ghi kẻ vạch trắng ở giữa . Thiên nhiên lúc này thật tuyệt.
  <br />
                                ⁃ Đường đi Hồ Tuyền Lâm. Bạn cũng có thể chuẩn bị 1 chiếc khăn để hạ trại picnic gần hồ & Mang thêm vài đồ ăn nhẹ đi nha  :) 
 
                    <br />
                                <b><i>4.Hoà mình vào thiên nhiên kết hợp một chút thể thao </i></b>
                                <br />
                                ⁃ Nếu bạn thích Trekking / Canyoning bạn có thể mua tour của Viet Action Tours ( bạn search fb nhé ) . Họ có trang bị đầy đủ đồ bảo hộ và tour của họ thú vị lắm đó :"> 
    <br />
                                ⁃ Tour đi ngắm lá phong , đào khoai , hái dâu . ( Bạn nhớ hỏi kĩ trước khi đăng kí nha vì không phải mùa nào cũng có khoai để đào hihi ) - Bạn có thể hỏi thông tin bằng cách gọi điện vào số 0947126888
 
                    <br />
                                <b><i>5.Vườn cây - Cô Oanh - 090 941 7379 Đây là số cô , bạn có thể liên hệ khi muốn xuống thăm vườn nhé</i></b>
                                <br />
                                ⁃ Cô rất nhiệt tình chỉ đường đó :" >. Mỗi lần xuống vườn cô là một lần mình thấy thư thái . Sen đá , Rosemary , bla bla bla đủ cả . Mướt mắt và màu sắc :> 
 
                    <br />
                                <b><i>5.Đồi cỏ hồng ở gần khu thung lũng vàng</i></b>
                                <br />
                                ⁃ Đường dễ tìm và không khó đi cho lắm nha các bạn, và đặc biệt nếu đi sớm tầm 6h sáng cỏ sẽ có một màu trắng tuyết tuyệt đẹp.
 
                    <br />
                                <b><i>6.Đường hầm đất sét</i></b>
                                <br />
                                ⁃ các bạn có thể đến đây ngắm những tuyệt tác của các nghệ nhân , và đặc biệt ở đây có dịch 
                    vụ cá rỉa tế bào chết ở chân-cá massage chân rất thích cho những ai chưa thử lần nào.
 
                    <br />
                                <b><i>7.Thác Datanla, thác Prenn, núi LangBiang ,vườn hoa thành phố,thung lũng tình yêu,thung lũng vàng</i></b>
                                <br />
                                ⁃ Mọi thứ đều đẹp tuyệt
 
                    <br />
                                <b><i>8.Mới đây dân mạng đang Sốt với địa điểm rất HOT là tới "săn mây giữa cổng trời"</i></b>
                                <br />
                                ⁃  Chùa Linh Quy Pháp Ấn được mệnh danh là chốn tiên cảnh.(cách trung tâm ĐÀ LẠT 150km)
                            </p>
                        </div>
                        <br />
                        <div style="text-align: center" class="a">
                            <img src="../ThongTinYoko/phongbep.jpg" />
                        </div>
                        <h6><b>
                            <img src="../icon/arrow-38-xxl.png" width="12" height="12" style="margin-right: 5px; margin-bottom: 2px" />
                            YOKO Houzing đặc biệt hoạt động theo hình thức ”cooking & culture" căn nhà có đầy đủ dụng cụ bếp nấu: </b></h6>
                        <div class="w3-panel w3-leftbar w3-light-grey">
                            <p>
                                <img src="../ThongTinYoko/1f332.png" />Đến đây có thể tự đi chợ Đà Lạt về tự nấu nướng.
                        <br />
                                <img src="../ThongTinYoko/1f332.png" />free wifi.
                        <br />
                                <img src="../ThongTinYoko/1f332.png" />
                                free gạo.
                        <br />
                                <img src="../ThongTinYoko/1f332.png" />
                                free cà phê sạch.
                        <br />
                                <img src="../ThongTinYoko/1f332.png" />
                                free mứt dâu.
                        <br />
                                <img src="../ThongTinYoko/1f332.png" />
                                free bữa sáng.
                        <br />
                                <img src="../ThongTinYoko/1f332.png" />
                                free chai nước suối. 
                        <br />
                                <img src="../ThongTinYoko/1f332.png" />
                                free nến thơm. 
                        <br />
                                <img src="../ThongTinYoko/1f332.png" />free giặt ủi. 
                        <br />
                                <img src="../ThongTinYoko/1f332.png" />
                                free lò sưởi ấm đêm lạnh.
                        <br />
                                <img src="../ThongTinYoko/1f332.png" />
                                free dầu gội,dầu xả,xà bông, luôn đầy đủ trong phòng tắm.
                        <br />
                                <img src="../ThongTinYoko/1f332.png" />
                                free Tinh dầu thơm, nến thơm trong mỗi phòng. 
                            </p>
                        </div>

                        <br />

                        <h6 style ="font-weight:900">
                            <img src="../icon/arrow-38-xxl.png" width="12" height="12" style="margin-right: 5px; margin-bottom: 2px" />
                            Phân loại phòng và giá cả tại YOKO Houzing:(Một vấn đề mà bạn nào cũng rất quan tâm khi xem xong những thông tin quấn hút ở trên)</h6>
                        <p class="w3-text-grey">
                            YOKO Houzing có diện tích nhỏ xinh khu vực trung tâm thành phố Đà Lạt & đang là một trong ít những căn nhà có 
                    lối thiết kế có Lò Sưởi ấm trong mỗi phòng,mọi thứ dễ thương, 
                    thân thiện, với khách hàng: 
                    <br />
                           
                            YOKO Houzing có 3 phòng ngủ, chăn gối của YOKO dùng là vải Korea loại 1 ,nằm rất thích (có 1 phòng đôi ở 4 người, 2 phòng đơn ở 2 người).
                    <br />
                       
                           - 1 phòng khách đi lại.
                    <br />
                           
                           - 1 căn bếp nhỏ xinh có đầy đủ dụng cụ nấu ăn.
                    <br />
                       
                           - 1 sân sinh hoạt chung.
                    <br />
                            
                           - 2 phòng tắm - đều có bình nóng lạnh.Toilet là điều quan trọng nhất mà YOKO Houzing đặc biệt quan tâm nên luôn Sạch Sẽ. Nhà 
                    có quản lí người Đà Lạt  mộc mạc, sạch sẽ, luôn chà rửa sạch sẽ liên tục mỗi ngày.
                        </p>
                        <p class="w3-text-grey">
                            <i>Các Phòng ngủ & giá thành mỗi phòng:</i>
                           <br /> ⁃ Đặt phòng qua inbox Fanpage: <a href="https://www.facebook.com/yokohouse01"><span style="color: blue">m.me/yokoHouse01 </span></a>
                            <br />
                            ⁃ Liên hệ Anh (Tuấn) quản lý
                <img src="../ThongTinYoko/1f4f2.png" />
                            <span style="color: blue">086.824.8396</span><br />
                            ⁃ Mail: <a href="mailto:me@nguyenphituan.com"><span style="color: blue">me@nguyenphituan.com</span></a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <a href="#demoEn2" class="faqHeader" data-toggle="collapse">
            <img src="../icon/arrow-38-xxl.png" width="20" height="20" style="margin-right: 5px; margin-bottom: 7px" />English Language</a>
        <div id="demoEn2" class="collapse">
               <div style="font-family: Znikomit!important;">
                    <uc1:ThongTinEn ID="ThongTinEn1" runat="server" />
                  </div>
           
        </div>
    </div>
    <!-- Footer -->
    <%--    <footer class="w3-center ">
            <div style="text-align: center" class="a">
                <img src="29.jpg" />
            </div>
        </footer>--%>
</div>


