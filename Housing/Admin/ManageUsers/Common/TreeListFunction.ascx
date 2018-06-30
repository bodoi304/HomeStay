<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TreeListFunction.ascx.cs" Inherits="ReportFinance.ManageUsers.Common.TreeListFunction" %>

<%@ Register assembly="DevExpress.Web.ASPxTreeList.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxTreeList" tagprefix="dx" %>



<%@ Register assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>



<div>
    <style>
        td {
            text-align: left !important;
            width: 30px !important;
        }

        .flex-container {
            display: flex;
            justify-content: flex-start;
            align-items: center;
        }
    </style>

    <div>

        <div style="margin-bottom: 20px; border-bottom: 1px solid #f1f1f1; border-top: 1px solid #f1f1f1; height: 65px; padding: 5px; padding-top: 10px">
            <dx:ASPxButton ID="btnBack" runat="server" Width="35px" OnClick="btnBack_Click1" ToolTip ="Quay Lại">
                <Image Url="/Admin/images/icon/Go-back-icon.png">
                </Image>
            </dx:ASPxButton>
            <dx:ASPxButton ID="btnSave" runat="server" Width="35px"  AutoPostBack="False" ToolTip ="Ghi Lại">
                <ClientSideEvents Click="function(s, e) {
	btnSave.PerformCallback();
}" />
                <Image Url="/Admin/images/icon/save-512.png">
                </Image>
                
            </dx:ASPxButton>
            <dx:ASPxCallback ID="ASPxCallback1" runat="server" ClientInstanceName="btnSave" OnCallback="ASPxCallback1_Callback">

                                <ClientSideEvents EndCallback="OnGridNotifyEndCallback" />
            </dx:ASPxCallback>

        </div>

    </div>
    
    <div class="flex-container">
     
        <dx:ASPxTreeList ID="trl" runat="server" KeyFieldName="Item_ID" ParentFieldName="Parent_Code">
            <SettingsDataSecurity AllowDelete="False" AllowEdit="False" AllowInsert="False" />
            <Columns>
                <dx:TreeListDataColumn FieldName="Item_name" Caption="Tên chức năng" VisibleIndex="0" />
            </Columns>
            <Images>

                <CollapsedButton Url="/Admin/images/icon/arrowTreelist.png">
                </CollapsedButton>

                <ExpandedButton Url="/Admin/images/icon/arrowTreelist.png">
                </ExpandedButton>

            </Images>
        </dx:ASPxTreeList>
    </div>
</div>


