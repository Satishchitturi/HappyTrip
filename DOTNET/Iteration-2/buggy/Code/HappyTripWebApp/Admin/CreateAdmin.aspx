<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateAdmin.aspx.cs" Inherits="HappyTripWebApp.Admin.CreateAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<br />
<center>
    <asp:Panel runat="server" CssClass="PopUpStyle" ID="pnlCreateAirline">
        <a href="#" class="close" id="btnClose">
            <img src="../Images/close_pop.gif" onclick="return CloseWindow();" class="btn_close"
                title="Close Window" alt="Close" /></a>
        <br />
        <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Names="Verdana" Font-Overline="False" Font-Size="Larger" 
            Font-Underline="True" Text="Create Login"></asp:Label>
        <br /><br />
        <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td>Login Name:<span class="ErrorMsg"> <span class="style1"><strong>*</strong></span></span>
        
                </td>
                <td><asp:TextBox runat="server" ID="txtcrAirlineName"></asp:TextBox></td>
            </tr>
            <tr>
            <td>Password:<span class="ErrorMsg"> <span class="style1"><strong>*</strong></span></span></td>
            <td><asp:TextBox runat="server" ID="txtcrAirlineCode"></asp:TextBox></td>
            </tr>
            <tr>
            <td>Re-Type Password:<span class="ErrorMsg"> <span class="style1"><strong>*</strong></span></span></td>
            <td><asp:TextBox runat="server" ID="txtcrAirlineLogoPath"></asp:TextBox></td>
            </tr>
        </table>
        
        <br /><br />
        <asp:Label ID="lblError" runat="server" 
            Text="All mandatory fields must be filled " 
            style="color: #FF0000; font-weight: 700"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnSave" Text="Save" runat="server" 
            OnClick="btnSave_Click" />
        <asp:Button runat="server" ID="btnClear" Text="Clear"   
             onclick="btnClear_Click" />
        <br />
        <br />
    </asp:Panel>    
    </center>

</asp:Content>
