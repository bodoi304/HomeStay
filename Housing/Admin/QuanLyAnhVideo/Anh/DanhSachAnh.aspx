<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPhong.Master" AutoEventWireup="true" CodeBehind="DanhSachAnh.aspx.cs" Inherits="Housing.Admin.QuanLyAnhVideo.Anh.DanhSachAnh" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:HiddenField ID="hdID" runat="server" />
    <div class="panel panel-widget">
        <div class="panel-title">
            <asp:Label ID="lblTitle" runat="server" Text="Quản lý Ảnh Video -> "></asp:Label>
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl ="~/Admin/QuanLyAnhVideo/QuanLyAnh/QuanLyAnh.aspx">Sửa xóa ảnh video</asp:LinkButton>-> Ảnh video của Album
        </div>
        <div class="panel-body">
            <!-- status -->
            <div class="contain">
                <div class="gantt"></div>
            </div>
            <!-- status -->
        </div>
    </div>


    <div class="panel panel-widget forms-panel">
        <div class="forms">
            <div class="inline-form widget-shadow">
                <div class="form-title">
                    <h4>
                        <asp:Label ID="lblThongBao" runat="server" Text="Label"></asp:Label>
                    <asp:LinkButton ID="lblThemAnhChoAlBum" Style="float: right" runat="server">THÊM ẢNH CHO ALBUM</asp:LinkButton>
                  </h4>
                </div>
                <asp:Panel ID="pnAnh" runat="server">
                    <div class="form-body">
                        <p style="margin-top: 15px">
                            <asp:Label ID="lblError" runat="server" Text="" ForeColor="Blue" Font-Bold="true"></asp:Label>
                        </p>
                        <div class="form-group">
                            <div data-example-id="simple-form-inline">
                                <div class="form-inline">
                                    <div class="form-grids widget-shadow" data-example-id="basic-forms" style="margin-top: 15px">
                                        <dx:aspxgridview ID="grd_DSAnhvideo" ClientInstanceName="grid" runat="server" KeyFieldName="ID"
                                            Width="100%" AutoGenerateColumns="False" OnRowCommand="grd_DSPhong_RowCommand" OnPageIndexChanged="grd_DSPhong_PageIndexChanged">
                                            <SettingsBehavior ColumnResizeMode="Control" />
                                            <Columns>
                                                <dx:GridViewDataTextColumn Caption="" ReadOnly="True"
                                                    VisibleIndex="0" Width="60px">
                                                    <DataItemTemplate>
                                                        <a href='/Admin/QuanLyAnhVideo/Anh/SuaAnh.aspx?ID=<%# Eval("ID") %>&ID_IMAGE=<%# Eval("ID_IMAGE") %>&isAoS=0' >Sửa Video Ảnh</a>
                                                    </DataItemTemplate>
                                                    <CellStyle CssClass="GridItemCode" HorizontalAlign="Center"></CellStyle>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="" ReadOnly="True" Width="60px"
                                                    VisibleIndex="0">
                                                    <DataItemTemplate>
                                                        <asp:LinkButton OnClientClick="return confirm('Bạn muốn xóa ảnh hoặc video này không?')" ID="btnXoa" runat="server"
                                                            CommandArgument='' CommandName="cmdXoa"
                                                            Text='Xóa Video Ảnh'></asp:LinkButton>
                                                    </DataItemTemplate>
                                                    <CellStyle CssClass="GridItemCode" HorizontalAlign="Center"></CellStyle>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="ID" VisibleIndex="1" Caption="ID"
                                                    ReadOnly="True">
                                                    <CellStyle CssClass="GridItemCode" HorizontalAlign="Center"></CellStyle>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="ID_IMAGE" VisibleIndex="1" Caption="ID Album"
                                                    ReadOnly="True">
                                                    <CellStyle CssClass="GridItemCode" HorizontalAlign="Center"></CellStyle>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="VITRI_IMAGE" VisibleIndex="1" Caption="Vị Trí Image"
                                                    ReadOnly="True">
                                                    <CellStyle CssClass="GridItemCode" HorizontalAlign="Center"></CellStyle>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Ảnh" ReadOnly="True"
                                                    VisibleIndex="1">
                                                    <DataItemTemplate>
                                                        <asp:Image ID="Image1" Width="70" Height="70" runat="server" CssClass="img-responsive" ImageUrl='<%# Eval("IMAGE_URL") %>' />

                                                    </DataItemTemplate>
                                                    <CellStyle CssClass="GridItemCode" HorizontalAlign="Center"></CellStyle>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="TITLE_IMAGE" VisibleIndex="1" Caption="Tiêu đề ảnh"
                                                    ReadOnly="True">
                                                    <CellStyle CssClass="GridItemCode" HorizontalAlign="Center"></CellStyle>
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="Sap_xep" VisibleIndex="1" Caption="Sắp xếp"
                                                    ReadOnly="True">
                                                    <CellStyle CssClass="GridItemCode" HorizontalAlign="Center"></CellStyle>
                                                </dx:GridViewDataTextColumn>
                                            </Columns>
                                            <Settings GroupFormat="" ShowGroupButtons="False" />
                                            <SettingsLoadingPanel Text="Đang tải&amp;hellip;" />
                                            <Settings
                                                GroupFormat="" ShowGroupButtons="False" />
                                            <SettingsLoadingPanel
                                                Text="Đang tải&amp;hellip;" />

                                            <Settings ShowGroupButtons="False" GroupFormat=""></Settings>

                                            <SettingsLoadingPanel Text="Đang tải&amp;hellip;"></SettingsLoadingPanel>

                                            <Styles Header-Wrap="True">
                                                <Header BackColor="#B52E31"
                                                    CssClass="GridHeader" ForeColor="White" Font-Bold="True" HorizontalAlign="Center">
                                                </Header>
                                                <Footer
                                                    CssClass="GridFooter">
                                                </Footer>
                                            </Styles>
                                            <SettingsBehavior
                                                AllowSort="False" ColumnResizeMode="Control" />

                                            <SettingsBehavior AllowSort="False" ColumnResizeMode="Control"></SettingsBehavior>

                                            <SettingsPager
                                                PageSize="20" AlwaysShowPager="True">
                                                <Summary Text="Trang số {0} của {1} trang ({2} bản ghi)" />

                                            </SettingsPager>
                                        </dx:aspxgridview>
                                    </div>

                                </div>
                            </div>
                        </div>
                </asp:Panel>
                <asp:Panel ID="pnVideo" runat="server">
                    <div class="form-body">
                        <div data-example-id="simple-form-inline">
                            <div class="form-inline">
                                <asp:HiddenField ID="hdIDVideo" runat="server" />
                                <asp:Button ID="btnSuaVideo" runat="server" Text="Sửa Video" CssClass="btn btn-default" OnClick="btnSuaVideo_Click" />
                                &nbsp &nbsp&nbsp&nbsp
                                <asp:Button ID="btnThemVideo" runat="server" Text="Thêm Video" CssClass="btn btn-default" OnClick="btnThemVideo_Click" />
                            </div>
                            <div class="form-inline">

                                <div class="form-grids widget-shadow" data-example-id="basic-forms" style="margin-top: 15px">
                                    <label>Đường dẫn video</label>
                                    <asp:TextBox ID="txtVideoUrl" Width="100%" Style="color: black !important" runat="server" placeholder="Video Url" CssClass=" form-control"></asp:TextBox>
                                </div>

                            </div>
                            <div class="form-inline">

                                <div class="form-grids widget-shadow" data-example-id="basic-forms" style="margin-top: 15px">
                                    <% foreach (DataAcees.Object.Video_Obj item in lstVideo)
                                       {  %>
                                    <iframe width="100%" height="600" src="<%= item.VIDEO_URL %>" frameborder="0" allowfullscreen></iframe>
                                    <%   }   %>
                                </div>

                            </div>
                        </div>
                    </div>
                </asp:Panel>
            </div>
        </div>
    </div>

</asp:Content>
