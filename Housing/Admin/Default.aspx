<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPhong.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Housing.Admin.Default" %>
<%@ Register src="QuanLyPhong/Glistphong/GridPhong.ascx" tagname="GridPhong" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:GridPhong ID="GridPhong1" runat="server" />
</asp:Content>
