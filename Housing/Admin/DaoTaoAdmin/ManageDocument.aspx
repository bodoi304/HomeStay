<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPhong.Master" AutoEventWireup="true" CodeBehind="ManageDocument.aspx.cs" Inherits="Housing.Admin.DaoTaoAdmin.ManageDocument" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxTreeList.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxTreeList" TagPrefix="dx" %>

<%@ Register Src="ThemSuaTaiLieu.ascx" TagName="ThemSuaTaiLieu" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function MasterGrid_DetailRowCollapsing(s, e) {
            var key = gridTaiLieu.GetRowKey(e.visibleIndex);
            hf.Set('collapsedRowKey', key);
        }
        function MasterGrid_EndCallback(s, e) {
            if (hf.Contains('collapsedRowKey'))
                hf.Remove('collapsedRowKey');
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:MultiView ID="mtView" runat="server">
        <asp:View ID="vwLoaiTaiLieu" runat="server">
            <div class="panel panel-widget forms-panel">
                <div class="forms">
                    <div class="inline-form widget-shadow">
                        <div class="form-title">

                            <h4>
                                <asp:Label ID="lblTitle" runat="server" Text="QUẢN LÝ TÀI LIỆU"></asp:Label></h4>
                        </div>
                        <div class="form-body">
                            <div data-example-id="simple-form-inline">
                                <div class="form-inline">
                                    <div class="form-grids widget-shadow" data-example-id="basic-forms" style="margin-top: 15px">

                                        <dx:ASPxHiddenField ID="HF" runat="server" ClientInstanceName="hf"></dx:ASPxHiddenField>
                                        <dx:ASPxGridView ID="grd_LoaiTaiLieu" ClientInstanceName="gridTaiLieu" runat="server" KeyFieldName="ID"
                                            Width="100%" AutoGenerateColumns="False" OnRowDeleting="grd_LoaiTaiLieu_RowDeleting"
                                            OnRowUpdating="grd_LoaiTaiLieu_RowUpdating" OnRowInserting="grd_LoaiTaiLieu_RowInserting"
                                            OnRowCommand="grd_LoaiTaiLieu_RowCommand" OnPageIndexChanged="grd_LoaiTaiLieu_PageIndexChanged"
                                            OnProcessColumnAutoFilter="grd_LoaiTaiLieu_ProcessColumnAutoFilter"
                                            OnRowValidating="grd_LoaiTaiLieu_RowValidating" OnBeforeColumnSortingGrouping="grd_LoaiTaiLieu_BeforeColumnSortingGrouping">
                                            <ClientSideEvents DetailRowCollapsing="MasterGrid_DetailRowCollapsing" EndCallback="function(s, e) {
OnGridNotifyEndCallback(s, e);
	MasterGrid_EndCallback(s, e);
}" />
                                            <Columns>
                                                <dx:GridViewCommandColumn ShowNewButtonInHeader="true" ShowEditButton="true" VisibleIndex="0" ShowDeleteButton="true" Width="10%" />

                                                <dx:GridViewDataTextColumn FieldName="ID" VisibleIndex="1" Caption="ID"
                                                    Width="10%">
                                                    <Settings AllowAutoFilter="False" />
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn FieldName="NameCategory" VisibleIndex="2" Caption="Tên Loại Tài Liệu"
                                                    Width="60%">
                                                </dx:GridViewDataTextColumn>
                                                <dx:GridViewDataTextColumn Caption="Tài liệu" ReadOnly="True"
                                                    VisibleIndex="4" Width="20%">
                                                    <DataItemTemplate>
                                                        <asp:LinkButton ID="btnRole" runat="server"
                                                            CommandArgument='' CommandName="cmdDocument"
                                                            Text='Thêm Tài Liệu'></asp:LinkButton>
                                                    </DataItemTemplate>
                                                    <CellStyle CssClass="GridItemCode" HorizontalAlign="Center"></CellStyle>
                                                </dx:GridViewDataTextColumn>
                                            </Columns>
                                            <Templates>

                                                <DetailRow>
                                                    <dx:ASPxGridView ID="grd_TaiLieu" ClientInstanceName="grd_TaiLieu" runat="server" KeyFieldName="ID"
                                                        Width="100%" AutoGenerateColumns="False" OnBeforePerformDataSelect="grd_TaiLieu_BeforePerformDataSelect"
                                                        OnRowDeleting="grd_TaiLieu_RowDeleting">

                                                        <Columns>
                                                            <dx:GridViewCommandColumn VisibleIndex="0" ShowDeleteButton="true" Width="10%" />
                                                            <dx:GridViewDataTextColumn FieldName="ID" VisibleIndex="1" Caption="ID" Width="10%">
                                                                <Settings AllowAutoFilter="False" />
                                                            </dx:GridViewDataTextColumn>
                                                            <dx:GridViewDataTextColumn FieldName="NameDocument" VisibleIndex="1" Caption="Tên tài liệu"
                                                                Width="80%">
                                                            </dx:GridViewDataTextColumn>

                                                        </Columns>
                                                        <Styles>
                                                            <Header CssClass="HeaderGrid"></Header>
                                                        </Styles>
                                                    </dx:ASPxGridView>

                                                </DetailRow>

                                                <EditForm>
                                                    <dx:ASPxFormLayout runat="server" ID="LayOutThemSua">
                                                        <SettingsAdaptivity AdaptivityMode="SingleColumnWindowLimit" SwitchToSingleColumnAtWindowInnerWidth="576" />
                                                        <Items>
                                                            <dx:LayoutGroup Caption="NHÓM TÀI LIỆU" ColCount="1" GroupBoxDecoration="HeadingLine" Paddings-Padding="0" Paddings-PaddingTop="10">
                                                                <GroupBoxStyle>
                                                                    <Caption Font-Bold="true" Font-Size="16" CssClass="groupCaption" />
                                                                </GroupBoxStyle>
                                                                <Items>
                                                                    <dx:LayoutItem Caption="Tên Nhóm *:">
                                                                        <LayoutItemNestedControlCollection>
                                                                            <dx:LayoutItemNestedControlContainer>
                                                                                <dx:ASPxTextBox runat="server" ID="txtName" Text='<%# Bind("NameCategory") %>' Width="100%" />
                                                                            </dx:LayoutItemNestedControlContainer>
                                                                        </LayoutItemNestedControlCollection>
                                                                    </dx:LayoutItem>
                                                                </Items>
                                                            </dx:LayoutGroup>
                                                        </Items>
                                                    </dx:ASPxFormLayout>

                                                    <div style="text-align: right; padding: 10px; padding-right: 50px">
                                                        <dx:ASPxGridViewTemplateReplacement ID="UpdateButton" ReplacementType="EditFormUpdateButton" runat="server" />
                                                        <dx:ASPxGridViewTemplateReplacement ID="CancelButton" ReplacementType="EditFormCancelButton" runat="server" />
                                                    </div>
                                                </EditForm>
                                            </Templates>
                                        </dx:ASPxGridView>




                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </asp:View>
        <asp:View ID="vwThemTaiLieu" runat="server">
            <uc1:ThemSuaTaiLieu ID="ThemSuaTaiLieu1" runat="server" />
        </asp:View>
    </asp:MultiView>
</asp:Content>
