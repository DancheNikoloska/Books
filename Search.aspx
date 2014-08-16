<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search"  MasterPageFile="~/MasterPage.master"%>

<asp:Content ContentPlaceHolderID="Content1" Height="800px" runat="server">
 
    <asp:ListView Margin="10px" ID="ListView1" runat="server" DataSourceID="BooksData" DataKeyNames="book_id" GroupItemCount="5">



       
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
            <td runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr runat="server" id="itemPlaceholderContainer">
                <td runat="server" id="itemPlaceholder"></td>
            </tr>
        </GroupTemplate>

       
        <ItemTemplate>
            <td runat="server" >
                <br />
            <a href='<%# "Copies.aspx?id="+Eval("book_id") %>' runat="server" >
                <asp:Image BorderColor="#7A1900" BorderWidth="2" CssClass="search_image"  ImageUrl='<%# "css/images/"+Eval("image") %>' ID="Image1" runat="server" />
                    <span class="search_content" >

                        <asp:Label  Text='<%#"<h3>"+Eval("title")+"</h3>" %>' runat="server" ID="titleLabel" />
                        

                        

                    </span>
             </a>
            </td>



        </ItemTemplate>
        <LayoutTemplate>
            <table  runat="server" >
                <tr runat="server" >
                    <td runat="server" >
                        <table cellspacing="5" runat="server" id="groupPlaceholderContainer"  border="0" style="margin: 35px;" >
                            <tr  runat="server" id="groupPlaceholder" ></tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                        <asp:DataPager CssClass="pager" runat="server" PageSize="20" ID="DataPager2"  >
                            <Fields  >
                                <asp:NextPreviousPagerField LastPageImageUrl="~/css/images/header-bg.jpg"  ButtonCssClass="search_button" ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False"></asp:NextPreviousPagerField>
                                <asp:NumericPagerField NumericButtonCssClass="search_numeric"></asp:NumericPagerField>
                                <asp:NextPreviousPagerField FirstPageImageUrl="~/css/images/header-bg.jpg" ButtonCssClass="btn1" ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False"></asp:NextPreviousPagerField>
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>



        </LayoutTemplate>

      
    </asp:ListView>
    <asp:SqlDataSource runat="server" ID="BooksData" ConnectionString='<%$ ConnectionStrings:BooksConnectionString %>' SelectCommand="SELECT * FROM [BOOKS]"></asp:SqlDataSource>

</asp:Content>