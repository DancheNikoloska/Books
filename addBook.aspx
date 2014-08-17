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
                         <asp:TextBox  ID="naslov" CssClass="tbx" ValidationGroup="vs" runat="server"></asp:TextBox>
                        </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                 <asp:Label CssClass="label" ID="Label2" runat="server"  Text="Автор:"></asp:Label>
      </asp:TableCell>
                    <asp:TableCell>
                         <asp:TextBox ID="avtor" CssClass="tbx" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                    <asp:Label CssClass="label" ID="Label3" runat="server" Text="Опис:"></asp:Label>
     </asp:TableCell>
                    <asp:TableCell>
                         <asp:TextBox ID="opis" CssClass="tbx" runat="server"></asp:TextBox>
                        </asp:TableCell>
                          </asp:TableRow>
                
     
            
      
        </asp:Table>

             <asp:Table runat="server" CssClass="table2" CellPadding="10" CellSpacing="2" >
                <asp:TableRow>
                    <asp:TableCell>
                    <asp:Label CssClass="tbx" ID="Label5" runat="server" Text="Жанр:"></asp:Label>
           </asp:TableCell>
                    <asp:TableCell>
                         <asp:TextBox ID="zanr" CssClass="tbx" runat="server"></asp:TextBox>
                        </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                 <asp:Label CssClass="label" ID="Label6" runat="server"  Text="Цена:"></asp:Label>
      </asp:TableCell>
                    <asp:TableCell>
                         <asp:TextBox ID="cena" CssClass="tbx" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                    <asp:Label CssClass="label" ID="Label7" runat="server" Text="Број на страни:"></asp:Label>
     </asp:TableCell>
                    <asp:TableCell>
                         <asp:TextBox ID="strani" CssClass="tbx" runat="server"></asp:TextBox>
                        </asp:TableCell>
                          </asp:TableRow>
              
     
            
      
        </asp:Table>
           <div>
               
               <asp:Button CssClass="buttonDodaj" OnClick="Button_Click" runat="server" Text="Додај оглас" ValidationGroup="vs"  />
           </div>
            <div>
                
                <asp:RequiredFieldValidator runat="server" ControlToValidate="naslov" Display="None" ValidationGroup="vs"></asp:RequiredFieldValidator>
                 <asp:ValidationSummary CssClass="errors" ID="vs" runat="server" DisplayMode="List" HeaderText="Пополнете ги сите полиња!" ValidateRequestMode="Disabled" ValidationGroup="vs" />
            </div>
            </div>
    </div>
   
</asp:Content>
