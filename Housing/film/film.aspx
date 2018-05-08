<%@ Page Title="" Language="C#" MasterPageFile="~/SubTemplate.Master" AutoEventWireup="true" CodeBehind="film.aspx.cs" Inherits="Housing.film.film" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <% foreach (DataAcees.Object.Video_Obj item in lstVideo)
       {  %>


    <iframe width="100%" height="100%" src="<%= item.VIDEO_URL %>" frameborder="0" allowfullscreen></iframe>
    <%   }   %>
</asp:Content>
