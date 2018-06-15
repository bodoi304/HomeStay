<%@ Page Title="" Language="C#" MasterPageFile="~/Tina/Tina.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Housing.Tina.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2 class="tittle">Chào mừng đến với TINA House</h2>
        <p class="wel text">TINA house là Homestay được thiết kế theo phong cách “SỐNG CHẬM” - ngôi nhà bé xinh nằm ngay MẶT BIỂN PhướcHải - Vũng Tàu, nằm trong khu dân cư làng chài tấp nập KHÔNG giống như mấy Resort ở cách xa khu dân cư đâu nha các bạn . Từ Tina House các bạn có thể đi bộ ra chợ lớn đông vui, chạy ào ra biển, ra các quán bán đồ hải sản tươi ngon ăn tại chỗ, có tiệm tạp hoá đầy đủ, Nếu bạn nào thích có thể vào nhà dân mua cá đuối khô hay nước mắm Phước Hải ăn ngon tới giọt cuối cùng.</p>
        <div class="wel-grids">          
             <div class="col-md-3 wel-grid">
                 <a href="/Tina/RoomTina.aspx?ID=10051">
                <img src="Image/nhanhotina.JPG" class="img-responsive gray" alt="" />
                <h4>Nguyên căn - Nhà nhỏ </h4>
                <p></p>
                     </a>
            </div>
          
             <div class="col-md-3 wel-grid">
                 <a href="/Tina/RoomTina.aspx?ID=10052">
                <img src="Image/dorm.png" class="img-responsive gray" alt="" />
                <h4>Phòng Dorm - Nhà lớn</h4>
                <p></p>
                     </a>
            </div>
     
            <div class="clearfix"></div>
        </div>
    </div>
</asp:Content>
