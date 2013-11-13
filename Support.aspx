<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Support.aspx.vb" Inherits="Support" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContentPlaceHolder" Runat="Server">

  <ul>
            <li class="first"><asp:ImageButton ID="HomeImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button1over.png" PostBackUrl="~/Default.aspx" /></li>
            <li><asp:ImageButton ID="SearchImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button2over.png" 
                    PostBackUrl="~/SearchResult.aspx" /></li>
            <li><asp:ImageButton ID="CategoryImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button3over.png" PostBackUrl="~/Category.aspx" /></li>
            <li><asp:ImageButton ID="DLImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button4over.png" PostBackUrl="~/DLClientApp.aspx"/></li>
            <li><asp:ImageButton ID="PRImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button5up.png" 
                    PostBackUrl="~/Support.aspx" /></li>
            <li><asp:ImageButton ID="CPImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button7over.png" 
                    PostBackUrl="~/Admin/Default.aspx" /></li>
                </ul>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CenterContentPlaceHolder" Runat="Server">
<h3>Sections Descriptions:</h3>
<li><b>Home:</b></li>in this page all of the newest uploaded torrents are listed in a table in an ascending order.<br />
<li><b>Search:</b></li>with the help of the search engine in this page, you can search for an audio book. Type in the title of the book that you're looking for an the page loads with the audio books that matches their title with the keyword provided by you.<br />
<li><b>Category:</b></li>Select a category and the page loads the audio books that fit in that category.<br />
<li><b>Download Client Application:</b></li>In this page you can download the client application provided by Group Lite.<br />
<li><b>Control Panel:</b></li>This page is for administrating the system. requires Log in Authentication.<br />
<hr />

<h3>How To:</h3>
<li><b>How to search for an audio book:</b></li>Go to search section and type in the title of the audio book that you're looking for.<br />
<li><b>How to download an audio book:</b></li>Click on the download link in either in Home page,Category page or Search Page. By doing so, the page
loads a the download page with all of the details of the selected audio book. then click on the download button to download the torrent file.
You can open the torrent file with the our torrent client application (Lite, Downloadable <a href="DLClientApp.aspx">Here</a> or you use one of the Torrent 
application available on the net.<br />
<li><b>How to download the client application:</b></li>Click on on the "Download Client Appliaction" accessible from everypage. then use the provided link to download the application.<br />
<li><b>How to access the Control Panel:</b></li>In order to access the Control Panel, You need to log in and authenticate. Furthur support about the control panel can be found after log in.<br />
<li><b>How to log in:</b></li>Enter your username and password in the log in page and click on "Log In" Button.<br />
<li><b>How to recover password:</b></li>For this you need to be able to answer the security question, then an e-mail will be sent to you with the a new password.<br />

</asp:Content>

