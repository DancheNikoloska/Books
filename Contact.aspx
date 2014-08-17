<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" MasterPageFile="~/MasterPage.master" %>



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
        <!--content right-->
        
        <div class="bookDetails">

  <script src="http://max.jotfor.ms/static/prototype.forms.js" type="text/javascript"></script>
<script src="http://max.jotfor.ms/static/jotform.forms.js?3.2.3227" type="text/javascript"></script>
<script type="text/javascript">
    JotForm.init(function () {
        $('input_3').hint('ex: myname@example.com');
    });
</script>
<link href="http://max.jotfor.ms/static/formCss.css?3.2.3227" rel="stylesheet" type="text/css" />
<link type="text/css" rel="stylesheet" href="http://max.jotfor.ms/css/styles/nova.css?3.2.3227" />
<link type="text/css" media="print" rel="stylesheet" href="http://max.jotfor.ms/css/printForm.css?3.2.3227" />
<style type="text/css">
    .form-label-left{
        width:150px !important;
    }
    .form-line{
        padding-top:12px;
        padding-bottom:12px;
    }
    .form-label-right{
        width:150px !important;
    }
    .form-all{
        width:650px;
        color:#555 !important;
        font-family:'Lucida Grande';
        font-size:14px;
    }
</style>

            <form class="jotform-form" action="#" method="post" name="form_42283917936364" id="42283917936364" accept-charset="utf-8">
                <input type="hidden" name="formID" value="42283917936364" />
                <div class="form-all">
                    <ul class="form-section">
                        <li id="cid_5" class="form-input-wide">
                            <div class="form-header-group" style="">
                                <div style="vertical-align: middle; width: 100%;">
                                    <h2 id="header_5" class="form-header">Контактирајте го огласувачот преку е-маил
                                    </h2>
                                </div>
                            </div>
                        </li>
                        <li class="form-line" data-type="control_textbox" id="id_1">
                            <label class="form-label form-label-left form-label-auto" id="label_1" for="input_1">
                                Име и презиме
          <span class="form-required">*
          </span>
                            </label>
                            <div id="cid_1" class="form-input">
                                <input type="text" class=" form-textbox validate[required]" data-type="input-textbox" id="input_1" name="q1_input1" size="20" value="" />
                            </div>
                        </li>
                        <li class="form-line" data-type="control_email" id="id_3">
                            <label class="form-label form-label-left form-label-auto" id="label_3" for="input_3">
                                Е-маил
          <span class="form-required">*
          </span>
                            </label>
                            <div id="cid_3" class="form-input">
                                <input type="email" class=" form-textbox validate[required, Email]" id="input_3" name="q3_input3" size="30" value="" />
                            </div>
                        </li>
                        <li class="form-line" data-type="control_textarea" id="id_4">
                            <label class="form-label form-label-left form-label-auto" id="label_4" for="input_4">
                                Порака
          <span class="form-required">*
          </span>
                            </label>
                            <div id="cid_4" class="form-input">
                                <textarea id="input_4" class="form-textarea validate[required]" name="q4_input4" cols="40" rows="6"></textarea>
                            </div>
                        </li>
                        <li class="form-line" data-type="control_button" id="id_2">
                            <div id="cid_2" class="form-input-wide">
                                <div style="margin-left: 156px" class="form-buttons-wrapper">
                                    <button id="input_2" type="submit" class="form-submit-button">
                                        Испрати
                                    </button>
                                </div>
                            </div>
                        </li>
                        <li style="display: none">Should be Empty:
        <input type="text" name="website" value="" />
                        </li>
                    </ul>
                </div>
                <input type="hidden" id="simple_spc" name="simple_spc" value="42283917936364" />
                <script type="text/javascript">
                    document.getElementById("si" + "mple" + "_spc").value = "42283917936364-42283917936364";
                </script>
            </form>
            
         
          
        </div>
          <!-- end of content right -->
    	<div class="cleaner_with_height"  >&nbsp;</div>
    </div> <!-- end of content -->
</asp:Content>




