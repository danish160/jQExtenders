<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="SelectAllCheckBoxExtenderDemo.aspx.cs" Inherits="DemoWebApp.SelectAllCheckBoxExtenderDemo" %>

<%@ Register Assembly="CustomExtenders" Namespace="CustomExtenders.SelectAllCheckBox"
    TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:CheckBox ID="chkHead" runat="server" />
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="chkRow" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="UserID" />
            <asp:BoundField DataField="FirstName" />
            <asp:BoundField DataField="LastName" />
        </Columns>
    </asp:GridView>
    <cc1:SelectAllCheckBoxExtender ID="GridView1_SelectAllCheckBoxExtender1" runat="server"
        TargetControlID="GridView1" HeaderCheckBoxID="chkHead" RowCheckBoxID="chkRow" >
    </cc1:SelectAllCheckBoxExtender>
</asp:Content>
