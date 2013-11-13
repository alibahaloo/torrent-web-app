<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="CP_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CenterContentPlaceHolder" Runat="Server">
    <h3>Welcome 
        <asp:LoginName ID="LoginName1" runat="server" />
    </h3>
    <table class="style1">
        <tr>
            <td>
                <b>Select one of the tools from the tree view.</b> </td>
            <td>
                <b>Tools Descriptions:</b></td>
                    </tr>
                    <tr>
                        <td rowspan="5">
                            <asp:TreeView ID="TreeView1" runat="server" ImageSet="News" NodeIndent="10" 
                                ShowLines="True">
                                <ParentNodeStyle Font-Bold="False" />
                                <HoverNodeStyle Font-Underline="True" />
                                <SelectedNodeStyle Font-Underline="True" HorizontalPadding="0px" 
                                    VerticalPadding="0px" />
                                <Nodes>
                                    <asp:TreeNode ImageUrl="~/images/Buttons/ControlPanelup.png" 
                                        NavigateUrl="~/CP/Default.aspx">
                                        <asp:TreeNode NavigateUrl="~/CP/UploadTorrents.aspx" 
                                            ImageUrl="~/images/Buttons/button9over.png"></asp:TreeNode>
                                        <asp:TreeNode NavigateUrl="~/CP/ManageTorrents.aspx" 
                                            ImageUrl="~/images/Buttons/button10over.png"></asp:TreeNode>
                                        <asp:TreeNode ImageUrl="~/images/Buttons/button11over.png" 
                                            NavigateUrl="~/CP/ChangePassword.aspx"></asp:TreeNode>
                                    </asp:TreeNode>
                                </Nodes>
                                <NodeStyle Font-Names="Arial" Font-Size="10pt" ForeColor="Black" 
                                    HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                            </asp:TreeView>
                        </td>
                        <td>
                            Upload Torrents: With this tool you can upload a new torrent files with its 
                            details into the server.</td>
        </tr>
                    <tr>
                        <td>
                            Manage Torrents: With This tool you change the details of the audio books. You 
                            can also delete an audio book entry.</td>
        </tr>
        <tr>
            <td>
                Create n new Moderator Account: this tool helps you to create a new Moderator 
                account to access the Uploading tool.</td>
        </tr>
        <tr>
            <td>
                Change Password: You can change your admin password here. </td>
        </tr>
    </table>
                Login Date and Time: <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" runat="server" 
    contentplaceholderid="LeftContentPlaceHolder">


   <ul>
            <li class="first">
                <asp:ImageButton ID="HomeImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button1over.png" PostBackUrl="~/Default.aspx" /></li>
                <hr />
            <li>
                <asp:ImageButton ID="CPImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/ControlPanelup.png" 
                    PostBackUrl="~/CP/RedirectionPage.aspx" /></li>
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
                    ImageUrl="~/images/Buttons/button6over.png" 
                    PostBackUrl="~/CP/AdminSupport.aspx" /></li>
                
                
     </ul>

</asp:Content>