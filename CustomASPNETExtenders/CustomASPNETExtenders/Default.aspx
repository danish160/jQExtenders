<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="DemoWebApp._Default" %>

<%@ Register Assembly="CustomExtenders" Namespace="CustomExtenders" TagPrefix="cc1" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <p>
    </p>
    <p>
        Task:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <cc1:DisabledButtonExtender ID="TextBox1_DisabledButtonExtender" runat="server" DisabledText="My disabled message"
            TargetControlID="TextBox1" TargetButtonID="Button1">
        </cc1:DisabledButtonExtender>
        &nbsp;<asp:Button ID="Button1" runat="server" Text="Button" />
        <br />
    </p>
</asp:Content>
