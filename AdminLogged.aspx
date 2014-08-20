<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogged.aspx.cs" Inherits="AdminLogged" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Page</title>
    <link  href="css/admin.css" rel="stylesheet" type="text/css" />
     <script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
     <script type="text/javascript" src="js/jquery-ui.js"></script>
    <script type="text/javascript" src="js/quickpager.jquery.js"></script>
     <script>
         $(document).ready(function () {

             $('ul.tabs li').click(function () {
                 var tab_id = $(this).attr('data-tab');

                 $('ul.tabs li').removeClass('current');
                 $('.tab-content').removeClass('current');

                 $(this).addClass('current');
                 $("#" + tab_id).addClass('current');
             })



         });
        
     </script>
    <script type="text/javascript">
        $(document).ready(function () {


            $("ul.paging").quickPager();
        });
    </script>

   <style type="text/css">







       .paging li {
           list-style: none;
       }

ul.simplePagerNav li{
    display:block;
    float: left;
    padding: 3px;
    margin-bottom: 10px;
    font-family: georgia;
}
ul.simplePagerNav {
  text-align: center;
 
}

ul.simplePagerNav li a{
    color: #333;
    text-decoration: none;
}

li.currentPage {
	    background: red;
        background: #EBE2C3;	
}

ul.simplePagerNav li.currentPage a {
	color: #fff;	
}






</style> 

   
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
	    <ul class="paging" style="margin-left: -38px;" id="items" runat="server" ></ul>
    </div>
	<div runat="server" id="tab3" class="tab-content">

       <asp:Chart Height="400" Width="700" ID="Chart1" runat="server" DataSourceID="adminUsers" Palette="Chocolate" BorderSkin-BackColor="#EBE2C3" PaletteCustomColors="#EBE2C3" >
            <Series>
                <asp:Series Name="Series1" XValueMember="Емаил" YValueMembers="Вкупно_огласи"></asp:Series>
            </Series>
            <ChartAreas >
                <asp:ChartArea Name="ChartArea1">
                    <AxisY Title="Вкупно огласи">
                    </AxisY>
                    <AxisX Title="Емаил">
                    </AxisX>
                </asp:ChartArea>
            </ChartAreas>

            <Titles>
                <asp:Title Text="Топ 5 корисници според објавени огласи" Name="title1">
                </asp:Title>
            </Titles>

<BorderSkin BackColor="235, 226, 195"></BorderSkin>
        </asp:Chart>
        
         <asp:SqlDataSource ID="adminUsers" runat="server" ConnectionString="<%$ ConnectionStrings:BooksConnectionString %>" SelectCommand="select TOP 5 BOOKS.user_id as ID,USERS.email as Емаил, count(book_id) as Вкупно_огласи from BOOKS,USERS where BOOKS.user_id= USERS.user_id group by BOOKS.user_id, USERS.email"></asp:SqlDataSource>

        <hr  style="width: 90%; color: black; height: 3px;border: 1px solid brown;background: #EBE2C3; "/>

        
        <asp:Chart Height="400" Width="700" ID="Chart2" runat="server" DataSourceID="admin_time" Palette="EarthTones">
            <Series>
                <asp:Series Name="Series1" ChartType="Spline" XValueMember="MonthName" YValueMembers="total" ></asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                    <AxisY Title="Број на огласи">
                    </AxisY>
                    <AxisX Title="Месец">
                    </AxisX>
                </asp:ChartArea>
            </ChartAreas>
             <Titles>
                 <asp:Title Name="Title1" Text="Вкупно огласи по месец">
                 </asp:Title>
             </Titles>
        </asp:Chart>
        
         <asp:SqlDataSource ID="admin_time" runat="server" ConnectionString="<%$ ConnectionStrings:BooksConnectionString %>" SelectCommand="SELECT     CASE { fn MONTH(date_received) } 
            when 0 then N'Јан'
            when 1 then N'Феб'
            when 2 then N'Мар'
            when 3 then N'Апр'
            when 4 then N'Мај'
            when 5 then N'Јун'
            when 6 then N'Јул'
            when 7 then N'Авг'
            when 8 then N'Сеп'
            when 9 then N'Окт'
            when 10 then N'Нов'
            when 11 then N'Дек'
           END
      AS MonthName,  COUNT(book_id) AS total
    FROM         BOOKS
   
    GROUP BY { fn MONTH(date_received) }
    ORDER BY { fn MONTH(date_received) }"></asp:SqlDataSource>
	</div>
	

</div><!-- container -->
        
    </form>
</body>
</html>
