<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPhong.Master" AutoEventWireup="true" CodeBehind="SuaThemPhongNhanh.aspx.cs" Inherits="Housing.Admin.QuanLyPhong.SuaThemPhongNhanh" %>

<%@ Register Src="~/Admin/QuanLyPhong/Glistphong/GridPhong.ascx" TagPrefix="uc1" TagName="GridPhong" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="panel panel-widget">
            <div class="panel-title">
                <asp:Label ID="lblTitle" runat="server" Text="Quản lý đặt phòng -> Sửa thêm đặt phòng nhanh"></asp:Label> 
            </div>
            <div class="panel-body">
                <!-- status -->
                <div class="contain">
                    <div class="gantt"></div>
                </div>
                <!-- status -->
            </div>
        </div>

    <uc1:GridPhong runat="server" ID="GridPhong" />
</asp:Content>
