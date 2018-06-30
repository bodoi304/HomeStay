<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MenuFix.ascx.cs" Inherits="Housing.TemplateChung.MenuFix" %>
<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<style>
    .booknow1 {
        width: 134px;
        height: 72px;
        position: fixed;
        top: 30px;
        right: 0px;
        z-index: 1010;
    }

    .booknowinta1 {
        width: 134px;
        height: 72px;
        position: fixed;
        top: 72px;
        right: -38px;
        z-index: 1010;
    }

    .weather {
        width: 134px;
        height: 72px;
        position: absolute ;
        top: 110px;
        right: -60px;
        z-index: 1010;
        color: white !important;
    }

    .popup {
        position: fixed;
        z-index: 9999;
        width: 320px;
    }

    .weather h3 {
        color: inherit;
    }

    .weather p {
        color: inherit;
    }
</style>

<div class="booknow1">
    <a href="<%= urlBook %>" target="_blank">
        <img src="<%= imageBook %>" />
    </a>
</div>
<asp:Panel ID="pnInta" runat="server">
<div class="booknowinta1">
    <a href="<%= urlInta %>" target="_blank">
        <img src="<%= imageInta %>" />
    </a>
</div>
</asp:Panel>
<div class="weather">
    <dx:ASPxImage ID="imageWether" runat="server" ShowLoadingImage="true" ImageUrl="../images/weather.png">
        <ClientSideEvents Click="function(s, e) { popupWether.Show(); }" />
    </dx:ASPxImage>



</div>
<div class="popup">
    <dx:ASPxPopupControl ID="popup" AllowDragging="True" PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="Above" ClientInstanceName="popupWether" runat="server"  Width="350px" Height="500px" HeaderText="Thời Tiết" ScrollBars="Vertical">
        <HeaderStyle Font-Size="Medium" ForeColor="Black" HorizontalAlign="Center">
            <Paddings Padding="8px" />
        </HeaderStyle>
        <ContentCollection>
            <dx:PopupControlContentControl runat="server" SupportsDisabledAttribute="True">

                <a href="<%= WeatherUrl %>" class="aw-widget-legal"></a>
                <div id="awtd1526492367870" class="aw-widget-36hour" data-locationkey="<%= locationKey %>" data-unit="c" data-language="vi" data-useip="false" data-uid="<%= data_uid %>" data-editlocation="true"></div>
                <script type="text/javascript" src="https://oap.accuweather.com/launch.js"></script>


            </dx:PopupControlContentControl>
        </ContentCollection>
    </dx:ASPxPopupControl>

</div>
