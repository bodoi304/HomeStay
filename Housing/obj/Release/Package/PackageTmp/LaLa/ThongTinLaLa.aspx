<%@ Page Title="" Language="C#" MasterPageFile="~/LaLa/LaLaMaster.Master" AutoEventWireup="true" CodeBehind="ThongTinLaLa.aspx.cs" Inherits="Housing.LaLa.ThongTinLaLa1" %>

<%@ Register Src="~/LaLa/ThongTinLaLa.ascx" TagPrefix="uc1" TagName="ThongTinLaLa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ThongTinLaLa runat="server" ID="ThongTinLaLa" />
</asp:Content>
