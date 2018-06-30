<%@ Page Title="" EnableEventValidation="false" Language="C#" AutoEventWireup="true" CodeBehind="QuanLyVideoAnh.aspx.cs" Inherits="Housing.Admin.QuanLyVideoAnh" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxUploadControl" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<form id="form1" runat="server">
    <div class="xs">
        <h3>Thêm Album
                

        </h3>
        <h3>
            <asp:label id="lblID" runat="server" text="Label"></asp:label>
        </h3>
        <div class="tab-content">
            <div class="tab-pane active" id="horizontal-form">
                <div class="form-horizontal">
                    <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">Trích dẫn</label>
                        <div class="col-sm-8">
                            <asp:textbox id="txtQuote" class="form-control1" runat="server"></asp:textbox>

                        </div>

                    </div>
                    <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">Tên bưc ảnh</label>
                        <div class="col-sm-8">
                            <asp:textbox id="txtName" class="form-control1" runat="server"></asp:textbox>

                        </div>
                    </div>
                    <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">Khoảng thời gian video</label>
                        <div class="col-sm-8">
                            <asp:textbox id="txtduration" class="form-control1" runat="server"></asp:textbox>

                        </div>
                    </div>
                    <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">Ảnh hay Video</label>
                        <div class="col-sm-8">
                            <asp:dropdownlist id="drAnhVideo" runat="server" height="27px" width="732px">
                                <asp:ListItem Value="1">Ảnh</asp:ListItem>
                                <asp:ListItem Value="2">Video</asp:ListItem>

                            </asp:dropdownlist>


                        </div>
                    </div>
                    <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">Địa điểm bộ ảnh video</label>
                        <div class="col-sm-8">
                            <asp:dropdownlist id="drDiaDiemBoAnhVideo" runat="server" height="27px" width="732px">
                                <asp:ListItem Value="1">Đà Lạt</asp:ListItem>
                                <asp:ListItem Value="2">Hải Phòng</asp:ListItem>
                                <asp:ListItem Value="3">Sapa</asp:ListItem>
                            </asp:dropdownlist>


                        </div>
                    </div>

                    <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">Loại Video</label>
                        <div class="col-sm-8">
                            <asp:dropdownlist id="drLoaiVideo" runat="server" height="27px" width="732px">
                                <asp:ListItem Value="1">Coaching</asp:ListItem>

                            </asp:dropdownlist>


                        </div>
                    </div>
                    <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">Loại Image</label>
                        <div class="col-sm-8">
                            <asp:dropdownlist id="drLoaiYmage" runat="server" height="27px" width="732px">
                                <asp:ListItem Value="1">Phong DaLat</asp:ListItem>
                                <asp:ListItem Value="2">Phong Sapa</asp:ListItem>
                                <asp:ListItem Value="3">Ảnh Khách Hang</asp:ListItem>
                                <asp:ListItem Value="4">Phòng hải phòng</asp:ListItem>

                            </asp:dropdownlist>


                        </div>
                    </div>
                    <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">Thứ tự ưu tiên</label>
                        <div class="col-sm-8">
                            <asp:textbox id="txtthutuuutien" class="form-control1" runat="server">999999</asp:textbox>

                        </div>
                    </div>
                    <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">upload Anh trên web</label>
                        <div class="col-sm-8">

                            <dx:ASPxUploadControl ID="UploadControl" runat="server" ClientInstanceName="UploadControl" Width="320"
                                NullText="Select multiple files..." UploadMode="Advanced" ShowUploadButton="True" ShowProgressPanel="True" OnFileUploadComplete="UploadControl_FilesUploadComplete">
                                <ValidationSettings MaxFileSize="419430455" AllowedFileExtensions=".jpg,.jpeg,.gif,.png">
                                </ValidationSettings>

                                <AdvancedModeSettings EnableMultiSelect="True" />

                            </dx:ASPxUploadControl>




                        </div>
                    </div>
                    <div class="form-group">
                        <asp:button id="btnThemAlbum" runat="server" text="Update album" onclick="btnThemAlbum_Click" />
                    </div>

                    <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">Thêm ảnh cho album</label>

                    </div>
                    <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">Id Image</label>
                        <div class="col-sm-8">
                            <asp:textbox id="txtIdImage" class="form-control1" runat="server"></asp:textbox>

                        </div>
                    </div>

                    <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">Vi tri Image</label>
                        <div class="col-sm-8">
                            <asp:textbox id="txtVitri" class="form-control1" runat="server"></asp:textbox>

                        </div>
                    </div>
                    <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">Tieu de Image</label>
                        <div class="col-sm-8">
                            <asp:textbox id="txtTieuDeImage" class="form-control1" runat="server"></asp:textbox>

                        </div>
                    </div>
                    <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">Hover Image</label>
                        <div class="col-sm-8">
                            <asp:textbox id="txtHover" class="form-control1" runat="server"></asp:textbox>

                        </div>
                    </div>

                    <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">upload Anh cho album</label>
                        <div class="col-sm-8">

                            <dx:ASPxUploadControl ID="uploadChoalbum" runat="server" ClientInstanceName="UploadControl" Width="320"
                                NullText="Select multiple files..." UploadMode="Advanced" ShowUploadButton="True" ShowProgressPanel="True" OnFileUploadComplete="uploadChoalbum_FileUploadComplete">
                                <AdvancedModeSettings EnableMultiSelect="True" />
                                <ValidationSettings MaxFileSize="419430455" AllowedFileExtensions=".jpg,.jpeg,.gif,.png">
                                </ValidationSettings>

                            </dx:ASPxUploadControl>


                            <asp:button id="btnUpdateAnh" runat="server" text="Update Anh" onclick="btnUpdateAnh_Click" />


                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

</form>
