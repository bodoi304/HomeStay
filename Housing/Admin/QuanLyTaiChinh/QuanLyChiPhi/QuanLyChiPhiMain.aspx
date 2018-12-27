<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPhong.Master" AutoEventWireup="true" CodeBehind="QuanLyChiPhiMain.aspx.cs" Inherits="Housing.Admin.QuanLyTaiChinh.QuanLyChiPhi.QuanLyChiPhiMain1" %>
<%@ Register Assembly="DevExpress.Web.ASPxHtmlEditor.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxHtmlEditor" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="panel panel-widget forms-panel">
        <div class="forms">
            <div class="inline-form widget-shadow">
                <div class="form-title">
                    <h4>
                        <asp:Label ID="lblTitle" runat="server" Text="QUẢN LÝ CHI PHÍ"></asp:Label></h4>
                </div>
                <div class="form-body">
                    <div data-example-id="simple-form-inline">
                        <div class="form-inline">
                            <div class="form-grids widget-shadow" data-example-id="basic-forms" style="margin-top: 15px">
                                <dx:aspxgridview id="grd_ChiPhi" clientinstancename="grd_ChiPhi" runat="server" keyfieldname="ID" 
                                    width="100%" autogeneratecolumns="False" onrowdeleting="grd_ChiPhi_RowDeleting"
                                    onrowupdating="grd_ChiPhi_RowUpdating" onrowinserting="grd_ChiPhi_RowInserting"
                                    onpageindexchanged="grd_ChiPhi_PageIndexChanged"
                                    onprocesscolumnautofilter="grd_ChiPhi_ProcessColumnAutoFilter"
                                    onbeforecolumnsortinggrouping="grd_ChiPhi_BeforeColumnSortingGrouping" OnCustomColumnDisplayText="grd_ChiPhi_CustomColumnDisplayText" OnRowValidating="grd_ChiPhi_RowValidating">
                                    <ClientSideEvents  EndCallback="function(s, e) {
OnGridNotifyEndCallback(s, e);
}" />
                                    <Columns>
                                        <dx:GridViewCommandColumn ShowNewButtonInHeader="true" ShowEditButton="true" VisibleIndex="0" ShowDeleteButton="true" Width="100" />

                                        <dx:GridViewDataTextColumn FieldName="ID" VisibleIndex="1" Caption="ID"
                                            Width="35px">
                                            <Settings AllowAutoFilter="False" />
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn FieldName="So_Tien_Chi_Phi" VisibleIndex="1" Caption="Chi phí">
                                        </dx:GridViewDataTextColumn>
                                       <dx:GridViewDataTextColumn FieldName="Ngay_Nhap_Chi_Phi" VisibleIndex="1" Caption="Ngày tạo"
                                        ReadOnly="True">
                                        <CellStyle CssClass="GridItemCode" HorizontalAlign="Center"></CellStyle>
                                    </dx:GridViewDataTextColumn>
                                                          <dx:GridViewDataTextColumn FieldName="Ghi_Chu" Caption="Ghi Chú" ReadOnly="True"
                                        VisibleIndex="1" >
                                        <DataItemTemplate>
                                            <%# Eval("Ghi_chu") %>
                                        </DataItemTemplate>
                                        <CellStyle CssClass="GridItemCode" HorizontalAlign="Left"></CellStyle>
                                    </dx:GridViewDataTextColumn>
                                      <%--  <dx:GridViewDataTextColumn FieldName="Ghi_Chu" VisibleIndex="1" Caption="Ghi chú">
                                        </dx:GridViewDataTextColumn>--%>
                                    </Columns>
                                    <Templates>

                                      <EditForm>
                                                       <dx:ASPxFormLayout runat="server" ID="LayOutThemSua">
                                                    <SettingsAdaptivity AdaptivityMode="SingleColumnWindowLimit" SwitchToSingleColumnAtWindowInnerWidth="576" />
                                                    <Items>
                                                        <dx:LayoutGroup Caption="CHI PHÍ" ColCount="1" GroupBoxDecoration="HeadingLine" Paddings-Padding="0" Paddings-PaddingTop="10">
                                                            <GroupBoxStyle>
                                                                <Caption Font-Bold="true" Font-Size="16" CssClass="groupCaption" />
                                                            </GroupBoxStyle>
                                                            <Items>
                                                                <dx:LayoutItem Caption="Số tiền chi phí:">
                                                                    <LayoutItemNestedControlCollection>
                                                                        <dx:LayoutItemNestedControlContainer>
                                                                            <dx:ASPxSpinEdit ID="txtSotienNo" runat="server" Text='<%# Bind("So_Tien_Chi_Phi")%>' DisplayFormatString="###,##0.######">
                                                                            </dx:ASPxSpinEdit>
                                                                        </dx:LayoutItemNestedControlContainer>
                                                                    </LayoutItemNestedControlCollection>
                                                                </dx:LayoutItem>
                                                                 <dx:LayoutItem Caption="Ngày nhập chi phí:">
                                                                    <LayoutItemNestedControlCollection>
                                                                        <dx:LayoutItemNestedControlContainer>
                                                                            <dx:ASPxDateEdit ID="txtNgayNhapChiPhi" Width="250" Value='<%# Bind("Ngay_Nhap_Chi_Phi") %>' runat="server" EditFormatString="dd/MM/yyyy" UseMaskBehavior="True">
                                                                                <calendarproperties clearbuttontext="Xóa" todaybuttontext="Ngày hôm nay">
                                                                                   
                                                                                </calendarproperties>
                                                                                <TimeSectionProperties CancelButtonText="Thoát" OkButtonText="Đồng ý"></TimeSectionProperties>
                                                                            </dx:ASPxDateEdit>
                           
                                                                        </dx:LayoutItemNestedControlContainer>
                                                                    </LayoutItemNestedControlCollection>
                                                                </dx:LayoutItem>
                                                                <dx:LayoutItem Caption="Ghi chú:">
                                                                    <LayoutItemNestedControlCollection>
                                                                        <dx:LayoutItemNestedControlContainer>
                                                                                                <dx:ASPxHtmlEditor ID="txtGhiChu" runat="server" Html='<%# Bind("Ghi_Chu")%>' >
                            <Settings AllowHtmlView="False" AllowInsertDirectImageUrls="False" AllowPreview="False" AllowContextMenu="False">
                            </Settings>
                             <ClientSideEvents Init="function(s, e) {
        s.core.setSpellCheckAttributeValue(false);
    }" />
                        </dx:ASPxHtmlEditor>
                                                                         
                                                                        </dx:LayoutItemNestedControlContainer>
                                                                    </LayoutItemNestedControlCollection>
                                                                </dx:LayoutItem>
                                                    
                                                            </Items>
                                                        </dx:LayoutGroup>
                                                    </Items>
                                                </dx:ASPxFormLayout>
                                                   
                                                    <div style="text-align: right; padding: 10px;padding-right :50px">
                                                        <dx:ASPxGridViewTemplateReplacement ID="UpdateButton" ReplacementType="EditFormUpdateButton" runat="server" />
                                                        <dx:ASPxGridViewTemplateReplacement ID="CancelButton" ReplacementType="EditFormCancelButton" runat="server" />
                                                    </div>
                                                </EditForm>

                                    </Templates>
                                </dx:aspxgridview>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
