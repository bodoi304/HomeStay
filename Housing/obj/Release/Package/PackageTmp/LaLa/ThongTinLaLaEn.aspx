<%@ Page Title="" Language="C#" MasterPageFile="~/LaLa/LaLaMaster.Master" AutoEventWireup="true" CodeBehind="ThongTinLaLaEn.aspx.cs" Inherits="Housing.LaLa.ThongTinLaLaEn1" %>

<%@ Register Src="~/LaLa/ThongTinLaLaEn.ascx" TagPrefix="uc2" TagName="ThongTinLaLaEn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <uc2:ThongTinLaLaEn runat="server" id="ThongTinLaLaEn" />
  
</asp:Content>
