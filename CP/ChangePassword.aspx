<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ChangePassword.aspx.vb" Inherits="Admin_ChangePassword" title="Change Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CenterContentPlaceHolder" Runat="Server">
    <asp:ChangePassword ID="ChangePassword1" runat="server" BackColor="#F7F6F3" 
        BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" 
        Font-Names="Verdana" Font-Size="1em">
        <CancelButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
            ForeColor="#284775" />
        <PasswordHintStyle Font-Italic="True" ForeColor="#888888" />
        <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
            ForeColor="#284775" />
        <ChangePasswordButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
            ForeColor="#284775" />
        <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" 
            ForeColor="White" />
        <TextBoxStyle Font-Size="0.8em" />
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
    </asp:ChangePassword>
    Last Password Change:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</asp:Content>

<asp:Content ID="Content4" runat="server" 
    contentplaceholderid="LeftContentPlaceHolder">

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
                    ImageUrl="~/images/Buttons/button11up.png" 
                    PostBackUrl="~/CP/ChangePassword.aspx" /></li>
            <li>
                <asp:ImageButton ID="HelpImageButton" runat="server" 
                    ImageUrl="~/images/Buttons/button6over.png" 
                    PostBackUrl="~/CP/AdminSupport.aspx" /></li>
                
                
     </ul>

</asp:Content>


