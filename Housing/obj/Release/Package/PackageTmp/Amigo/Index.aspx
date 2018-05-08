<%@ Page Title="" Language="C#" MasterPageFile="~/Amigo/amigo.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Housing.Amigo.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="container">
        <h2 class="tittle" style="color: rgb(124, 158, 74) !important;">CHÀO MỪNG ĐẾN VỚI AMIGO HOUSE</h2>
        <p class="wel text"></p>
        <div class="wel-grids">          
             <div class="col-md-3 wel-grid">
                 <a href="/Amigo/RoomAmigo.aspx?ID=10046">

                <img src="image/anhcanho.jpg" class="img-responsive gray" alt="" />
                <h4>Ảnh Cắn Hộ Amigo</h4>
                <p></p>
                     </a>
            </div>
          
             <div class="col-md-3 wel-grid">
                 <a href="/LaLa/RoomLaLa.aspx?ID=10043">
                <img src="image/L2_Ban.jpg" class="img-responsive gray" alt="" />
                <h4>Phòng L2</h4>
                <p></p>
                     </a>
            </div>
                  <div class="col-md-3 wel-grid">
                 <a href="/LaLa/RoomLaLa.aspx?ID=10044">
                <img src="image/L3_Ban.png" class="img-responsive gray" alt="" />
                <h4>Phòng L3</h4>
                <p></p>
                     </a>
            </div>
                        <div class="col-md-3 wel-grid">
                 <a href="/LaLa/RoomLaLa.aspx?ID=10045">
                <img src="image/L4_Ban.png" class="img-responsive gray" alt="" />
                <h4>Phòng L4</h4>
                <p></p>
                     </a>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>

</asp:Content>
