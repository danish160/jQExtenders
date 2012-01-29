<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="DemoListCompleteExtender.aspx.cs" Inherits="DemoWebApp.DemoListCompleteExtender" %>

<%@ Register Assembly="CustomExtenders" Namespace="CustomExtenders.ListComplete"
    TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Styles/style.css" rel="stylesheet" type="text/css" />
    <cc1:ListCompleteExtender ID="ListBox1_ListCompleteExtender" runat="server" ControlWidth="400px"
        Enabled="True" IsCacheAllowed="False" MaxItemsAllowed="10" TargetControlID="ListBox1"
        FilterSelectedItems="True" MinInputLength="1" TipForItemSelection="Select a country ..."
        TipForSelectAll="Select all">
    </cc1:ListCompleteExtender>
    <asp:ListBox ID="ListBox1" runat="server" Height="225px">
        <asp:ListItem Value="AFG">Afghanistan</asp:ListItem>
        <asp:ListItem Value="ALB">Albania</asp:ListItem>
        <asp:ListItem Value="DZA">Algeria</asp:ListItem>
        <asp:ListItem Value="AND">Andorra</asp:ListItem>
        <asp:ListItem Value="ARG">Argentina</asp:ListItem>
        <asp:ListItem Value="ARM">Armenia</asp:ListItem>
        <asp:ListItem Value="ABW">Aruba</asp:ListItem>
        <asp:ListItem Value="AUS">Australia</asp:ListItem>
        <asp:ListItem Value="AUT">Austria</asp:ListItem>
        <asp:ListItem Value="AZE">Azerbaijan</asp:ListItem>
        <asp:ListItem Value="BGD">Bangladesh</asp:ListItem>
        <asp:ListItem Value="BLR">Belarus</asp:ListItem>
        <asp:ListItem Value="BEL">Belgium</asp:ListItem>
        <asp:ListItem Value="BIH">Bosnia and Herzegovina</asp:ListItem>
        <asp:ListItem Value="BRA">Brazil</asp:ListItem>
        <asp:ListItem Value="BRN">Brunei</asp:ListItem>
        <asp:ListItem Value="BGR">Bulgaria</asp:ListItem>
        <asp:ListItem Value="CAN">Canada</asp:ListItem>
        <asp:ListItem Value="CHN">China</asp:ListItem>
        <asp:ListItem Value="COL">Colombia</asp:ListItem>
        <asp:ListItem Value="HRV">Croatia</asp:ListItem>
        <asp:ListItem Value="CYP">Cyprus</asp:ListItem>
        <asp:ListItem Value="CZE">Czech Republic</asp:ListItem>
        <asp:ListItem Value="DNK">Denmark</asp:ListItem>
        <asp:ListItem Value="EGY">Egypt</asp:ListItem>
        <asp:ListItem Value="EST">Estonia</asp:ListItem>
        <asp:ListItem Value="FIN">Finland</asp:ListItem>
        <asp:ListItem Value="FRA">France</asp:ListItem>
        <asp:ListItem Value="GEO">Georgia</asp:ListItem>
        <asp:ListItem Value="DEU">Germany</asp:ListItem>
        <asp:ListItem Value="GRC">Greece</asp:ListItem>
        <asp:ListItem Value="HKG">Hong Kong</asp:ListItem>
        <asp:ListItem Value="HUN">Hungary</asp:ListItem>
        <asp:ListItem Value="ISL">Iceland</asp:ListItem>
        <asp:ListItem Value="IND">India</asp:ListItem>
        <asp:ListItem Value="IDN">Indonesia</asp:ListItem>
        <asp:ListItem Value="IRN">Iran</asp:ListItem>
        <asp:ListItem Value="IRL">Ireland</asp:ListItem>
        <asp:ListItem Value="ISR">Israel</asp:ListItem>
        <asp:ListItem Value="ITA">Italy</asp:ListItem>
        <asp:ListItem Value="JPN">Japan</asp:ListItem>
        <asp:ListItem Value="JOR">Jordan</asp:ListItem>
        <asp:ListItem Value="KAZ">Kazakhstan</asp:ListItem>
        <asp:ListItem Value="KWT">Kuwait</asp:ListItem>
        <asp:ListItem Value="KGZ">Kyrgyzstan</asp:ListItem>
        <asp:ListItem Value="LVA">Latvia</asp:ListItem>
        <asp:ListItem Value="LBN">Lebanon</asp:ListItem>
        <asp:ListItem Value="LIE">Liechtenstein</asp:ListItem>
        <asp:ListItem Value="LTU">Lithuania</asp:ListItem>
        <asp:ListItem Value="LUX">Luxembourg</asp:ListItem>
        <asp:ListItem Value="MAC">Macau</asp:ListItem>
        <asp:ListItem Value="MKD">Macedonia</asp:ListItem>
        <asp:ListItem Value="MYS">Malaysia</asp:ListItem>
        <asp:ListItem Value="MLT">Malta</asp:ListItem>
        <asp:ListItem Value="MEX">Mexico</asp:ListItem>
        <asp:ListItem Value="MDA">Moldova</asp:ListItem>
        <asp:ListItem Value="MNG">Mongolia</asp:ListItem>
        <asp:ListItem Value="NLD">Netherlands</asp:ListItem>
        <asp:ListItem Value="NZL">New Zealand</asp:ListItem>
        <asp:ListItem Value="NGA">Nigeria</asp:ListItem>
        <asp:ListItem Value="NOR">Norway</asp:ListItem>
        <asp:ListItem Value="PER">Peru</asp:ListItem>
        <asp:ListItem Value="PHL">Philippines</asp:ListItem>
        <asp:ListItem Value="POL">Poland</asp:ListItem>
        <asp:ListItem Value="PRT">Portugal</asp:ListItem>
        <asp:ListItem Value="QAT">Qatar</asp:ListItem>
        <asp:ListItem Value="ROU">Romania</asp:ListItem>
        <asp:ListItem Value="RUS">Russia</asp:ListItem>
        <asp:ListItem Value="SMR">San Marino</asp:ListItem>
        <asp:ListItem Value="SAU">Saudi Arabia</asp:ListItem>
        <asp:ListItem Value="CSG">Serbia and Montenegro</asp:ListItem>
        <asp:ListItem Value="SGP">Singapore</asp:ListItem>
        <asp:ListItem Value="SVK">Slovakia</asp:ListItem>
        <asp:ListItem Value="SVN">Slovenia</asp:ListItem>
        <asp:ListItem Value="ZAF">South Africa</asp:ListItem>
        <asp:ListItem Value="KOR">South Korea</asp:ListItem>
        <asp:ListItem Value="ESP">Spain</asp:ListItem>
        <asp:ListItem Value="LKA">Sri Lanka</asp:ListItem>
        <asp:ListItem Value="SWE">Sweden</asp:ListItem>
        <asp:ListItem Value="CHE">Switzerland</asp:ListItem>
        <asp:ListItem Value="SYR">Syria</asp:ListItem>
        <asp:ListItem Value="TWN">Taiwan</asp:ListItem>
        <asp:ListItem Value="TJK">Tajikistan</asp:ListItem>
        <asp:ListItem Value="THA">Thailand</asp:ListItem>
        <asp:ListItem Value="TUR">Turkey</asp:ListItem>
        <asp:ListItem Value="TKM">Turkmenistan</asp:ListItem>
        <asp:ListItem Value="UKR">Ukraine</asp:ListItem>
        <asp:ListItem Value="ARE">United Arab Emirates</asp:ListItem>
        <asp:ListItem Value="GBR">United Kingdom</asp:ListItem>
        <asp:ListItem Value="USA">United States</asp:ListItem>
        <asp:ListItem Value="UZB">Uzbekistan</asp:ListItem>
        <asp:ListItem Value="VAT">Vatican City</asp:ListItem>
        <asp:ListItem Value="VNM">Vietnam</asp:ListItem>
    </asp:ListBox>
</asp:Content>
