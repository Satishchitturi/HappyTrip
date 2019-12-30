<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="AddHotel.aspx.cs" Inherits="HappyTripWebApp.Admin.AddHotel" %>

<%@ Register TagPrefix="uc" TagName="MenuC" Src="~/Admin/AdminControl.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 96px;
        }
        .style2
        {
            width: 124px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc:MenuC ID="MenuControl" runat="server" />
    <br />
    <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Verdana"
        Font-Overline="False" Font-Size="Larger" Font-Underline="True" Text="Add Hotel"></asp:Label>
    <br />
    <br />
    <center>
        <!-- Your UI design for Adding Hotel -->
    </center>
</asp:Content>
