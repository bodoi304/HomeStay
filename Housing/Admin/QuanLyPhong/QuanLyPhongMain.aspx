<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPhong.Master" AutoEventWireup="true" CodeBehind="QuanLyPhongMain.aspx.cs" Inherits="Housing.Admin.QuanLyPhong.QuanLyPhongMain" %>

<%@ Register Src="~/Admin/QuanLyPhong/Glistphong/GridPhong.ascx" TagPrefix="uc1" TagName="GridPhong" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:GridPhong runat="server" ID="GridPhong1" />
</asp:Content>
