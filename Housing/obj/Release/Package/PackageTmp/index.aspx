<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Housing.index1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row" id="infinite">
        <div class='col-lg-2 col-md-3 col-sm-4 col-xs-6 grid-item bs-square'>
            <a href='#'>
                <span class='placeholder'></span>
                <div class='img-holder'>
                    <a href="index.aspx">
                        <img src="icon/LogoHouzing.jpg" height='320' width='320' /></a>

                </div>
            </a>
        </div>
        <div class='col-lg-2 col-md-3 col-sm-4 col-xs-6 grid-item'>
            <a href='/AboutMe/AboutMe.aspx'>
                <span class='placeholder'></span>

                <div class='img-holder'>

                    <img alt="Houzing" height="228" src="/AboutMe/tuan.jpg" width="228">
                </div>
                   <div class="rollover">
                    <span class="quote">Giới thiệu về bản thân tôi
                    </span>
                    <span class="name">Nguyễn Phi Tuấn
                    </span>
                    <span class="icon photo_galleries"></span>

                </div>
             
            </a>
        </div>
        <% foreach (DataAcees.Object.QuanLyAnhVideo_Obj item in lstQlAnh)
           { %>

        <% if (item.IS_IMAGE_VIDEO == Common.Constant.Video)
           { %>
        <div class='col-lg-2 col-md-3 col-sm-4 col-xs-6 grid-item'>
            <a href='/film/film.aspx?ID=<%= item.ID %>'>
                <span class='placeholder'></span>

                <div class='img-holder'>
                    <img alt="Houzing" height="228" src="<%= item.ICON_VIDEO_IMAGE %>" width="228">
                </div>
                <div class='rollover'>
                    <span class='quote'><%= item.QUOTE %>
                    </span>
                    <span class='name true'><%= item.NAME %>
                    </span>
                    <span class='filmmaker_films icon'></span>
                    <span class="duration" title="duration"><%= item.DURATION_VIDEO %>
                </div>
            </a>
        </div>
        <% }
           else
           {%>
        <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6 grid-item">
            <a href="Gallary/Gallery.aspx?ID=<%= item.ID %>">
                <span class="placeholder"></span>
                <div class="img-holder">

                    <img alt="Images by Adithio Noviello, North Waigeo, Raja Ampat" height="228" src="<%= item.ICON_VIDEO_IMAGE %>" width="225">
                </div>
                <div class="rollover">
                    <span class="quote"><%= item.QUOTE %>
                    </span>
                    <span class="name"><%= item.NAME %>
                    </span>
                    <span class="icon photo_galleries"></span>

                </div>
            </a>
        </div>
        <% }
           }  %>
    </div>
</asp:Content>
