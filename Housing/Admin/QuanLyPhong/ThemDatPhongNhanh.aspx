<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPhong.Master" AutoEventWireup="true" CodeBehind="ThemDatPhongNhanh.aspx.cs" Inherits="Housing.Admin.QuanLyPhong.ThemDatPhongNhanh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="panel panel-widget">
        <div class="panel-title">
            <asp:Label ID="lblTitle" runat="server" Text="Quản lý đặt phòng -> Thêm đặt phòng nhanh"></asp:Label>
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
                    <h4>   <asp:Button ID="btnThemPhong" runat="server" Text="Thêm Đặt Phòng" CssClass="btn btn-default" OnClick="btnThemPhong_Click"  />
                          <asp:Label ID="lblTenNha" runat="server" Text=""></asp:Label>
                     
                    </h4>
                </div>
                <div class="form-body">
                    <p style="margin-top: 15px">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                        <p>
                        <asp:Label ID="lblError" runat="server" Text="" ForeColor="Blue" Font-Bold="true"></asp:Label></p>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Tên Khách Hàng</label>
                         <asp:TextBox ID="txtKhachHang" Style="color: black !important" runat="server" placeholder="Tên Khách Hàng" CssClass=" form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Tên Khách Hàng bắt buộc phải nhập" ControlToValidate="txtKhachHang" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                    </div>
                     <div class="form-group">
                        <label for="exampleInputEmail1">Ở Trong Ngày</label>
                        <asp:CheckBox ID="chkOtrongNgay" runat="server" />
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Check In</label>
                        <asp:TextBox ID="txtCheckin" data-mask="00/00/0000" data-mask-selectonfocus="true" Style="color: black !important" runat="server" placeholder="check-In dd/mm/yyyy" CssClass="date form-control datepicker" ></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Ngày check in bắt buộc phải nhập" ControlToValidate="txtCheckin" ForeColor="Red" Display="None" ></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Check out</label>
                        <asp:TextBox ID="txtCheckout" data-mask="00/00/0000" data-mask-selectonfocus="true" Style="color: black !important" runat="server" placeholder="check-Out dd/mm/yyyy" CssClass="date form-control datepicker" ></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Ngày check out bắt buộc phải nhập" ControlToValidate="txtCheckout" ForeColor="Red" Display="None" ></asp:RequiredFieldValidator>
                    </div>
                      <div class="form-group">
                           <asp:Label ID="lblThemPhongDat" runat="server" Text="">Mã phòng đặt</asp:Label>
                    
                        <asp:TextBox ID="txtPhongDat" Style="color: black !important" runat="server" placeholder="Phòng đặt" CssClass=" form-control"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Mã phòng đặt bắt buộc phải nhập" ControlToValidate="txtPhongDat" ForeColor="Red" Display="None" ></asp:RequiredFieldValidator>
                    </div>
                     <div class="form-group">
                        <label for="exampleInputPassword1">Số điện thoại</label>
                        <asp:TextBox ID="txtSoDienThoai" Style="color: black !important" runat="server" placeholder="Số Điện Thoại" CssClass=" form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Tình trạng chyển khoản</label>
                       <asp:DropDownList ID="drTinhTrangChuyenKhoan" CssClass="form-control" runat="server" Width="250px" Style="color: black !important">
                           <asp:ListItem Selected="True">CK</asp:ListItem>
                           <asp:ListItem>TM-CK</asp:ListItem>
                            <asp:ListItem>TM</asp:ListItem>
                        </asp:DropDownList>
                    </div> 
                    <div class="form-group">
                        <label for="exampleInputPassword1">Tổng tiền phòng</label>
                        <asp:TextBox ID="txtTongTienPhong" Style="color: black !important" runat="server" placeholder="Tổng tiền phòng" CssClass=" form-control"></asp:TextBox>
                    </div> 
                    <div class="form-group">
                        <label for="exampleInputPassword1">Tiền chuyển khoản</label>
                        <asp:TextBox ID="txtTienChuyenKhoan" Style="color: black !important" runat="server" placeholder="Tiền chuyển khoản" CssClass=" form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Tiền còn phải trả</label>
                        <asp:TextBox ID="txtTienConPhaiTra" Style="color: black !important" runat="server" placeholder="Tiền còn phải trả" CssClass=" form-control"></asp:TextBox>
                    </div>
                  <div class="form-group">
                        <label for="exampleInputPassword1">Ghi Chú</label>
                        <asp:TextBox ID="txtGhiChu" Style="color: black !important" runat="server" placeholder="Ghi Chú" CssClass=" form-control" Height="150px" TextMode="MultiLine" Width="100%"></asp:TextBox>
                    </div>
                      <div class="form-group">
                         <asp:Button ID="btnThemPhongDuoi" runat="server" Text="Thêm Đặt Phòng" CssClass="btn btn-default" OnClick="btnThemPhong_Click"  />
                    </div>

                </div>
            </div>
        </div>
    </div>
   
</asp:Content>
