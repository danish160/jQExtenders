<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="DisabledButtonExtenderDemo.aspx.cs" Inherits="DemoWebApp.DisabledButtonExtenderDemo" %>

<%@ Register TagPrefix="cc1" Namespace="CustomExtenders.DisableButton" Assembly="CustomExtenders" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <table>
        <tr>
            <td>
                Task:
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <cc1:DisabledButtonExtender ID="TextBox1_DisabledButtonExtender" runat="server" DisabledText="My disabled message"
                    TargetControlID="TextBox1" TargetButtonID="Button1">
                </cc1:DisabledButtonExtender>
            </td>
            <td>
                &nbsp;<asp:Button ID="Button1" runat="server" Text="Button" />
            </td>
        </tr>
    </table>
</asp:Content>
