<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPhong.Master" AutoEventWireup="true" CodeBehind="QuanLyAnh.aspx.cs" Inherits="Housing.Admin.QuanLyAnhVideo.QuanLyAnh.QuanLyAnh" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>





<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="panel panel-widget">
        <div class="panel-title">
            <asp:Label ID="lblTitle" runat="server" Text="Quản lý Ảnh Video -> Sửa xóa ảnh video"></asp:Label>
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
                        <asp:Label ID="lblTe" runat="server" Text="QUẢN LÝ ALBUM"></asp:Label>
                           <asp:LinkButton ID="LinkButton1" Style="float : right " runat="server" PostBackUrl="/Admin/QuanLyAnhVideo/QuanLyAnh/ThemQuanLyAnhVideo.aspx?isAoS=1">THÊM ALBUM</asp:LinkButton>
                    </h4>
                </div>
             
                <div class="form-body">
                    <div data-example-id="simple-form-inline">
                        <div class="form-inline">
                            <asp:Panel ID="pnTimKiem" runat="server">

                                <div class="form-group">
                                    <asp:TextBox ID="txtID" Style="color: black !important" runat="server" placeholder="ID Ảnh Video" CssClass=" form-control"></asp:TextBox>

                                </div>
                                <div class="form-group">
                                    <asp:DropDownList ID="drAnhVideo" CssClass="form-control" runat="server" Width="250px" Style="color: black !important">
                                        <asp:ListItem Value="0" Selected="true">Tất cả</asp:ListItem>
                                        <asp:ListItem Value="1">Ảnh</asp:ListItem>
                                        <asp:ListItem Value="2">Video</asp:ListItem>
                                    </asp:DropDownList>
                                </div>

                                <asp:Button ID="btnTimKiem" runat="server" Text="Tìm Kiếm" CssClass="btn btn-default" OnClick="btnTimKiem_Click" />
                                <p style="margin-top: 15px">
                                    <asp:Label ID="lblThongBao" runat="server" Text="" ForeColor="Blue" Font-Bold="true"></asp:Label>
                                </p>
                            </asp:Panel>



                            <div class="form-grids widget-shadow" data-example-id="basic-forms" style="margin-top: 15px">
                                <dx:ASPxGridView ID="grd_DSAnhvideo" ClientInstanceName="grid" runat="server" KeyFieldName="ID"
                                    Width="100%" AutoGenerateColumns="False" OnCustomColumnDisplayText="grd_DSPhong_CustomColumnDisplayText" OnRowCommand="grd_DSPhong_RowCommand" OnPageIndexChanged="grd_DSPhong_PageIndexChanged">
                                    <SettingsBehavior ColumnResizeMode="Control" />
                                    <Columns>
                                        <dx:GridViewDataTextColumn Caption="" ReadOnly="True"
                                            VisibleIndex="0" Width="60px">
                                            <DataItemTemplate>
                                                <a href='/Admin/QuanLyAnhVideo/Anh/DanhSachAnh.aspx?ID=<%# Eval("ID") %>&isAV=<%# Eval("IS_IMAGE_VIDEO") %>' >Ảnh Video Của AlBum</a>
                                            </DataItemTemplate>
                                            <CellStyle CssClass="GridItemCode" HorizontalAlign="Center"></CellStyle>
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="" ReadOnly="True"
                                            VisibleIndex="0" Width="60px">
                                            <DataItemTemplate>
                                                <a href='/Admin/QuanLyAnhVideo/QuanLyAnh/ThemQuanLyAnhVideo.aspx?isAoS=2&ID=<%# Eval("ID") %>' >Sửa Album</a>
                                            </DataItemTemplate>
                                            <CellStyle CssClass="GridItemCode" HorizontalAlign="Center"></CellStyle>
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="" ReadOnly="True" Width="60px"
                                            VisibleIndex="0">
                                            <DataItemTemplate>
                                                <asp:LinkButton OnClientClick="return confirm('Bạn muốn xóa ảnh hoặc video này không?')" ID="btnXoa" runat="server"
                                                    CommandArgument='' CommandName="cmdXoa"
                                                    Text='Xóa Album'></asp:LinkButton>
                                            </DataItemTemplate>
                                            <CellStyle CssClass="GridItemCode" HorizontalAlign="Center"></CellStyle>
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn FieldName="ID" VisibleIndex="1" Caption="ID"
                                            ReadOnly="True">
                                            <CellStyle CssClass="GridItemCode" HorizontalAlign="Center"></CellStyle>
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn Caption="Ảnh" ReadOnly="True"
                                            VisibleIndex="1">
                                            <DataItemTemplate>
                                                <asp:Image ID="Image1" Width="70" Height="70" runat="server" CssClass="img-responsive" ImageUrl='<%# Eval("ICON_VIDEO_IMAGE") %>' />

                                            </DataItemTemplate>
                                            <CellStyle CssClass="GridItemCode" HorizontalAlign="Center"></CellStyle>
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn FieldName="QUOTE" VisibleIndex="1" Caption="Tên bộ ảnh"
                                            ReadOnly="True">
                                            <CellStyle CssClass="GridItemCode" HorizontalAlign="Center"></CellStyle>
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn FieldName="NAME" VisibleIndex="1" Caption="Tên tác giả"
                                            ReadOnly="True">
                                            <CellStyle CssClass="GridItemCode" HorizontalAlign="Center"></CellStyle>
                                        </dx:GridViewDataTextColumn>

                                        <dx:GridViewDataTextColumn FieldName="IS_IMAGE_VIDEO" VisibleIndex="1" Caption="Ảnh hay Video"
                                            ReadOnly="True">
                                            <CellStyle CssClass="GridItemCode" HorizontalAlign="Center"></CellStyle>
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn FieldName="DIA_DIEM" VisibleIndex="1" Caption="Địa điểm"
                                            ReadOnly="True">
                                            <CellStyle CssClass="GridItemCode" HorizontalAlign="Center"></CellStyle>
                                        </dx:GridViewDataTextColumn>

                                        <dx:GridViewDataTextColumn FieldName="LOAI_IMAGE" VisibleIndex="1" Caption="Loại Ảnh"
                                            ReadOnly="True">
                                            <CellStyle CssClass="GridItemCode" HorizontalAlign="Center"></CellStyle>
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn FieldName="LOAI_VIDEO" VisibleIndex="1" Caption="Loại video"
                                            ReadOnly="True">
                                            <CellStyle CssClass="GridItemCode" HorizontalAlign="Center"></CellStyle>
                                        </dx:GridViewDataTextColumn>

                                        <dx:GridViewDataTextColumn FieldName="THU_TU_UU_TIEN" VisibleIndex="1" Caption="Sắp xếp"
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
                                </dx:ASPxGridView>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
