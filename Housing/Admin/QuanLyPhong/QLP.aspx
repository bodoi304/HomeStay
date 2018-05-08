<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPhong.Master" AutoEventWireup="true" CodeBehind="QLP.aspx.cs" Inherits="Housing.Admin.QuanLyPhong.QLP" %>

<%@ Register Src="~/Admin/QuanLyPhong/Glistphong/GridPhong.ascx" TagPrefix="uc1" TagName="GridPhong" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

            <div class="panel panel-widget">
            <div class="panel-title">
                <asp:Label ID="lblTitle" runat="server" Text="Quản lý đặt phòng -> Thêm đặt phòng từ Excel"></asp:Label> 
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
                        <asp:Label ID="lblTiTT" runat="server" Text="Label"></asp:Label></h4>
                </div>
                <div class="form-body">
                     <p style="margin-top: 15px"><asp:Label ID="lblError" runat="server" Text="" ForeColor="Blue" Font-Bold ="true" ></asp:Label></p>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Nhập thông tin đặt phòng (copy text excel vào đây và bấm "Thêm Đặt Phòng")</label>
                        <asp:TextBox ID="txtNhapTTCH" runat="server" class="form-control" Height="200px" Rows="25" TextMode="MultiLine" Style="color:black !important "></asp:TextBox>
                    </div>
                    <asp:Button ID="btnSubmit" runat="server" Text="Thêm Đặt Phòng" CssClass="btn btn-default" OnClick="btnsubmit_Click" />


                </div>
            </div>
        </div>
    </div>


    <uc1:GridPhong runat="server" ID="GridPhong" />


</asp:Content>
