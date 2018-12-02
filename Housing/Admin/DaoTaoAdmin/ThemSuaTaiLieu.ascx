<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ThemSuaTaiLieu.ascx.cs" Inherits="Housing.Admin.DaoTaoAdmin.ThemSuaTaiLieu" %>
<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:HiddenField ID="hidID" runat="server" />




<div class="panel panel-widget forms-panel">
    <div class="forms">
        <div class="form-grids widget-shadow" data-example-id="basic-forms">
            <div class="form-title">
                <h4>
                    <dx:ASPxButton ID="btnBack" runat="server" Width="35px" OnClick="btnBack_Click1" ToolTip="Quay Lại">
                        <Image Url="/Admin/images/icon/Go-back-icon.png">
                        </Image>
                    </dx:ASPxButton>
                    <dx:ASPxButton ID="btnSave" runat="server" Width="35px" AutoPostBack="False" ToolTip="Ghi Lại">
                        <ClientSideEvents Click="function(s, e) {
	btnSave.PerformCallback();
}" />
                        <Image Url="/Admin/images/icon/save-512.png">
                        </Image>

                    </dx:ASPxButton>
                    <dx:ASPxCallback ID="ASPxCallback1" runat="server" ClientInstanceName="btnSave" OnCallback="ASPxCallback1_Callback">

                        <ClientSideEvents EndCallback="OnGridNotifyEndCallback" />
                    </dx:ASPxCallback>

                </h4>
            </div>

            <div class="form-body">
                <p style="margin-top: 15px">
                    <asp:Label ID="lblError" runat="server" Text="" ForeColor="Blue" Font-Bold="true"></asp:Label>
                </p>
                <div class="form-group">
                    <label>Tên tài liệu</label>
                    <asp:TextBox ID="txtTenTaiLieu" Style="color: black !important" runat="server" placeholder="Tên tài liệu" CssClass="form-control"></asp:TextBox>
                </div>
                <br />
                <br />
                <div class="form-group">
                    <label>Upload tài liệu</label>
                    <dx:ASPxUploadControl ID="UploadTaiLieu" runat="server" ClientInstanceName="UploadControl" Width="250"
                        NullText="Select multiple files..." UploadMode="Advanced" ShowProgressPanel="True" ShowUploadButton="true" OnFileUploadComplete="UploadTaiLieu_FileUploadComplete">
                    </dx:ASPxUploadControl>

                </div>




            </div>



        </div>
    </div>
</div>

