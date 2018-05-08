<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="navigatorAdmin.ascx.cs" Inherits="Housing.Admin.navigatorAdmin" %>
<script>
    function goBack() {
        window.history.back();
        location.reload();
    }
</script>


    <div class="panel panel-widget">
        <div class="panel-title">
            <asp:LinkButton ID="LinkButton1" runat="server" OnClientClick="goBack()"><- BACK</asp:LinkButton> 
        </div>
        <div class="panel-body">
            <!-- status -->
            <div class="contain">
                <div class="gantt"></div>
            </div>
            <!-- status -->
        </div>
    </div>