<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProfilePage.aspx.cs" Inherits="ProfilePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content1" Runat="Server">
       <p runat="server" id="message" style="padding-left: 30px;margin-left: 37%;background: white;width: 260px;height: 20px; border-left: 2px solid #7A1900; border-bottom: 2px solid #7A1900; border-right: 2px solid #7A1900;border-top: 2px solid #7A1900;font-weight: bold; color:#B94629;">Успешна промена на податоците.</p>
       <asp:MultiView  ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
        <table style="margin: auto;">
             <tr style="border-bottom: 1px solid black;">
                 <td colspan="5">
                 <div style="margin-left: 247px;">
                  <asp:Button Width="140" CssClass="button_profile" CausesValidation="true" ID="Button1" runat="server" OnClick="Button1_Click" Text="Ваши огласи" />
                  <asp:Button Width="140" CssClass="button_profile" CausesValidation="true" ID="Button2" runat="server" OnClick="Button2_Click" Text="Промени профил" />
                 </div>
                 </td>
            </tr>
           
            <tr>
                <td>
         <div id="tab1" runat="server" class="tab-content">
                <p style="width: 100%;color: black;margin: auto;"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Наслов &nbsp; &nbsp; &nbsp; &nbsp; | &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;  Автор &nbsp; &nbsp; &nbsp;   &nbsp; &nbsp;   |&nbsp;  &nbsp; &nbsp;Страници&nbsp; &nbsp; &nbsp; &nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;Жанр&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  &nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp; &nbsp;Активиран&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp; &nbsp;|&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Избриши&nbsp; &nbsp; &nbsp;</p>
	            <ul class="paging" style="margin-left: -38px;" id="items" runat="server" ></ul>
         </div>
                    </td>
            </tr>
           
        </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <table>
                 <tr style="border-bottom: 1px solid black;">
                 <td colspan="5">
                 <div style="margin-left: 343px;">
                  <asp:Button Width="140" CssClass="button_profile" CausesValidation="true" ID="Button4" runat="server" OnClick="Button1_Click" Text="Ваши огласи" />
                  <asp:Button Width="140" CssClass="button_profile" CausesValidation="true" ID="Button5" runat="server" OnClick="Button2_Click" Text="Промени профил" />
                 </div>
                 </td>
            </tr>
                <tr>
                    <td style="color: black;">Име</td>
                    <td>
                        <br />
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ControlToValidate="TextBox1" ForeColor="Red" ValidationGroup="profile" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Името не смее да биде празно."></asp:RequiredFieldValidator>
                        <br />
                        
                    </td>
                </tr>
                <tr>
                    <td style="color: black;">Презиме</td>
                    <td>
                        <br />
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> <br />
                        <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="TextBox2" ValidationGroup="profile" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Презимето не смее да биде празно."></asp:RequiredFieldValidator>
                        
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="color: black;">Емаил</td>
                    <td>
                        <br />
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox> <br />
                        <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="TextBox3" ValidationGroup="profile" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Емаилот не смее да биде празен."></asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" ControlToValidate="TextBox3" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Невалидна емаил адреса."></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="color: black;">Тел. број</td>
                    <td>
                        <br />
                        <br />
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox> <br />
                        <asp:TextBox Visible="false" ID="Te7" runat="server"></asp:TextBox> <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="color: black;">Лозинка</td>
                    <td>
                        <br />
                        <asp:TextBox TextMode="Password" ID="TextBox5" runat="server"></asp:TextBox> <br />
                        <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="TextBox5" ValidationGroup="profile" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Лозинката не смее да биде празна."></asp:RequiredFieldValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="color: black;">Потврди лозинка</td>
                    <td>
                        <br />
                        <asp:TextBox TextMode="Password" ID="TextBox6" runat="server"></asp:TextBox> <br />
                        <asp:RequiredFieldValidator ControlToValidate="TextBox6" ForeColor="Red" ValidationGroup="profile" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Потврда на лозинката не смее да биде празно."></asp:RequiredFieldValidator><br />
                        <asp:CompareValidator ControlToCompare="TextBox5" ControlToValidate="TextBox6" ForeColor="Red" ValidationGroup="profile" ID="CompareValidator1" runat="server" ErrorMessage="Лозинките не се совпаѓаат."></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button CssClass="button_profile" ValidationGroup="profile" OnClick="Button3_Click"  ID="Button3" runat="server" Text="Потврди" />
                    </td>
                    
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
               
      
</asp:Content>

