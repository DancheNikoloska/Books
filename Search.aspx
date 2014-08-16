<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search"  MasterPageFile="~/MasterPage.master"%>

<asp:Content ContentPlaceHolderID="Content1" Height="800px" runat="server">
 
    <asp:ListView Margin="10px" ID="ListView1" runat="server" DataSourceID="BooksData" DataKeyNames="book_id">
        <AlternatingItemTemplate>

        <br />  
            <a href="#" style="width: 400px;">
            <div style="background: #E3DEC1;color: red; color: black; margin: auto; border: 2px solid #7A1900; width: 400px;">
               
               
               <asp:Image CssClass="search_images" ImageUrl='<%# "css/images/"+Eval("image") %>' ID="Image1" runat="server" />
                <span class="search_text">
                    
                <asp:Label Margin="15px" Text='<%# "Title: "+Eval("title") %>' runat="server" ID="titleLabel" /><br />
               
                
                <asp:Label Margin="15px" Text='<%# "Author: "+Eval("author") %>' runat="server" ID="authorLabel" /><br />
                
                <asp:Label  Margin="15px" Text='<%# "Genre: "+Eval("genre") %>' runat="server" ID="genreLabel" /><br />
                  
               </span>
                
            </div>

          </a>

        <br />  

        </AlternatingItemTemplate>
        
        <ItemTemplate>
          <br />  
          <a href="#" style="width: 400px; margin-top: 50px;">
            <div style="background: #404040; color: black; margin: auto; border: 2px solid black; width: 400px;">
               
               
               <asp:Image CssClass="search_images" ImageUrl='<%# "css/images/"+Eval("image") %>' ID="Image1" runat="server" />
                <span class="search_text">
                    
                <asp:Label Margin="15px" Text='<%# "Title: "+Eval("title") %>' runat="server" ID="titleLabel" /><br />
               
                
                <asp:Label Margin="15px" Text='<%# "Author: "+Eval("author") %>' runat="server" ID="authorLabel" /><br />
                
                <asp:Label  Margin="15px" Text='<%# "Genre: "+Eval("genre") %>' runat="server" ID="genreLabel" /><br />
                    
               </span>
                
            </div>

          </a>
           <br />   
        </ItemTemplate>
        <LayoutTemplate>
            <div runat="server" id="itemPlaceholderContainer" style="font-family: Verdana, Arial, Helvetica, sans-serif;"><span runat="server" id="itemPlaceholder" /></div>
            <div style="text-align: center; background: url('css/images/bg.jpg') repeat; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF;">
                <asp:DataPager PageSize="3" runat="server" ID="DataPager2">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False"></asp:NextPreviousPagerField>
                        <asp:NumericPagerField></asp:NumericPagerField>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False"></asp:NextPreviousPagerField>
                    </Fields>
                </asp:DataPager>

            </div>


        </LayoutTemplate>
        
    </asp:ListView>
    <asp:SqlDataSource runat="server" ID="BooksData" ConnectionString='<%$ ConnectionStrings:BooksConnectionString %>' SelectCommand="SELECT * FROM [BOOKS]"></asp:SqlDataSource>

</asp:Content>