<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPhong.Master" AutoEventWireup="true" CodeBehind="ThemQuanLyAnhVideo.aspx.cs" Inherits="Housing.Admin.QuanLyAnhVideo.QuanLyAnh.ThemQuanLyAnhVideo" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<%@ Register Src="~/Admin/navigatorAdmin.ascx" TagPrefix="uc1" TagName="navigatorAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:HiddenField ID="hidID" runat="server" />

        <div class="panel panel-widget">
        <div class="panel-title">
            <asp:Label ID="lblTitle" runat="server" Text="Quản lý Ảnh Video -> "></asp:Label><asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl ="~/Admin/QuanLyAnhVideo/QuanLyAnh/QuanLyAnh.aspx">Sửa xóa ảnh video</asp:LinkButton>-> Thêm sửa Album
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
                        <asp:Button ID="btnThemAlbum" runat="server" Text="Thêm Album" CssClass="btn btn-default" OnClick="btnThemAlbum_Click" />
                           <asp:Button ID="btnSuaAlbum" runat="server" Text="Sửa Album" CssClass="btn btn-default" OnClick="btnSuaAlbum_Click"  />
                        <asp:Label ID="lblTe" runat="server" Text="THÊM ALBUM"></asp:Label>

                    </h4>
                </div>

                <div class="form-body">
                    <p style="margin-top: 15px">
                        <asp:Label ID="lblError" runat="server" Text="" ForeColor="Blue" Font-Bold="true"></asp:Label>
                    </p>
                      <div class="form-group">
                        <label>upload ảnh trên web</label>
                        <dx:ASPxUploadControl ID="UploadControl" runat="server" ClientInstanceName="UploadControl" Width="320"
                            NullText="Select multiple files..." UploadMode="Advanced" ShowUploadButton="True" ShowProgressPanel="True" OnFileUploadComplete="UploadControl_FilesUploadComplete">
                            <ValidationSettings MaxFileSize="419430455" AllowedFileExtensions=".jpg,.jpeg,.gif,.png">
                            </ValidationSettings>

                            <%--<AdvancedModeSettings EnableMultiSelect="True" />--%>

                        </dx:ASPxUploadControl>
                         
                    </div>
                      <div class="form-group">
                 
                        <asp:Image ID="imgAnhWeb" Width="70" Height ="70" runat="server" CssClass="img-responsive" />
                    </div>
        
                               <div class="form-group">
                        <label>Trích dẫn</label>
                        <asp:TextBox ID="txtQuote" Style="color: black !important" runat="server" placeholder="Trích Dẫn" CssClass=" form-control"></asp:TextBox>
                    </div>
        
                      <div class="form-group">
                        <label >Tên Album</label>
                        <asp:TextBox ID="txtName" Style="color: black !important" runat="server" placeholder="Tên Album" CssClass=" form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label >Khoảng thời gian video</label>
                        <asp:TextBox ID="txtduration" Style="color: black !important" runat="server" placeholder="Khoảng thời gian video" CssClass=" form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblThemPhongDat" runat="server" Text="">Ảnh hay Video</asp:Label>

                        <asp:DropDownList ID="drAnhVideo" CssClass="form-control" runat="server" Width="250px" Style="color: black !important">
                    
                             <asp:ListItem Value="1">Ảnh</asp:ListItem>
                            <asp:ListItem Value="2">Video</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                      <div class="form-group">
                        <label >Địa điểm bộ ảnh video</label>
                        <asp:DropDownList ID="drDiaDiemBoAnhVideo" CssClass="form-control" runat="server" Width="250px" Style="color: black !important">
                            <asp:ListItem Value="1">Đà Lạt</asp:ListItem>
                            <asp:ListItem Value="2">Hải Phòng</asp:ListItem>
                            <asp:ListItem Value="3">Sapa</asp:ListItem>
                             <asp:ListItem Value="4">Sải Gòn</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label >Loại Video</label>
                        <asp:DropDownList ID="drLoaiVideo" CssClass="form-control" runat="server" Width="250px" Style="color: black !important">
                            <asp:ListItem Value="1">Coaching</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label>Loại Image</label>
                        <asp:DropDownList ID="drLoaiYmage" CssClass="form-control" runat="server" Width="250px" Style="color: black !important">
                            <asp:ListItem Value="1">Phong DaLat</asp:ListItem>
                            <asp:ListItem Value="2">Phong Sapa</asp:ListItem>
                            <asp:ListItem Value="3">Ảnh Khách Hang</asp:ListItem>
                            <asp:ListItem Value="4">Phòng hải phòng</asp:ListItem>
                            <asp:ListItem Value="5">Phòng sải gòn</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label >Thứ tự ưu tiên</label>
                        <asp:TextBox ID="txtthutuuutien" Style="color: black !important" runat="server" placeholder="Thứ tự ưu tiên" CssClass=" form-control">9999999999</asp:TextBox>
                    </div>
                  

                     <div class="form-group">
                            <asp:Button ID="btnThemDuoiDuoi" runat="server" Text="Thêm Album" CssClass="btn btn-default" OnClick="btnThemAlbum_Click" />
                             <asp:Button ID="btnSuaDuoi" runat="server" Text="Sửa Album" CssClass="btn btn-default" OnClick="btnSuaAlbum_Click"  />
                        </div>
                </div>



            </div>
        </div>
    </div>


</asp:Content>
