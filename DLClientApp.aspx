<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="DLClientApp.aspx.vb" Inherits="DLClientApp" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContentPlaceHolder" Runat="Server">
     <ul>
            <li class="first">
                <asp:ImageButton ID="HomeImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button1over.png" PostBackUrl="~/Default.aspx" /></li>
            <li><asp:ImageButton ID="SearchImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button2over.png" PostBackUrl="~/SearchResult.aspx" /></li>
            <li><asp:ImageButton ID="CategoryImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button3over.png" PostBackUrl="~/Category.aspx" /></li>
            <li><asp:ImageButton ID="DLImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button4up.png" 
                    PostBackUrl="~/DLClientApp.aspx" /></li>
            <li><asp:ImageButton ID="PRImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button5over.png" 
                    PostBackUrl="~/Support.aspx" /></li>
            <li><asp:ImageButton ID="CPImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button7over.png" 
                    PostBackUrl="~/Admin/Default.aspx" /></li>
                </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CenterContentPlaceHolder" Runat="Server">
Before you can download audiobooks, you need to download the Lite Bittorrent Client.
With Lite Bittorrent Client you can:

- Download audiobooks
- Control your downloads i.e. stop, resume and remove them
- View detailed information about the books
- Specify the folder to download the audiobooks so you easily find them
- A help file is included in order to get you started

Download the Lite Bittorrent client in order to start downloading audiobooks.<br />
Click <asp:HyperLink ID="HyperLink1" runat="server" 
        NavigateUrl="~/ClientApp/utorrent.exe">Here</asp:HyperLink> &nbsp;to download Lit Bittorent Client.
</asp:Content>

