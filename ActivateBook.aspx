<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ActivateBook.aspx.cs" Inherits="ActivateBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upload picutre</title>
</head>
<body style="background: url('css/images/bg.jpg') repeat">
    <form id="form1" runat="server" enctype="multipart/form-data">
    <div>
      <p style="color: black;">Икона:</p>
      <asp:FileUpload ID="FileUpload1" runat="server" /><br />
       
        <p style="color: black;">Голема слика:</p>
      <asp:FileUpload ID="FileUpload2" runat="server" /><br /><br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" 
         Text="Upload File" />&nbsp;<br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        
<br />
<asp:RequiredFieldValidator 
 id="RequiredFieldValidator1" runat="server" 
 ErrorMessage="Прикачување на икона е задолжително." 
 ControlToValidate="FileUpload1"></asp:RequiredFieldValidator><br />
        <asp:RequiredFieldValidator 
 id="RequiredFieldValidator2" runat="server" 
 ErrorMessage="Прикачување на слика е задолжително." 
 ControlToValidate="FileUpload2"></asp:RequiredFieldValidator>
    </div>
    </form>
</body>
</html>
