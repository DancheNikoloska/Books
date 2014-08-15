<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" MasterPageFile="~/MasterPage.master" %>

<asp:Content ContentPlaceHolderID="Content1" runat="server" >


    <div id="templatemo_header">
    	
        
        
        
    </div> <!-- end of header -->

    <div id="templatemo_content" >
    	
        <div id="templatemo_content_left" >
        	<div class="templatemo_content_left_section" >
            	<h1>Избери жанр</h1>
                <ul>
                    
                    <li ><a href="#"> Авантуристички</a></li>
                    <li ><a href="#"> Автобиографски</a></li>
                    <li ><a href="#"> Акциони</a></li>
                    <li ><a href="#" >Бизнис</a></li>
                    <li ><a href="#"> Биографски</a></li>
                    <li ><a href="#" >Драма</a></li>
                    <li ><a href="#" >Едукативни</a></li>
                    <li ><a href="#" >Историски</a></li>
                    <li ><a href="#" >Класици</a></li>
                    <li ><a href="#" >Криминалистички</a></li>
                    <li ><a href="#" >Мистерија</a></li>
                    <li ><a href="#" >Поезија</a></li>
                    <li ><a href="#" >Политика</a></li>
                    <li ><a href="#" >Психолошки</a></li>
                    <li ><a href="#" >Религија</a></li>
                    <li ><a href="#" >Романса</a></li>
                    <li ><a href="#"> Трилер</a></li>
                    <li ><a href="#" >Фантастика</a></li>
                    <li ><a href="#" >Филозофија</a></li>
                    
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



