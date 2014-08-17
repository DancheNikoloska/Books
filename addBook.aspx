<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addBook.aspx.cs" Inherits="addBook" MasterPageFile="~/MasterPage.master" %>

<asp:Content runat="server" ContentPlaceHolderID="Content1">
    <div class="addBook">
      <h1>Додај оглас</h1>
        <div class="userData">
      <span> <asp:Label CssClass="label" ID="Label1" runat="server" ForeColor="Black" Text="Име:"></asp:Label></span><br />
     <span>   <asp:Label CssClass="label" ID="Label2" runat="server" ForeColor="Black" Text="Презиме:"></asp:Label></span><br />
     <span> <asp:Label CssClass="label" ID="Label3" runat="server" ForeColor="Black" Text="Е-маил:"></asp:Label></span><br />
     <span>   <asp:Label CssClass="label" ID="Label4" runat="server" ForeColor="Black" Text="Тел.број:"></asp:Label></span><br />
        
        
            </div>
    </div>
</asp:Content>
