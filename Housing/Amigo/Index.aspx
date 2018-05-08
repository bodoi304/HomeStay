<%@ Page Title="" Language="C#" MasterPageFile="~/Amigo/amigo.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Housing.Amigo.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="container">
        <h2 class="tittle" style="color: rgb(124, 158, 74) !important;font-size:35px">CHÀO MỪNG ĐẾN VỚI AMIGO HOMESTAY - VŨNG TÀU</h2>
        <p class="wel text"></p>
        <div class="wel-grids">          
             <div class="col-md-3 wel-grid">
                 <a href="/Amigo/RoomAmigo.aspx?ID=10046">

                <img src="image/anhcanho.jpg" class="img-responsive gray" alt="" />
                <h4>Ảnh Căn Hộ Amigo</h4>
                <p></p>
                     </a>
            </div>
         
             <div class="col-md-3 wel-grid">
                 <a href="/Amigo/RoomAmigo.aspx?ID=10047">
                <img src="image/sinhhoatamigo.jpg" class="img-responsive gray" alt="" />
                <h4>Sinh Hoạt Tại Amigo</h4>
                <p></p>
                     </a>
            </div>
                
            <div class="clearfix"></div>
        </div>
    </div>

</asp:Content>
