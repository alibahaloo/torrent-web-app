<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AdminSupport.aspx.vb" Inherits="Admin_AdminSupport" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LeftContentPlaceHolder" Runat="Server">
   <ul>
            <li class="first">
                <asp:ImageButton ID="HomeImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button1over.png" PostBackUrl="~/Default.aspx" /></li>
                <hr />
            <li>
                <asp:ImageButton ID="CPImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/ControlPanelover.png" 
                    PostBackUrl="~/CP/Default.aspx" /></li>
            <li>
                <asp:ImageButton ID="UPImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button9over.png" 
                    PostBackUrl="~/CP/UploadTorrents.aspx" /></li>
            <li>
                <asp:ImageButton ID="MGImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button10over.png" 
                    PostBackUrl="~/CP/ManageTorrents.aspx" /></li>
            
            <li>
                <asp:ImageButton ID="CHPImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button11over.png" 
                    PostBackUrl="~/CP/ChangePassword.aspx" /></li>
            <li>
                <asp:ImageButton ID="HelpImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button6up.png" 
                    PostBackUrl="~/CP/AdminSupport.aspx" /></li>
                
                
     </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CenterContentPlaceHolder" Runat="Server">
<h3>Control Panel's Section Description:</h3>
<li><b>Control Panel Home Page: </b></li>this the home page of the control panel.With tools provided here you can manage the torrent files..<br /> 
<li><b>Upload Torrent Page: </b></li>Lets you to upload a new torrent file and insert the details of it.<br />
<li><b>Manage Torrent Page: </b></li>Lets you to change the details of an existing torrent file.<br />
<li><b>Change Password Page: </b></li>Lets you to change your log in password.<br />
<h3>How To:</h3>
<li><b>How to upload a new torrent file: </b></li>Click on "Upload Torrent" button, Browse for .torrent and image file and click on upload buttons. the click on the "new" link at the bottom of the table and insert the details, then click on "update" link.<br />
<li><b>How to Change details of an existing torrent file: </b></li>Click on "Manage Torrents" button, you can either search for an item for choose it from the table. then click on "Display Details" link next to the disired item, then page loads with the detials of the selected item, click on "Edit" link and do the changes and click on "Update" link to save.<br />
<li><b>How to Change Password: </b></li>Click on "Change Password" and change your password with the provided tool.<br />

</asp:Content>

