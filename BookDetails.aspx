<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BookDetails.aspx.cs" Inherits="BookDetails" MasterPageFile="~/MasterPage.master" %>

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
        
        <div  id="bookDetails" >
        	<img src="css/images/emotionalIntelligence.jpg" />
            <div id="bookTitle">
                  <h1>Emotional Intelligence</h1>
                <h3>by Daniel Goleman</h3>
                <h4>Детали:</h4>
                <p>Жанр: <span>Психолошка</span></p>
                <p>Број на страни: <span> 480</span></p>
                <p>Цена: <span> 450ден</span></p>
               <button><a href="#">Избери</a></button>
            </div>
            <div id="bookDesc">

                <h5>&nbsp&nbsp&nbsp&nbsp&nbsp Everyone knows that high IQ is no guarantee of success, 
                    happiness, or virtue, but until Emotional Intelligence, 
                    we could only guess why. Daniel Golemans brilliant report 
                    from the frontiers of psychology and neuroscience offers startling new 
                    insight into our "two minds"--the rational and the emotional--and how
                    they together shape our destiny. 
                </h5>

            </div>
          
           
        </div>
    	<div class="cleaner_with_height"  >&nbsp;</div>
    </div> <!-- end of content -->
</asp:Content>




