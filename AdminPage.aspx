<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminPage.aspx.cs" Inherits="AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <link  href="css/design.css" rel="stylesheet" type="text/css" />
</head>
<body class="admin_body">
    <form id="form1" runat="server">
    <div>
        
        <asp:Table CssClass="table_admin" ID="Table1" runat="server" Height="250px" Width="300px" BackColor="White" ForeColor="#7A1900">
            <asp:TableHeaderRow>
                <asp:TableCell ColumnSpan="2" CssClass="header_admin" Font-Bold="True" HorizontalAlign="Center" Width="250px">НАЈАВА</asp:TableCell>
            </asp:TableHeaderRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center">Емаил:</asp:TableCell>
                <asp:TableCell><asp:TextBox ID="email" Height="20px" runat="server"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center">Лозинка:</asp:TableCell>
                <asp:TableCell><asp:TextBox ID="password" Height="20px" runat="server"></asp:TextBox></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2"  HorizontalAlign="Center"><asp:Button OnClick="Unnamed_Click" CssClass="buttonAdmin" runat="server" Text="Најава" /></asp:TableCell>
                
            </asp:TableRow>
        </asp:Table>
        
    </div>
    </form>
</body>
</html>
