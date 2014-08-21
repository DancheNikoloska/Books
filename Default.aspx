<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" MasterPageFile="~/MasterPage.master" %>

<asp:Content ContentPlaceHolderID="Content1" runat="server" >


    <div id="templatemo_header" style="background: url('css/images/header_red.jpg') center no-repeat; opacity:0.98 width:970px; height:310px; margin-left:-10px">
    	
        
        
        
    </div> <!-- end of header -->

    <div id="templatemo_content" >
    	
        <div id="templatemo_content_left" >
        	<div class="templatemo_content_left_section" >
            	<h1>Избери жанр</h1>
                <ul>
                    
                    <li ><a href="Search.aspx?zanr=Авантуристичка">Авантуристички</a></li>
                    <li ><a href="Search.aspx?zanr=Автобиографија"> Автобиографски</a></li>
                    <li ><a href="Search.aspx?zanr=Акција"> Акциони</a></li>
                    <li ><a href="Search.aspx?zanr=Бизнис" >Бизнис</a></li>
                    <li ><a href="Search.aspx?zanr=Биографија"> Биографски</a></li>
                    <li ><a href="Search.aspx?zanr=Драма">Драма</a></li>
                    <li ><a href="Search.aspx?zanr=Едукативна" >Едукативни</a></li>
                    <li ><a href="Search.aspx?zanr=Историска" >Историски</a></li>
                    <li ><a href="Search.aspx?zanr=Класика" >Класици</a></li>
                    <li ><a href="Search.aspx?zanr=Криминалистика" >Криминалистички</a></li>
                    <li ><a href="Search.aspx?zanr=Мистерија" >Мистерија</a></li>
                    <li ><a href="Search.aspx?zanr=Поезија" >Поезија</a></li>
                    <li ><a href="Search.aspx?zanr=Политичка" >Политика</a></li>
                    <li ><a href="Search.aspx?zanr=Психолошка" >Психолошки</a></li>
                    <li ><a href="Search.aspx?zanr=Религија" >Религија</a></li>
                    <li ><a href="Search.aspx?zanr=Романса" >Романса</a></li>
                    <li ><a href="Search.aspx?zanr=Трилер"> Трилер</a></li>
                    <li ><a href="Search.aspx?zanr=Фантастика" >Фантастика</a></li>
                    <li ><a href="Search.aspx?zanr=Филозофија" >Филозофија</a></li>
                    
            	</ul>
            </div>
			<div  >
            	<a href="#" ><img style="float:left" src="css/images/fb.jpg" /></a>
               <a href="#"><img style="float:right" src="css/images/twitter.jpg" /></a>
                
            </div>
            
        </div> <!-- end of content left -->
        
        <div  id="templatemo_content_right" >
        	<div id="box1" class="templatemo_product_box" runat="server"></div> 
            <div id="box2" class="templatemo_product_box" runat="server"></div>
            <div id="box3" class="templatemo_product_box" runat="server"></div>
            <div id="box4" class="templatemo_product_box" runat="server"></div> 
            <!-- end of content right -->
        </div>
    	<div class="cleaner_with_height"  >&nbsp;</div>
    </div> <!-- end of content -->
</asp:Content>



