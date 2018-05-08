<%@ Page Title="" Language="C#" MasterPageFile="~/SubTemplate.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="Housing.Gallary.Gallery1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class='dock'>
        <a class='toggle-dock' href='javascript:;'></a>
        <div class='controls'></div>
        <div class='row heading'>
            <div class='col-sm-4'>
                <h3><% if (lstAnh.Count > 0) { %>
                          <%= lstAnh[0].VITRI_IMAGE  %> 
                          <% } %>
                </h3>
            </div>
            <div class='col-sm-8'>
                <p><% if (lstAnh.Count > 0) { %>
                   <%=  lstAnh[0].TITLE_IMAGE %>
                     <% } %>
                </p>
            </div>
        </div>
        <div class='dock-content'>
            <a class='previous' href='javascript:;'>Previous
            </a>
            <a class='next' href='javascript:;'>Next
            </a>
            <ul class='thumbnails' style='width: 6500px'>
                <% for (int i = 0; i < lstAnh.Count; i++)
                   { %>


                <li>
                    <div class='thumbnail'>
                        <span class='hover-info'><%= lstAnh[i].IMAGE_HOVER %>
                        </span>
                        <a href='javascript:;' rel='<%= i+1 %>'>

                            <img src='<%= lstAnh[i].IMAGE_THUMB_URL %>'  width="86" height="86"/>
                        </a>
                    </div>

                </li>

                <% } %>
            </ul>
        </div>
    </div>
    <div class='slider-holder'>
        <ul class='slideshow'>
            <% for (int i = 0; i < lstAnh.Count; i++)
               { %>
            <li>

                <img src='<%= lstAnh[i].IMAGE_URL %>' />
            </li>
            <% } %>
        </ul>
    </div>
</asp:Content>
