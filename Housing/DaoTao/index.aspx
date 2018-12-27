<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Housing.DaoTao.index" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>Đào Tạo Houzing</title>
    <!-- Meta Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="Modernize Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //Meta Tags -->

    <!-- Style-sheets -->
    <!-- Bootstrap Css -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Bootstrap Css -->
    <!-- Common Css -->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--// Common Css -->
    <!-- Nav Css -->
    <link rel="stylesheet" href="css/style4.css">
    <!--// Nav Css -->
    <!-- Fontawesome Css -->
    <link href="css/fontawesome-all.css" rel="stylesheet">
    <!--// Fontawesome Css -->
    <!--// Style-sheets -->

    <!--web-fonts-->

    <!--//web-fonts-->
</head>

<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <!-- Sidebar Holder -->
            <nav id="sidebar">
                <div class="sidebar-header">
                    <h1>
                        <a href="index.html"></a>
                    </h1>
                    <span></span>
                </div>
                <div class="profile-bg"></div>
                <ul class="list-unstyled components">
                    <%--                <li>
                    <a href="index.html">
                        <i class="fas fa-th-large"></i>
                        Dashboard
                    </a>
                </li>--%><asp:Repeater ID="rpCategory" runat="server">
                    <ItemTemplate>
                        <li>
                            <a href='?ID=<%# Eval("ID") %>'>
                                <i class="fas fa-table"></i>
                                <%# Eval("NameCategory") %>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>

                </ul>
            </nav>

            <!-- Page Content Holder -->
            <div id="content">
                <!-- top-bar -->
                <nav class="navbar navbar-default mb-xl-5 mb-4">
                    <div class="container-fluid">

                        <div class="navbar-header">
                            <button type="button" id="sidebarCollapse" class="btn btn-info navbar-btn">
                                <i class="fas fa-bars"></i>
                            </button>
                        </div>
                        <!-- Search-from -->
                        <form action="#" method="post" class="form-inline mx-auto search-form">
                            <asp:Label ID="lbltaiLieu" runat="server" Text="TÀI LIỆU ĐÀO TẠO" style="font-weight:bold"></asp:Label>
                        </form>
                        <!--// Search-from -->
                    </div>
                </nav>
                <!-- Error Page Content -->
                <div class="blank-page-content">

                    <!-- Error Page Info -->
                    <div class="outer-w3-agile mt-3">
                        <p class="paragraph-agileits-w3layouts">
                            <dx:ASPxGridView ID="grd_DSTaiLieu" ClientInstanceName="grid" runat="server" KeyFieldName="ID"
                                Width="100%" AutoGenerateColumns="False" OnPageIndexChanged="grd_DSTaiLieu_PageIndexChanged" OnRowCommand="grd_DSTaiLieu_RowCommand">
                                <SettingsBehavior ColumnResizeMode="Control" />
                                <Columns>

                                    <dx:GridViewDataTextColumn Caption="TÀI LIỆU" ReadOnly="True"
                                        VisibleIndex="1" >
                                        <DataItemTemplate>
                                              <a href='<%# Eval("PathDocument") %>' target ="_blank" style="color :#ff9000;font-size :17px;font-weight :500  "><img src="note3.png" width ="23px" /> <%# Eval("NameDocument") %></a>
                                        </DataItemTemplate>
                                        <CellStyle CssClass="GridItemCode" HorizontalAlign="Left"></CellStyle>
                                    </dx:GridViewDataTextColumn>
                                </Columns>
                                <Settings
                                    GroupFormat="" ShowGroupButtons="False" />

                                <SettingsLoadingPanel Text="Đang tải&amp;hellip;"></SettingsLoadingPanel>

                                <Styles Header-Wrap="True">
                                    <Header BackColor="#b52e31"
                                        CssClass="GridHeader" ForeColor="White" Font-Bold="True" HorizontalAlign="Center">
                                    </Header>
                                    <Footer
                                        CssClass="GridFooter">
                                    </Footer>
                                </Styles>

                                <SettingsBehavior AllowSort="False" ColumnResizeMode="Control"></SettingsBehavior>

                                <SettingsPager
                                    PageSize="50">
                                    <Summary Text="Trang số {0} của {1} trang ({2} bản ghi)" />

                                </SettingsPager>
                            </dx:ASPxGridView>
                        </p>
                    </div>
                    <!--// Error Page Info -->

                </div>

                <!--// Error Page Content -->

                <!-- Copyright -->
                <div class="copyright-w3layouts py-xl-3 py-2 mt-xl-5 mt-4 text-center">
                    <p>
                        © 2018 Houzing . All Rights Reserved | Design by
                    Hoàng Quang Huy
                    </p>
                </div>
                <!--// Copyright -->
            </div>
        </div>


        <!-- Required common Js -->
        <script src='js/jquery-2.2.3.min.js'></script>
        <!-- //Required common Js -->

        <!-- Sidebar-nav Js -->
        <script>
            $(document).ready(function () {
                $('#sidebarCollapse').on('click', function () {
                    $('#sidebar').toggleClass('active');
                });
            });
        </script>
        <!--// Sidebar-nav Js -->

        <!-- dropdown nav -->
        <script>
            $(document).ready(function () {
                $(".dropdown").hover(
                    function () {
                        $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                        $(this).toggleClass('open');
                    },
                    function () {
                        $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                        $(this).toggleClass('open');
                    }
                );
            });
        </script>
        <!-- //dropdown nav -->

        <!-- Js for bootstrap working-->
        <script src="js/bootstrap.min.js"></script>
        <!-- //Js for bootstrap working -->
    </form>
</body>

</html>
