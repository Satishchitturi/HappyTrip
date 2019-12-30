<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Rooms.aspx.cs" Inherits="HappyTripWebApp.Rooms" %>
<%@ Register TagPrefix="uc" TagName="MenuC" Src="~/Admin/AdminControl.ascx" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc:MenuC id="MenuControl" runat="server" />

    <%--<asp:Button ID="Button1" runat="server"  
    Text="Add Room" />--%>
<br />
<br />
<center>
<table style="width:100%;" align="center">
    <tr>
        <td class="style1" align="center">
            &nbsp;<asp:GridView ID="RoomTypesGridView" runat="server" Width="450px" 
                BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
                CellPadding="3" CellSpacing="1" Height="185px">
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="TypeId" 
                DataNavigateUrlFormatString="~/Admin/RoomsEdit.aspx?typeid={0}" Text="Edit" />
                </Columns>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>
            <br />
        </td>
        <%--<td>
            <asp:Panel ID="Panel1" runat="server" Height="216px" style="margin-left: 0px" 
                Width="413px">
                <table style="width:100%; height: 214px;">
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Label ID="Label1" runat="server" Text="Add Room Type" 
                                style="font-size: large; font-weight: 700"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Label ID="lblClassName" runat="server" Text="Room Type:"></asp:Label>
                        </td>
                        <td align="center">
                            <asp:TextBox ID="txtClassName" runat="server" Width="220px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Button ID="btnAdd" runat="server" AccessKey="a" Text="Add" onclick="btnAdd_Click" 
                                 />
                        </td>
                        <td align="center">
                            <asp:Button ID="btnClear" runat="server" AccessKey="c" Text="Clear" 
                                 />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </td>--%>
    </tr>
</table>
</center>
    <br />
<br />

</asp:Content>
