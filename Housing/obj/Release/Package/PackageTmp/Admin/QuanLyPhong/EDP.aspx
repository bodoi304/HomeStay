<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPhong.Master" AutoEventWireup="true" CodeBehind="EDP.aspx.cs" Inherits="Housing.Admin.QuanLyPhong.EDP" %>


<%@ Register Src="Glistphong/GridPhong.ascx" TagName="GridPhong" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


        <div class="panel panel-widget">
            <div class="panel-title">
                <asp:Label ID="lblTitle" runat="server" Text="Quản lý đặt phòng -> Sửa xóa đặt phòng trong hệ thống"></asp:Label> 
            </div>
            <div class="panel-body">
                <!-- status -->
                <div class="contain">
                    <div class="gantt"></div>
                </div>
                <!-- status -->
            </div>
        </div>




    <uc1:GridPhong ID="GridPhong1" runat="server" />



</asp:Content>









