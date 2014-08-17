<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addBook.aspx.cs" Inherits="addBook" MasterPageFile="~/MasterPage.master" %>

<asp:Content runat="server" ContentPlaceHolderID="Content1">
    <div class="addBook">
      <h2>Внеси тука шо ти се бара!</h2>
        <div class="userData">
            <asp:Table runat="server" CssClass="table1" CellPadding="10" CellSpacing="2" >
                <asp:TableRow>
                    <asp:TableCell>
                    <asp:Label CssClass="tbx" ID="Label1" runat="server" Text="Наслов:"></asp:Label>
           </asp:TableCell>
                    <asp:TableCell>
                         <asp:TextBox CssClass="tbx" runat="server"></asp:TextBox>
                        </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                 <asp:Label CssClass="label" ID="Label2" runat="server"  Text="Автор:"></asp:Label>
      </asp:TableCell>
                    <asp:TableCell>
                         <asp:TextBox CssClass="tbx" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                    <asp:Label CssClass="label" ID="Label3" runat="server" Text="Опис:"></asp:Label>
     </asp:TableCell>
                    <asp:TableCell>
                         <asp:TextBox CssClass="tbx" runat="server"></asp:TextBox>
                        </asp:TableCell>
                          </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                     <asp:Label CssClass="label" ID="Label4" runat="server"  Text="Број на страни:"></asp:Label>
       </asp:TableCell>
                    <asp:TableCell>
                         <asp:TextBox CssClass="tbx" runat="server"></asp:TextBox>
                         </asp:TableCell>
                         </asp:TableRow>
     
            
      
        </asp:Table>

             <asp:Table runat="server" CssClass="table2" CellPadding="10" CellSpacing="2" >
                <asp:TableRow>
                    <asp:TableCell>
                    <asp:Label CssClass="tbx" ID="Label5" runat="server" Text="Жанр:"></asp:Label>
           </asp:TableCell>
                    <asp:TableCell>
                         <asp:TextBox CssClass="tbx" runat="server"></asp:TextBox>
                        </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                 <asp:Label CssClass="label" ID="Label6" runat="server"  Text="Цена:"></asp:Label>
      </asp:TableCell>
                    <asp:TableCell>
                         <asp:TextBox CssClass="tbx" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                    <asp:Label CssClass="label" ID="Label7" runat="server" Text="Датум:"></asp:Label>
     </asp:TableCell>
                    <asp:TableCell>
                         <asp:TextBox CssClass="tbx" runat="server"></asp:TextBox>
                        </asp:TableCell>
                          </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                     <asp:Label CssClass="label" ID="Label8" runat="server"  Text="Вашиот е-маил:"></asp:Label>
       </asp:TableCell>
                    <asp:TableCell>
                         <asp:TextBox CssClass="tbx" runat="server"></asp:TextBox>
                         </asp:TableCell>
                         </asp:TableRow>
     
            
      
        </asp:Table>
            <button class="buttonDodaj">
                Додај оглас
            </button>
            </div>
    </div>
</asp:Content>
