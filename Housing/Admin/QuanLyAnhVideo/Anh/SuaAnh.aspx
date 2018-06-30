<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPhong.Master" AutoEventWireup="true" CodeBehind="SuaAnh.aspx.cs" Inherits="Housing.Admin.QuanLyAnhVideo.Anh.SuaAnh" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register Src="~/Admin/navigatorAdmin.ascx" TagPrefix="uc1" TagName="navigatorAdmin" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:HiddenField ID="hidIDImage" runat="server" />
    <asp:HiddenField ID="hidID" runat="server" />
    <div class="panel panel-widget">
        <div class="panel-title">
            <asp:Label ID="lblTitle" runat="server" Text="Quản lý Ảnh Video -> "></asp:Label>
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl ="~/Admin/QuanLyAnhVideo/QuanLyAnh/QuanLyAnh.aspx">Sửa xóa ảnh video</asp:LinkButton>
            <asp:LinkButton ID="lkButton1" runat="server"  >-> Ảnh video của Album</asp:LinkButton> -> Thêm Sửa Ảnh
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
            <div class="form-grids widget-shadow" data-example-id="basic-forms">
                <div class="form-title">
                    <h4>
                         <asp:Button ID="btnThem" runat="server" Text="Thêm Ảnh" CssClass="btn btn-default" OnClick="btnThem_Click"  />
                        <asp:Button ID="btnSua" runat="server" Text="Sửa Ảnh" CssClass="btn btn-default" OnClick="btnSua_Click" />
                        <asp:Label ID="lblTe" runat="server"  Text="THÊM ẢNH CHO ALBUM"></asp:Label>

                    </h4>
                </div>

                <div class="form-body">
                    <p style="margin-top: 15px">
                        <asp:Label ID="lblError" runat="server" Text="" ForeColor="Blue" Font-Bold="true"></asp:Label>
                    </p>

                       <div class="form-group">
                        <label>Upload ảnh cho album</label>
                        <dx:ASPxUploadControl ID="uploadChoalbum" runat="server" ClientInstanceName="UploadControl" Width="320"
                            NullText="Select multiple files..." UploadMode="Advanced" ShowUploadButton="True" ShowProgressPanel="True" OnFileUploadComplete="uploadChoalbum_FileUploadComplete">
                            <AdvancedModeSettings EnableMultiSelect="True" />
                            <ValidationSettings MaxFileSize="419430455" AllowedFileExtensions=".jpg,.jpeg,.gif,.png">
                            </ValidationSettings>
                        </dx:ASPxUploadControl>
                    </div>
                      <div class="form-group">
                 
                        <asp:Image ID="imgAnhWeb" Width="70" Height ="70" runat="server" CssClass="img-responsive" />
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblThemPhongDat" runat="server" Text="">Địa điểm bộ ảnh video</asp:Label>

                        <asp:DropDownList ID="drDiaDiemBoAnhVideo" CssClass="form-control" runat="server" Width="250px" Style="color: black !important">
                            <asp:ListItem Value="1">Đà Lạt</asp:ListItem>
                            <asp:ListItem Value="2">Hải Phòng</asp:ListItem>
                            <asp:ListItem Value="3">Sapa</asp:ListItem>
                             <asp:ListItem Value="4">Sải Gòn</asp:ListItem>
                        </asp:DropDownList>

                    </div>

                    <div class="form-group">
                        <label>Tieu de Image</label>

                        <asp:TextBox ID="txtTieuDeImage" class="form-control1" runat="server"></asp:TextBox>


                    </div>
                    <div class="form-group">
                        <label>Hover Image</label>

                        <asp:TextBox ID="txtHover" class="form-control1" runat="server"></asp:TextBox>

                    </div>
                        <div class="form-group">
                        <label>Vi tri Image</label>

                        <asp:TextBox ID="txtVitri" class="form-control1" runat="server"></asp:TextBox>


                    </div>
                       <div class="form-group">
                        <label>Sắp xếp</label>

                        <asp:TextBox ID="txtSapXep" class="form-control1" runat="server">9999999</asp:TextBox>


                    </div>
                </div>



            </div>
        </div>
    </div>

</asp:Content>
