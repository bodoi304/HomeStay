<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="traloi.aspx.cs" Inherits="Housing.DaoTao.traloi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
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
</head>

<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <div id="content">
                <!-- top-bar -->
                <nav class="navbar navbar-default mb-xl-5 mb-4">
                    <div class="container-fluid">
                        <!-- Search-from -->
                        <form action="#" method="post" class="form-inline mx-auto search-form">
                            <div class="row">
                                <div class="col-12 col-md-8">
                                    <asp:TextBox ID="txtSearch" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <div class="col-6 col-md-4">
                                    <asp:Button ID="Button1" runat="server" Text="Search" class="btn btn-default" OnClick="Button1_Click" />
                                </div>

                            </div>


                        </form>
                        <!--// Search-from -->
                    </div>
                </nav>
                <!-- Error Page Content -->
                <div class="blank-page-content">

                    <!-- Error Page Info -->
                    <div class="outer-w3-agile mt-3">
                        <p class="paragraph-agileits-w3layouts">
                            <div class="accordion" id="accordionExample">
                                <asp:Repeater ID="rpCauHoi" runat="server" >
                                    <ItemTemplate>
                                        <div class="card">
                                            <div id='<%# Eval("STT") %>'>
                                                <h2 class="mb-0">
                                                    <button class="btn btn-link collapsed" style="font-family:Arial!important" type="button" data-toggle="collapse" data-target='#<%# Eval("STT") %>1' aria-expanded="false" aria-controls="collapseOne">
                                                        <%# Eval("CAU_HOI") %>
                                                    </button>
                                                </h2>
                                            </div>

                                            <div id='<%# Eval("STT") %>1' class="collapse" aria-labelledby='<%# Eval("STT") %>' data-parent="#accordionExample">
                                                <div class="card-body">
                                                    <asp:Repeater ID="rpCauTraLoi" runat="server" DataSource='<%# Eval("Answers") %>'>
                                                        <ItemTemplate>
                                                             <%# Eval("CAU_TRA_LOI") %> <br />
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </p>
                    </div>
                    <!--// Error Page Info -->

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
