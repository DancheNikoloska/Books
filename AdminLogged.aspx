<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogged.aspx.cs" Inherits="AdminLogged" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Page</title>
    <link  href="css/admin.css" rel="stylesheet" type="text/css" />
     <script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
     <script type="text/javascript" src="js/jquery-ui.js"></script>
     <script>
         $(document).ready(function () {

             $('ul.tabs li').click(function () {
                 var tab_id = $(this).attr('data-tab');

                 $('ul.tabs li').removeClass('current');
                 $('.tab-content').removeClass('current');

                 $(this).addClass('current');
                 $("#" + tab_id).addClass('current');
             })

         })
     </script>
</head>
<body>
    <form id="form1" runat="server">
        
<div class="container">

	<ul class="tabs">
		<li class="tab-link current" data-tab="tab1">Корисници</li>
		<li class="tab-link" data-tab="tab2">Огласи</li>
		<li class="tab-link" data-tab="tab3">Статистики</li>
		
	</ul>

	<div id="tab1" class="tab-content current">
		<asp:GridView CssClass="users_grid" ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnPageIndexChanging="GridView1_PageIndexChanging" OnSorting="GridView1_Sorting" AllowSorting="True" DataKeyNames="user_id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:BoundField DataField="user_id" HeaderText="ID" Visible="False" />
                <asp:BoundField DataField="name" HeaderText="Име" SortExpression="name" />
                <asp:BoundField DataField="surname" HeaderText="Презиме" SortExpression="surname" />
                <asp:BoundField DataField="email" HeaderText="Емаил" SortExpression="email" />
                <asp:BoundField DataField="phone_number" HeaderText="Телефон" />
                <asp:BoundField DataField="Password" HeaderText="Лозинка" />
                <asp:CommandField CancelText="Откажи" DeleteText="Избриши" EditText="Промени" HeaderText="Промени" InsertText="Додади" ShowEditButton="True" />
                <asp:CommandField DeleteText="Избриши" HeaderText="Избриши" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
	</div>
	<div id="tab2" runat="server" class="tab-content">
        <p style="width: 100%;"> &nbsp; &nbsp; &nbsp; &nbsp; Наслов &nbsp; &nbsp; &nbsp; |&nbsp; &nbsp; &nbsp;  Автор &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp;|&nbsp;  &nbsp; &nbsp;Страници&nbsp;  &nbsp; &nbsp;|&nbsp; &nbsp; &nbsp;Жанр&nbsp; &nbsp;&nbsp;&nbsp;  &nbsp;|&nbsp;  &nbsp; &nbsp;Активирај&nbsp;  &nbsp; &nbsp;|&nbsp;  &nbsp; &nbsp;Избриши&nbsp; &nbsp; &nbsp;</p>
	</div>
	<div runat="server" id="tab3" class="tab-content">
		Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
	</div>
	

</div><!-- container -->
        
    </form>
</body>
</html>
