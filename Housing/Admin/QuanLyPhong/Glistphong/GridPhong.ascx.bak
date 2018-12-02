<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GridPhong.ascx.cs" Inherits="Housing.Admin.QuanLyPhong.Glistphong.GridPhong" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<div class="panel panel-widget forms-panel">
    <div class="forms">
        <div class="inline-form widget-shadow">
            <div class="form-title">
                <h4>
                    <asp:Label ID="lblTitle" runat="server" Text="Label"></asp:Label></h4>
            </div>
            <div class="form-body">
                <div data-example-id="simple-form-inline">
                    <div class="form-inline">
                        <asp:Panel ID="pnTimKiem" runat="server">
                            <div class="form-group">
                                <asp:TextBox data-mask="00/00/0000" data-mask-selectonfocus="true" ID="txtCheckin" Style="color: black !important" runat="server" placeholder="check-In dd/mm/yyyy" CssClass="simple-field-data-mask-selectonfocus date form-control datepicker"></asp:TextBox>



                            </div>
                            <div class="form-group">
                                <asp:TextBox data-mask="00/00/0000" data-mask-selectonfocus="true" ID="txtCheckout" Style="color: black !important" runat="server" placeholder="check-Out dd/mm/yyyy" CssClass="simple-field-data-mask-selectonfocus date form-control datepicker"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtSoDienThoai" Style="color: black !important" runat="server" placeholder="Số Điện Thoại" CssClass=" form-control"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtIDPhong" Style="color: black !important" runat="server" placeholder="ID đặt phòng" CssClass=" form-control"></asp:TextBox>

                            </div>
                            <asp:Button ID="btnTimKiem" runat="server" Text="Kiểm Tra Phòng" CssClass="btn btn-default" OnClick="btnTimKiem_Click" />
                            <p style="margin-top: 15px">
                                <asp:Label ID="lblThongBao" runat="server" Text="" ForeColor="Blue" Font-Bold="true"></asp:Label>
                            </p>
                            <div class="form-group">
                                <asp:TextBox data-mask="00/00/0000" data-mask-selectonfocus="true" ID="txtNgayTaoTu" Style="color: black !important" runat="server" placeholder="Ngày tạo từ dd/mm/yyyy" CssClass="simple-field-data-mask-selectonfocus date form-control datepicker"></asp:TextBox>



                            </div>
                            <div class="form-group">
                                <asp:TextBox data-mask="00/00/0000" data-mask-selectonfocus="true" ID="txtNgayTaoDen" Style="color: black !important" runat="server" placeholder="Ngày tạo đến dd/mm/yyyy" CssClass="simple-field-data-mask-selectonfocus date form-control datepicker"></asp:TextBox>

                            </div>

                            <asp:Button ID="btnNgayTaoTK" runat="server" Text="Kiểm Tra Doanh Thu" CssClass="btn btn-default" OnClick="btnNgayTaoTK_Click"  />
                            <p style="margin-top: 15px">
                                <asp:Label ID="Label1" runat="server" Text="" ForeColor="Blue" Font-Bold="true"></asp:Label>
                            </p>
                        </asp:Panel>
                       


                        <div class="form-grids widget-shadow" data-example-id="basic-forms" style="margin-top: 15px">
                            <dx:ASPxGridView ID="grd_DSPhong" ClientInstanceName="grid" runat="server" KeyFieldName="ID"
                                Width="100%" AutoGenerateColumns="False" OnCustomColumnDisplayText="grd_DSPhong_CustomColumnDisplayText" OnRowCommand="grd_DSPhong_RowCommand" OnPageIndexChanged="grd_DSPhong_PageIndexChanged" OnHtmlRowPrepared="grd_DSPhong_HtmlRowPrepared">
                                <SettingsBehavior ColumnResizeMode="Control" />
                                <Columns>
                                    <dx:GridViewDataTextColumn Caption="" ReadOnly="True"
                                        VisibleIndex="0" Width="50px">
                                        <DataItemTemplate>
                                            <a href='/Admin/QuanLyPhong/SuaPhong.aspx?bnm=<%# Eval("ID") %>'>Sửa Đặt Phòng</a>
                                        </DataItemTemplate>
                                        <CellStyle CssClass="GridItemCode" HorizontalAlign="Center"></CellStyle>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="" ReadOnly="True"
                                        VisibleIndex="0" Width="50px">
                                        <DataItemTemplate>
                                            <asp:LinkButton OnClientClick="return confirm('Bạn muốn xóa đặt phòng này không?')" ID="btnXoa" runat="server"
                                                CommandArgument='' CommandName="cmdXoa"
                                                Text='Xóa Đặt Phòng'></asp:LinkButton>
                                        </DataItemTemplate>
                                        <CellStyle CssClass="GridItemCode" HorizontalAlign="Center"></CellStyle>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="ID" VisibleIndex="1" Caption="ID"
                                        ReadOnly="True" Width="50px">
                                        <CellStyle CssClass="GridItemCode" HorizontalAlign="Center"></CellStyle>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="Ten_Khach_Hang" VisibleIndex="1" Caption="Tên khách hàng"
                                        ReadOnly="True">
                                        <CellStyle CssClass="GridItemCode" HorizontalAlign="Center"></CellStyle>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="So_Dien_Thoai" VisibleIndex="1" Caption="Số điện thoại"
                                        ReadOnly="True">
                                        <CellStyle CssClass="GridItemCode" HorizontalAlign="Center"></CellStyle>
                                    </dx:GridViewDataTextColumn>

                                    <dx:GridViewDataTextColumn FieldName="So_Phong_Dat" VisibleIndex="1" Caption="Số hiệu phòng"
                                        ReadOnly="True">
                                        <CellStyle CssClass="GridItemCode" HorizontalAlign="Center"></CellStyle>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="Check_in" VisibleIndex="1" Caption="Check In"
                                        ReadOnly="True">
                                        <CellStyle CssClass="GridItemCode" HorizontalAlign="Center"></CellStyle>
                                    </dx:GridViewDataTextColumn>

                                    <dx:GridViewDataTextColumn FieldName="Check_out" VisibleIndex="1" Caption="Check Out"
                                        ReadOnly="True">
                                        <CellStyle CssClass="GridItemCode" HorizontalAlign="Center"></CellStyle>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="Tong_tien_phong" VisibleIndex="1" Caption="Tổng tiền phòng"
                                        ReadOnly="True">
                                        <CellStyle CssClass="GridItemCode" HorizontalAlign="Center"></CellStyle>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="Tien_chuyen_khoan" VisibleIndex="1" Caption="Tiền chuyển khoản"
                                        ReadOnly="True">
                                        <CellStyle CssClass="GridItemCode" HorizontalAlign="Center"></CellStyle>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="Tien_Con_Phai_Tra" VisibleIndex="1" Caption="Tiền còn phải trả"
                                        ReadOnly="True">
                                        <CellStyle CssClass="GridItemCode" HorizontalAlign="Center"></CellStyle>
                                    </dx:GridViewDataTextColumn>
                 <%--                   <dx:GridViewDataTextColumn FieldName="Ngay_Sinh_Nhat" VisibleIndex="1" Caption="Ngày Sinh"
                                        ReadOnly="True">
                                        <CellStyle CssClass="GridItemCode" HorizontalAlign="Center"></CellStyle>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="Noi_Song" VisibleIndex="1" Caption="Nơi Sống"
                                        ReadOnly="True">
                                        <CellStyle CssClass="GridItemCode" HorizontalAlign="Center"></CellStyle>
                                    </dx:GridViewDataTextColumn>--%>
                                    <dx:GridViewDataTextColumn FieldName="Ghi_chu" VisibleIndex="1" Caption="Ghi Chú"
                                        ReadOnly="True">
                                        <CellStyle CssClass="GridItemCode" HorizontalAlign="Left"></CellStyle>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="NGAY_TAO" VisibleIndex="1" Caption="Ngày tạo"
                                        ReadOnly="True">
                                        <CellStyle CssClass="GridItemCode" HorizontalAlign="Center"></CellStyle>
                                    </dx:GridViewDataTextColumn>
                                      <dx:GridViewDataTextColumn FieldName="Trang_Thai_Dat" VisibleIndex="1" Visible="false"  Caption="Ngày tạo"
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

