<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditHotelRoom.aspx.cs" Inherits="HappyTripWebApp.Admin.EditHotelRoom" %>
<%@ Register TagPrefix="uc" TagName="MenuC" Src="~/Admin/AdminControl.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <uc:MenuC id="MenuControl" runat="server" />
<h1>Edit Hotel Room</h1>
<hr />
</asp:Content>
